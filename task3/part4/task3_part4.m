%% Number 4
%   Author: Derek Haas
%   Date: 10-28-18
%

close all;

%% Plot astable multivibrator transient response

data = csvread('astableMulti_transient.CSV');
time = data(:, 1);
Vout = data(:, 2);

figure(1);

plot(time * 10e5, Vout);
title('Transient Response - Astable Multivibrator');
xlabel('Time, us')
ylabel('Voltage, Volts');
grid on;
ylim([-1 6]);
