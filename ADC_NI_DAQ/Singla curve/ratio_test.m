clear; close all;

%%
file_paths = { ...
    '..\..\Signals\2017_8_29\1\',
    '..\..\Signals\2017_8_30\',
    '..\..\Signals\2017_09_12\1\',
    '..\..\Signals\2017_8_29\2\'
    };
angles = {'90d', '105d', '120d', '135d'};
file_names = {
    {'1kg_90d.lvm', '2kg_90d.lvm', '3kg_90d.lvm', '4kg_90d.lvm'},
    {'1kg_105d.lvm', '2kg_105d.lvm', '3kg_105d.lvm', '4kg_105d.lvm'},
    {'1kg_120d.lvm', '2kg_120d.lvm', '3kg_120d.lvm', '4kg_120d.lvm'},
    {'1kg_135d.lvm', '2kg_135d.lvm', '3kg_135d.lvm', '4kg_135d.lvm'},
    };

calibration_file = '0kg_90d.lvm';

path_len = length(file_paths);
name_len = length(file_names);

%%
norm_baseline = zeros(path_len, 1);
norm_MAV = zeros(path_len, name_len);

for i = 1 : path_len
    % Find the ratio of calibration 0kg_90d       
    path = file_paths{i};
    name = calibration_file;
    
    disp(mean_amplitude(strcat(path, name)));
    norm_baseline(i) = mean_amplitude(strcat(path, name));
    for r = 1 : name_len
        name = file_names{i}{r};        
        norm_MAV(i, r) = ...
            mean_amplitude(strcat(path, name)) / norm_baseline(i);
    end  
end

figure; hold on;
for i = 1 : path_len
    plot([1:4], norm_MAV(i, :), '-o');
    
end
title('Weight - sEMG relationship @ angle')
legend('90d', '105d', '120d', '135d');
xlabel('weight (kg)');
ylabel('avg. amplitude (AU)');
% name = file_names{1}{1};