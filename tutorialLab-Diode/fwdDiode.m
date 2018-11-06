%% ECE 342 - Tutorial Lab 1
close all;

%% Plot I-V characteristic
n4004_data = csvread('1N4004_fwd.csv');

v_F = n4004_data(:, 2);
i_F = n4004_data(:, 1);
i_F_fit = n4004_data(:, 6);

figure(1);

semilogy(v_F, i_F);
hold on;
semilogy(v_F, i_F_fit);
grid on;
% title('1N4004 I-V Characteristic');
set(gca,'fontsize',20);
ylabel('I_{F}, A');
xlabel('V_{F}, V');
legend('I_{F}', 'I_{F} fit');

%% Get i_f equation to find Is and n.

% Take subset from Vf = 0.2 to Vf = 0.6
v_F_sub = v_F(21:61);
i_F_sub = i_F(21:61);
i_F_equation = polyfit(v_F_sub, log(i_F_sub), 1)


%% Find Rd

i_F_sub = i_F(66:end);
v_D = v_F(66:end);
v_d = v_D - 1.50871*26e-3;

v_diff = v_D - v_d;

figure(2);
plot(i_F_sub, v_diff);
grid on;
%r = polyfit(i_F_sub, v_diff, 1)

r = mean(v_diff) / mean(i_F_sub)

%% Graph relative error

figure(3);
error_percent = 100 * ((i_F_fit - i_F) ./ i_F)
hold off;
plot(v_F, log(error_percent));
grid on;


