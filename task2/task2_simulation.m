%%
%   ECE 342 Task 2 Simulation
%   Author: Derek Haas
%   Date: 10/12/18
%   Description: Plot CSV data from simulation run in Micro-Cap of
%                an Active Bandpass Filter


close all;

% Read the data, and find the freq and gain
data = csvread('task2_design.CSV');
freq = data(:, 1);
dB = data(:, 4);

% Plot on semilog graph
semilogx(freq, dB);

% All graph necesities
title('Task 2 - Simulation');
ylabel('Gain, dB');
xlabel('Frequency, Hz');
grid on;
