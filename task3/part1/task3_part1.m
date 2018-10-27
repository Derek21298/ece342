%% Number 1
%   Author: Derek Haas
%   Date: 10-23-18
%

close all;

%% Plots VOL vs RD

data = csvread('NMOS_VOLvsRD.CSV');
RD = data(:, 1);
VOL = data(:, 3);

figure(1);

plot(RD * 10e-4, VOL);
title('Output Low Voltage vs. Drain Resistance');
xlabel('Resistance, k ohms')
ylabel('Voltage, Volts');
grid on;
xlim([1 100]);

rd = interp1(VOL,RD,2.5) / 1e3;
line([rd rd], [0 2.5], 'linestyle', '--');
label = 'V_{OL} = 2.5 V';
text(5, 2.5, label, 'fontsize', 8);


%% Plot Voltage Transfer Characteristic Rd = 4.4k

data = csvread('NMOS_VTC_4k4.CSV');
Vout = data(:, 1);
Vgs = data(:, 3);

figure(2);

plot(Vout, Vgs);
title('Voltage Transfer Characteristic Rd = 4.4k');
xlabel('Input Voltage, Volts')
ylabel('Output Voltage, Volts');
grid on;
ylim([-1 6])


%% Plot Voltage Transfer Characteristic Rd = 1k

data = csvread('NMOS_VTC_1k.CSV');
Vout = data(:, 1);
Vgs = data(:, 3);

figure(3);

plot(Vout, Vgs);
title('Voltage Transfer Characteristic Rd = 1k');
xlabel('Input Voltage, Volts')
ylabel('Output Voltage, Volts');
grid on;
ylim([-1 6])


%% Plot Voltage Transfer Characteristic Rd = 100k

data = csvread('NMOS_VTC_100k.CSV');
Vout = data(:, 1);
Vgs = data(:, 3);

figure(4);

plot(Vout, Vgs);
title('Voltage Transfer Characteristic Rd = 100k');
xlabel('Input Voltage, Volts')
ylabel('Output Voltage, Volts');
grid on;
ylim([-1 6])

%% Transient Simulation Rd = 1k

data = csvread('NMOS_transient_1k.CSV');
time = data(:, 1);
Vout = data(:, 2);

figure(5);

plot(time * 1e3, Vout);
title('NMOS Transient Simulation Rd = 1k');
xlabel('Time, ms')
ylabel('Voltage, Volts');
grid on;
ylim([-1 6]);

%% Transient Simulation Rd = 4.4k

data = csvread('NMOS_transient_4k4.CSV');
time = data(:, 1);      % CSV says otherwise????
Vout = data(:, 2);      % Confused here

figure(6);

plot(time * 1e3, Vout);
title('NMOS Transient Simulation Rd = 4.4k');
xlabel('Time, ms')
ylabel('Voltage, Volts');
grid on;
ylim([-1 6]);

%% Transient Simulation Rd = 100k

data = csvread('NMOS_transient_100k.CSV');
time = data(:, 1);      % CSV says otherwise????
Vout = data(:, 2);      % Confused here

figure(7);

plot(time * 1e3, Vout);
title('NMOS Transient Simulation Rd = 100k');
xlabel('Time, ms')
ylabel('Voltage, Volts');
grid on;
ylim([-1 6]);