clear; close all;
% Theory
% There's a constant weight relationship between sessions


%% Part 1
file_path = '../../Signals/2017_8_8/';
filenames = {'1kg.lvm', '2kg.lvm', '3kg.lvm', '4kg.lvm'};

MVC = lvmread(strcat(file_path, 'MVC.lvm'));
MVC(:, 2) = MVC(:, 2) - mean(MVC(:, 2));
MVC_mean_amp = mean(abs(MVC(:, 2)));
disp(MVC_mean_amp);

norm_mean_amps1 = zeros(length(filenames), 1);
for i =  1:length(filenames)

% Read data from .lvm
datamat = lvmread(strcat(file_path, filenames{i}));

% Remove mean
datamat(:, 2) = datamat(:, 2) - mean(datamat(:, 2));
mean_amp = mean(abs(datamat(:, 2)));

% Norm
norm_mean_amp = mean_amp / MVC_mean_amp;

disp(norm_mean_amp);
norm_mean_amps1(i) = norm_mean_amp;
end

figure;
plot([1: length(filenames)], norm_mean_amps1, '-o');
ylim([0 1]);
xlim([1 length(filenames)]);
title('Normalized Weight - sEMG relationship');
xlabel('weight (kg)');
ylabel('avg. amplitude (AU)');
hold on;

%% Part 2
file_path = '../../Signals/2017_8_9/';
filenames = {'1kg.lvm', '2kg.lvm', '3kg.lvm', '4kg.lvm'};

MVC = lvmread(strcat(file_path, 'MVC.lvm'));
MVC(:, 2) = MVC(:, 2) - mean(MVC(:, 2));
MVC_mean_amp = mean(abs(MVC(:, 2)));
disp(MVC_mean_amp);

norm_mean_amps2 = zeros(length(filenames), 1);
for i =  1:length(filenames)

% Read data from .lvm
datamat = lvmread(strcat(file_path, filenames{i}));

% Remove mean
datamat(:, 2) = datamat(:, 2) - mean(datamat(:, 2));
mean_amp = mean(abs(datamat(:, 2)));

% Norm
norm_mean_amp = mean_amp / MVC_mean_amp;

disp(norm_mean_amp);
norm_mean_amps2(i) = norm_mean_amp;
end

plot([1: length(filenames)], norm_mean_amps2, '-o');
legend('session1', 'session2');

%% Find weight constant
figure;
ratios = norm_mean_amps2./norm_mean_amps1;
plot(ratios, '-o');
ylim([0 1]);
xlim([1 length(filenames)]);
title('Normalized Ratio accross tests');
xlabel('weight (kg)');
ylabel('ratio (AU)');
r = mean(ratios);
norm_mean_amps1 = norm_mean_amps1 * r;

%% Plot adjusted compare
figure; hold on;
plot([1: length(filenames)], norm_mean_amps1, '-o');
plot([1: length(filenames)], norm_mean_amps2, '-o');
ylim([0 1]);
xlim([1 length(filenames)]);
title('Adjusted Normalized Weight - sEMG relationship', 'FontSize', 22);
xlabel('weight (kg)', 'FontSize', 22);
ylabel('avg. amplitude (AU)', 'FontSize', 22);
legend('session1', 'session2');