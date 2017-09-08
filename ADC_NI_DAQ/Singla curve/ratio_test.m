clear; close all;

%%
file_paths = { ...
    '..\..\Signals\2017_8_29\1\', ...
    '..\..\Signals\2017_8_30\', ...
    '..\..\Signals\2017_8_29\2\' ...
    };
file_names = {...
    {'1kg_90d.lvm', '2kg_90d.lvm', '3kg_90d.lvm', '4kg_90d.lvm'}, ...
    {'1kg_105d.lvm', '2kg_105d.lvm', '3kg_105d.lvm', '4kg_105d.lvm'}, ...
    {'1kg_135d.lvm', '2kg_135d.lvm', '3kg_135d.lvm', '4kg_135d.lvm'}, ...
    };
calibration_file = '0kg_90d.lvm';

path_len = length(file_paths);
name_len = length(file_names);

%%
norm_baseline = zeros(3, 1);

baseline = mean_amplitude(strcat(file_paths{1}, calibration_file));

for i = 1 : path_len
    % Find the ratio of calibration 0kg_90d   
    name = calibration_file;
    path = file_paths{i};
           
    disp(mean_amplitude(strcat(path, name)));
    norm_baseline(i) = mean_amplitude(strcat(path, name)) / baseline;
    for r = 1 : name_len
    
    end  
end


% name = file_names{1, 2}{1};
