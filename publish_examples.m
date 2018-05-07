function [] = publish_examples(varargin)
% Create html files for matbiips examples, and matlab zip files
% Last update: 18/02/2017

outdir = 'docs';
if nargin>=1
    outdir = varargin{1};
end

ind_folders = 1:4;
if nargin>=2
    ind_folders = varargin{2};
end

options = struct();
if nargin>=3
    options = varargin{3};
end

folders = {...
    'tutorial',...
    'object_tracking',...
    'stoch_kinetic',...
    'stoch_volatility'...
    };
mfiles = {...
    {'tutorial1', 'tutorial2', 'tutorial3'},...
    {'hmm_4d_nonlin'},...
    {'stoch_kinetic_gill', 'stoch_kinetic'},...
    {'switch_stoch_volatility', 'stoch_volatility', 'switch_stoch_volatility_param'}...
    };

fprintf('========================================================\n')

d = dir(outdir);
outdir = d(1).folder; % absolute path
curdir = pwd;
for i = ind_folders
    mdir = fullfile(curdir, folders{i});
    cd(mdir);
    options.outputDir = fullfile(outdir, 'matbiips', folders{i});
    files_i = mfiles{i};
    for j = 1:length(files_i)
        % Publish html file
        fprintf('Publishing matbiips example: %s\n', files_i{j})
        publish([files_i{j} '.m'], options);
        close all
        fprintf('------------------------------------------------\n')         
    end
end
