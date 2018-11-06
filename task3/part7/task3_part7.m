%% ECE 342 Lab Task 3 Part 2
close all;


%% Astable Multivibrator Transient Response

data = csvread('astable-multiv-transient-exper.csv');

voltage = data(:,2);
time = data(:,1);

figure(1);

plot(time * 1e6, voltage);
title('Atable Multivibrator Transient Response');
xlabel('Time, us');
ylabel('Voltage, V');
grid on;
xlim([-80 80]);
