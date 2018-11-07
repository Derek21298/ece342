%% Task4 Simulated Plots
% 
%   Author: Derek Haas
%   Date: 11/7/18
%

close all;

%% Plot led driver voltage w/o astable multivibrator 


data = csvread('led_driver_voltage.csv');
voltage = data(:, 2);
time = data(:,1);

figure(1);

plot(time * 1e6, voltage);
title('LED Driver Voltage');
xlabel('Time, us');
ylabel('Voltage, V');
grid on;
xlim([0, 250]);

%% Plot led driver current w/o astable multivibrator 


data = csvread('led_driver_current.csv');
current = data(:, 2);
time = data(:,1);

figure(2);

plot(time * 1e6, current * 1e3);
title('LED Driver Current');
xlabel('Time, us');
ylabel('Current, mA');
grid on;
xlim([0, 250]);

%% Plot led driver voltage w/ astable multivibrator 


data = csvread('ledDriver_full_voltage.CSV');
voltage = data(:, 2);
time = data(:,1);

figure(3);

plot(time * 1e6, voltage);
title('LED Driver Voltage with Astable Multivibrator');
xlabel('Time, us');
ylabel('Current');
grid on;
xlim([0, 250]);

%% Plot led driver current w/ astable multivibrator 


data = csvread('ledDriver_full_current.CSV');
current = data(:, 2);
time = data(:,1);

figure(4);

plot(time * 1e6, current * 1e3);
title('LED Driver Current with Astable Multivibrator');
xlabel('Time, us');
ylabel('Current, mA');
grid on;
xlim([0, 250]);
