%% ECE 342 Lab Task 3 Part 2
close all;

%% CMOS Voltage Transfer Characteristic

input = csvread('cmos-exper-transient-INPUT.csv');
output = csvread('cmos-exper-transient-OUTPUT.csv');

inputVoltage = input(:,2);
outputVoltage = output(:,2);
inputVSub = inputVoltage(544:545);
outputVSub = outputVoltage(544:545);

figure(1);

plot(inputVoltage, outputVoltage);
title('CMOS Voltage Transfer Characteristic');
xlabel('Input Voltage, V');
ylabel('Output Voltage, V');
grid on;
hold on;

halfwayPoint = interp1(outputVSub, inputVSub, 2.5);
line([halfwayPoint halfwayPoint], [0 2.5],'linestyle', '--');
text(2.5, 2.5, 'V_{in} = 2.44 V, V_{out} = 2.5 V');

%% CMOS Transient Response

data = csvread('cmos-transient-exper.csv');

voltage = data(:,2);
time = data(:,1);

figure(2);

plot(time * 1e3, voltage);
title('CMOS Transient Response');
xlabel('Time, ms');
ylabel('Voltage, V');
grid on;
xlim([-5 5]);

