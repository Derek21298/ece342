%% Number 3
%   Author: Derek Haas
%   Date: 10-28-18
%

close all;

%% Plot ring oscillator transient response

data = csvread('ringOscillator_20k.CSV');
time = data(:, 1);
Vout = data(:, 2);

figure(1);

plot(time * 10e5, Vout);
title('Transient Response - Ring Oscillator');
xlabel('Time, us')
ylabel('Voltage, Volts');
grid on;
