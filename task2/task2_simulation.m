%%

close all;

array = csvread('task2_design.CSV');
freq = array(:, 1);
dB = array(:, 4);

semilogx(freq, dB);