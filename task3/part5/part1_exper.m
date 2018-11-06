%% ECE 342 Lab Task 3 Part 1

close all;

%% VTC NMOS

input = csvread('nmos-exper-vtc-INPUT.csv');
output = csvread('nmos-exper-vtc-OUTPUT.csv');

inputVoltage = input(:,2);
outputVoltage = output(:,2);

figure(1);

plot(inputVoltage, outputVoltage);
title('NMOS Voltage Transfer Characteristic');
xlabel('Input Voltage, V');
ylabel('Output Voltage, V');
grid on;
ylim([0 5.5]);
xlim([-0.5 4.5]);

halfwayPoint = interp1(outputVoltage, , 2.5);
line([halfwayPoint halfwayPoint], [0 2.5],'linestyle', '--');
text(2.5, 2.5, 'V_{in} = 2.44 V, V_{out} = 2.5 V');


%% Transient NMOS

data = csvread('nmos-exper-transient.csv');

voltage = data(:,2);
time = data(:,1);

figure(2);

plot(time * 1e3, voltage);
title('NMOS Transient Response');
xlabel('Time, ms');
ylabel('Voltage, V');
grid on;
xlim([-2.5 2.5]);