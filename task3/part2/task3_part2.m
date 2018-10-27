%% Number 2
%   Author: Derek Haas
%   Date: 10-23-18
%

close all;

%% Plot Voltage Transfer Characteristic of CMOS

data = csvread('CMOS_VTC_stage1.CSV');
Vin = data(:, 1);
Vout = data(:, 3);

figure(1);

plot(Vin, Vout);
title('Voltage Transfer Characteristic CMOS');
xlabel('Input Voltage, Volts')
ylabel('Output Voltage, Volts');
grid on;
ylim([-1 6])

%% Plot Output of Stage 1 and Stage 2

data = csvread('CMOS_transient_stage1.CSV');
time = data(:, 1);
stage1 = data(:, 2);

figure(2);

plot(time * 1e3, stage1);
title('Transient Simulation: Stage 1 and Stage 2');
xlabel('Time, ms')
ylabel('Output Voltage, Volts');
grid on;
ylim([-1 6])
hold on;

data = csvread('CMOS_transient_stage2.CSV');
time = data(:, 1);
stage2 = data(:, 2);

plot(time * 1e3, stage2);

xlim([999.965e-3 1000.1e-3])

legend('Stage 1', 'Stage 2')
