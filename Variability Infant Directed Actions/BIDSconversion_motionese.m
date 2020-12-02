%% Conversion into BIDS - Variability of Infant Directed Actions project

%% Section 1: specification of folders

clear;

addpath('C:\Users\Didi\Documents\GitHub\Donders Datasets\dataset_motionese');

sourcedata = 'C:\Users\Didi\Documents\GitHub\Donders Datasets\dataset_motionese';

cd(sourcedata)

bidsroot = 'C:\Users\Didi\Documents\GitHub\Donders Datasets\dataset_motionese\BIDS';

% Delete the current BIDS folder if it already exists
if exist(bidsroot, 'dir')
  rmdir(bidsroot, 's');
end

%% Section 2: subject information

sub = {'P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7', 'P8', 'P9', 'P10', 'P12', 'P13', 'P14', 'P15', 'P16', 'P17', 'P18', 'P19', 'P20', 'P21', 'P22', 'P23', 'P24', 'P25', 'P26', 'P27', 'P28', 'P29', 'P30',...
    'P31', 'P32', 'P33', 'P35', 'P36', 'P37', 'P38', 'P40', 'P41', 'P42', 'P43', 'P44', 'P45', 'P46', 'P47'};

age = [480, nan, nan, nan, nan, nan, 486, nan, 486, 484, nan, nan, 479, 482, nan, 491, nan, nan, nan,...
    nan, 483, 500, 484, nan, 475, nan, 473, 485, 474, nan, 474, nan, 483, 502, nan, nan, 493,...
    487, 477, nan, 504, 503, 489, nan];

sex = {'m' '' '' '' '' '' 'm' '' 'm' 'm' '' '' 'm' 'm' '' 'f' '' '' ''...
    '' 'f' 'm' 'm' '' 'f' '' 'f' 'm' 'f' '' 'm' '' 'f' 'f' '' '' 'm'...
    'f' 'f' '' 'f' 'm' 'm' ''};

incl = {'yes' 'no' 'no' 'no' 'no' 'no' 'yes' 'no' 'yes' 'yes' 'no' 'no' 'yes' 'yes' 'no' 'yes' 'no' 'no' 'no'...
    'no' 'yes' 'yes' 'yes' 'no' 'yes' 'no' 'yes' 'yes' 'yes' 'no' 'yes' 'no' 'yes' 'yes' 'no' 'no' 'yes'...
    'yes' 'yes' 'no' 'yes' 'yes' 'yes' 'no'};


%% Section 3: General information for the data2bids function

% Here we start looping over subjects
for ii = 1:length(sub)
  
  % The data is already in BrainVision format, we can simply copy the file
  cfg                                         = [];
  cfg.method                                  = 'copy';
  cfg.bidsroot                                = bidsroot;
  cfg.datatype                                = 'eeg';  
  cfg.writejson                               = 'replace';
  
  %% Section 4: the dataset_description.json
  
  cfg.dataset_description.Name                = 'Variability in infant-directed actions';
  cfg.dataset_description.DatasetType         = 'raw';
  cfg.dataset_description.BIDSVersion         = '1.2.0';
  cfg.dataset_description.Authors             = {'Marlene Meyer', 'Johanna E. van Schaik', 'Francesco Poli', 'Sabine Hunnius'};
  
  %   cfg.dataset_description.Acknowledgements    = string
  %   cfg.dataset_description.License             = string, has to be added, discuss with Robert
  %   cfg.dataset_description.HowToAcknowledge    = string
  %   cfg.dataset_description.Funding             = string or cell-array of strings
  %   cfg.dataset_description.ReferencesAndLinks  = string or cell-array of strings
  %   cfg.dataset_description.DatasetDOI          = string
  
  %% Section 5: the participants tsv
  
  cfg.sub                               = sub{ii};
  cfg.participants.age                  = age(ii);
  cfg.participants.sex                  = sex{ii};
  cfg.participants.included             = incl{ii};
  
  %% Section 6: the data set
  
  % Now that we identified the correct subject in the previous section, we
  % can find the correct dataset.
  cfg.dataset                           = ['EEG' filesep  cfg.sub '.vhdr'];
  if cfg.dataset
      hdr                                   = ft_read_header(cfg.dataset);
  end
  
   %% Section 7: the EEG json
  
  % Describing the task
  cfg.TaskName                                    = 'actionobservation'; % Ask Marlene
  cfg.TaskDescription                             = 'infants observed an avator on a screen performing an action'; % OPTIONAL. Description of the task, let's do this in the readme
  cfg.Instructions                                = 'none'; % More extensively in the readme
  %cfg.CogAtlasID                        = % OPTIONAL. URL of the corresponding "Cognitive Atlas term that describes the task (e.g. Resting State with eyes closed ""http://www.cognitiveatlas.org/term/id/trm_54e69c642d89b""")
  %cfg.CogPOID                           = % OPTIONAL. URL of the corresponding "CogPO term that describes the task (e.g. Rest "http://wiki.cogpo.org/index.php?title=Rest")
  
  % Describing the recording setup
  cfg.InstitutionName                             = 'The Donders Institute for Brain, Cognition and Behaviour'; % The name of the institution in charge of the equipment that produced the composite instances.
  cfg.InstitutionAddress                          = 'Heyendaalseweg 135, 6525 AJ Nijmegen, the Netherlands';
  cfg.InstitutionalDepartmentName                 = 'Donders Centre for Cognition';
  
  cfg.Manufacturer                                = 'Brain Products GmbH'; % Manufacturer of the recording system
  cfg.ManufacturersModelName                      = 'BrainAmp Standard'; % Manufacturer's designation of the model
  %cfg.DeviceSerialNumber                = % OPTIONAL. The serial number of the equipment that produced the composite instances. A pseudonym can also be used to prevent the equipment from being identifiable, as long as each pseudonym is unique within the dataset.
  %cfg.SoftwareVersions                  = % OPTIONAL. Manufacturer's designation of the acquisition software.
  
  cfg.eeg.CapManufacturer                         = 'Brain Products GmbH'; % name of the cap manufacturer
  cfg.eeg.CapManufacturersModelName               = 'actiCAP 32Ch'; % Manufacturer's designation of the EEG cap model
  cfg.eeg.EEGPlacementScheme                      = '10-20'; % Placement scheme of the EEG electrodes
  cfg.eeg.EEGReference                            = 'TP9'; % Description of the type of reference used
  cfg.eeg.EEGGround                               = 'AFz'; % Description of the location of the ground electrode
  
  cfg.eeg.SamplingFrequency                       = 500; % Sampling frequency (in Hz)
  % NOTE: the amplifier always samples at 5000 Hz in hardware, the data
  % is then downsampled to 500 Hz in software
  cfg.eeg.PowerLineFrequency                      = 50; % Frequency (in Hz) of the power grid where the EEG is installed (i.e. 50 or 60).
  cfg.eeg.HardwareFilters.LowCutoff.Frequency     = 0.1;
  cfg.eeg.HardwareFilters.HighCutoff.Frequency    = 1000;
  cfg.eeg.SoftwareFilters.LowCutoff.Frequency     = 0.1;
  cfg.eeg.SoftwareFilters.HighCutoff.Frequency    = 200; % List of temporal software filters applied or ideally  key:value pairs of pre-applied filters and their parameter values
  
  cfg.eeg.EEGChannelCount                         = 32; % Number of EEG channels
  % cfg.eeg.EOGChannelCount               = % None in these recordings
  % cfg.eeg.ECGChannelCount               = % None in these recordings
  % cfg.eeg.EMGChannelCount               = % None in these recordings
  % cfg.eeg.MiscChannelCount              = % Number of miscellaneous analog channels for auxiliary  signals
  % cfg.eeg.TriggerChannelCount           = % Number of channels for digital and analog triggers.
  
  % Describing the recording
  cfg.eeg.RecordingType                           = 'continuous';
  % cfg.eeg.RecordingDuration             = % Read automatically
  % cfg.eeg.EpochLength                   = % Read automatically
  
  % Possible additional info
  % cfg.eeg.HeadCircumference             = % Circumference of the participants head, not known for these recordings
  % cfg.eeg.SubjectArtefactDescription    = % Freeform description of the observed subject artefact and its possible cause (e.g. "Vagus Nerve Stimulator", "non-removable implant").
  % This info is in her labnotes, would have to be added manually though.
  
  %% Section 8: the events.tsv.
  
  % To do this, first create events using ft_define_trial
  cfg_trials                      = cfg;
  cfg_trials.trialdef.eventtype   = 'Stimulus';
  trl                             = trialfun_motionese(cfg_trials);   
  cfg.events                      = trl;
  
  %% Section 9: the channels.tsv
  
  % Double info with eeg.tsv --> here only fill it out if it is channel specific
  
  cfg.channels.name               = hdr.label;
  cfg.channels.type               = repmat({'EEG'}, 32, 1);  % Type of channel
  cfg.channels.units              = repmat({'uV'}, 32, 1);% Physical unit of the data values recorded by this channel in SI
  cfg.channels.sampling_frequency = repmat(500, 32, 1); % Sampling rate of the channel in Hz.
  cfg.channels.low_cutoff         = repmat(0.1, 32, 1); % Frequencies used for the hardware high-pass filter applied to the channel in Hz
  cfg.channels.high_cutoff        = repmat(1000, 32, 1); % Frequencies used for the hardware low-pass filter applied to the channel in Hz.
  cfg.channels.notch              = repmat(nan, 32, 1); % Frequencies used for the notch filter applied to the channel, in Hz. If no notch filter applied, use n/a.
  
  % cfg.channels.software_filters   = {' "Low Cutoff": 0.1', ' "High Cutoff": 125'}; % List of temporal and/or spatial software filters applied.
  % cfg.channels.description        = % OPTIONAL. Brief free-text description of the channel, or other information of interest. See examples below.
  % cfg.channels.status             = % OPTIONAL. Data quality observed on the channel (good/bad). A channel is considered bad if its data quality is compromised by excessive noise. Description of noise type SHOULD be provided in [status_description].
  % cfg.channels.status_description = % OPTIONAL. Freeform text description of noise or artifact affecting data quality on the channel. It is meant to explain why the channel was declared bad in [status].
  
 
  %% Call data2bids
  
  data2bids(cfg);
  
  %% Then add behavioural data: observation phase
  
  % First let's find the corresponding excel file 
  
  subject_number                                = sum(str2double(regexp(cell2mat(sub(ii)),'\d+','match')));
  str_subject                                   = ['_P' num2str(subject_number) '_'];
  filelist                                      = dir(fullfile(['VideoCoding' filesep 'ObservationPhase_Looking']));
                    
  for ll = 1:size(filelist, 1)      
      if ~isempty(strfind(filelist(ll).name, str_subject))
          excel_obs = ['VideoCoding' filesep 'ObservationPhase_Looking' filesep filelist(ll).name];
      end
  end
  excel_observation                             = xlsread(excel_obs);
  
  % Then we convert its info to a more interpretable table
  tsv_obs                                       = read_excel_observation(excel_observation);
  
  
  % Add the correct folder where you want to add it
  foldername                                    = [bidsroot filesep 'sub-P' num2str(subject_number) filesep 'beh'];
  mkdir(foldername);
  filename                                      = [foldername filesep 'sub-P' num2str(subject_number) '_task-' cfg.TaskName '_events.tsv'];
  write_tsv(filename, tsv_obs);
  
    %% Behavioural data: exploration phase
  
  % First let's find the corresponding excel file 
  
  subject_number                                = sum(str2double(regexp(cell2mat(sub(ii)),'\d+','match')));
  str_subject                                   = ['p' num2str(subject_number) '_'];
  filelist                                      = dir(fullfile(['VideoCoding' filesep 'ExplorationPhase_Behavior']));
                    
  for ll = 1:size(filelist, 1)      
      if ~isempty(strfind(filelist(ll).name, str_subject))
          excel_expl = ['VideoCoding' filesep 'ExplorationPhase_Behavior' filesep filelist(ll).name];
      end
  end
  if exist('excel_expl', 'var') 
      exploration_num                           = xlsread(excel_expl);
  
      % Then we convert its info to a more interpretable table
      CodedBehaviour                            = {'AllElements1', 'A1 - First Element Touched', 'A1 - Performed target action',...
                                                'A1 - Number times succesful', 'A1 - Number times attempted', 'A1 - Number times attempted with wrong element',...
                                                'AllElements2', 'A2 - First Element Touched', 'A2 - Performed target action',...
                                                'A2 - Number times succesful', 'A2 - Number times attempted', 'A2 - Number times attempted with wrong element',...
                                                'AllElements3', 'A3 - First Element Touched', 'A3 - Performed target action',...
                                                'A3 - Number times succesful', 'A3 - Number times attempted', 'A3 - Number times attempted with wrong element',...
                                                'OneElement1', 'O1 - Performed target action','O1 - Number times succesful', 'O1 - Number times attempted',...
                                                'OneElement2', 'O2 - Performed target action','O2 - Number times succesful', 'O2 - Number times attempted',...
                                                'OneElement3', 'O3 - Performed target action','O3 - Number times succesful', 'O3 - Number times attempted'}';
      result                                    = exploration_num(2:end);
      onset                                     = repmat({'Elements touch table'}, length(CodedBehaviour), 1);
      duration                                  = repmat(60, length(CodedBehaviour), 1);
      tsv_expl                                  = table(onset, duration, CodedBehaviour, result);
      
      % Add it to the correct folder
      foldername                                    = [bidsroot filesep 'sub-P' num2str(subject_number) filesep 'beh'];
      filename                                      = [foldername filesep 'sub-P' num2str(subject_number) '_task-exploration_events.tsv'];
      write_tsv(filename, tsv_expl);
  end
  
  %% Add the behavioural events json, observation phase

    events_json                                 = [];
    events_json.onset.description               = 'onset of the event, see the EEG events.tsv for the correct onset';
    events_json.duration.description            = 'duration of the event, see the EEG events.tsv for the correct duration';
    events_json.CodedPeriod.description         = 'period of annotation looking behaviour';
    events_json.CodedPeriod.levels              = {'fixation cross: looking behaviour during entire fixation cross',...
                                                'intro video: looking behaviour during entire introduction video',...
                                                'stimulus video - phase1: looking behaviour from start stimulus video till the avator moves head down',...
                                                'stimulus video - phase2: looking behaviour from head moves down till first hand movement',...
                                                'stimulus video - phase3: looking behaviour during first action (as long as the hand moves)',...
                                                'stimulus video - phase4: looking behaviour during second action (as long as the hand moves)',...
                                                'stimulus video - phase5: looking behaviour during third action (as long as the hand moves)',...
                                                'stimulus video - phase6: looking behaviour during fourth action (as long as the hand moves)',...
                                                'stimulus video - phase7: looking behaviour during fifth action (as long as the hand moves)',...
                                                'stimulus video - phase8: looking behaviour from last hand movement till head moves up',...
                                                'stimulus video - phase9: looking behaviour from head moves up till end stimulus video',...
                                                'peek-a-boo video - phase1: looking behaviour from start peek-a-boo video till start peek-a-boo gesture',...
                                                'peek-a-boo video - phases2-5: looking behaviour during peek-a-boo gesture for each second (phase2 for 1 second gesture; phases2 and 3 for 2 second gesture; phases2,3, and 4 for 3 second gesture; phases2,3,4, and 5 for 4 second gesture)',...
                                                'peek-a-boo video - last phase: looking behaviour from end peek-a-boo gesture till end video'};
                                               
    events_json.annotation.description          = 'annotation of looking behaviour';                                               
    events_json.annotation.levels               = {'1: child looked at the screen for the entire coded period', '0: child did not look at the screen for the entire coded period'};
    foldername                                  = [bidsroot filesep 'sub-P' num2str(subject_number) filesep 'beh'];
    filename                                    = [foldername filesep 'sub-P' num2str(subject_number) '_task-' cfg.TaskName '_events.json'];

    write_json(filename, events_json);
    
      %% Add the behavioural events json, exploration phase

    events_json                                 = [];
    events_json.onset.description               = 'onset of the coded behaviour';
    events_json.duration.description            = 'duration of the coded behaviour';
    events_json.Duration.units                  = 'seconds';
    events_json.CodedBehaviour.description      = 'Behaviour that was coded for 1 minute after elements were presented to the child';
    events_json.CodedBehaviour.levels.phase     = {'AllElements 1-3: three phases (one per element) where base plus all element types are shown',...
                                                   'OneElement 1-3: three phases (one per element) where base plus correct element type are shown '};
    events_json.CodedBehaviour.levels.result    = {'AllElements 1-3: identity of the correct element',...
                                                   'OneElement 1-3: identity of the correct element',...
                                                   'First Element Touched: identity of the first element the child touched',...
                                                   'Performed target action: 1 if target action on the base was performed, 0 if not',...
                                                   'Number times succesful: number of times a succesful action was performed',...
                                                   'Number times attempted: number of times the action was attempted',...
                                                   'Number times attempted with wrong element: number of times the action was attempted with the wrong element'};
                                               
    events_json.result.description              = 'Results of behavioural coding';                                               
   
    foldername                                  = [bidsroot filesep 'sub-P' num2str(subject_number) filesep 'beh'];
    filename                                    = [foldername filesep 'sub-P' num2str(subject_number) '_task-exploration_events.json'];

    write_json(filename, events_json);
    
    %% Add the events json

    events_json                                 = [];
    events_json.onset.description               = 'Onset of the event';
    events_json.onset.units                     = 'seconds';
    events_json.duration.description            = 'Duration of the event';
    events_json.duration.units                  = 'seconds';
    events_json.begsample.description           = 'Sample where event begins (measured from start of recording)';
    events_json.begsample.units                 = 'sample number';
    events_json.endsample.description           = 'Sample where event ends (measured from start of recording)';
    events_json.endsample.units                 = 'sample number';
    events_json.offset.description              = 'Offset from begsample till start of the trial of interest';
    events_json.offset.units                    = 'sample number';
    events_json.block.description               = 'Block of the experiment';
    events_json.block.levels                    = {'1-4: 3 trials each consisting of a fixation cross, an introduction video, and an experimental video, followed by a fixation cross and peek-a-boo video', '5: peek-a-boo videos only'};
    events_json.marker.description              = 'Marker number corresponding to this event as indicated in the .vmrk file';
    events_json.stimulus.description            = 'Stimulus file presented to the infact (see subfolder stimuli)';
    events_json.action_exp_video.description    = 'Type of action displayed in the experimental video';
    events_json.action_exp_video.levels         = {'balls: putting balls in a bucket', 'cups: building a tower with cups', 'rings: stacking rings on a peg', '*_stack_**_completed: within the experimental video action number ** of type * has been completed, a total of 5 actions are shown in one video', 'n/a: not applicable for this type of trial'};
    events_json.condition_exp_video.description = 'Condition of the action';
    events_json.condition_exp_video.levels      = {'normal: normal amplitude of motion', 'high: high amplitude of motion', 'variable: variable amplitude of motion', 'n/a: not applicable for this type of trial'};
    
    foldername                                  = [bidsroot filesep 'sub-P' num2str(subject_number) filesep 'eeg'];
    filename                                    = [foldername filesep 'sub-P' num2str(subject_number) '_task-' cfg.TaskName '_events.json'];

    write_json(filename, events_json);
  
end

%% Add the participants json

participants_json.participant_id.description    = 'Subject identifier';
participants_json.age.description               = 'age of each subject';
participants_json.age.units                     = 'days';
participants_json.sex.description               = 'gender of each subject';
participants_json.sex.levels                    = {'f: female', 'm: male', 'n/a: not provided for privacy reasons' };
participants_json.included.description          = 'included in the final dataset for analysis';
participants_json.included.levels               = {'yes: included', 'no: not included' };

filename                                        = [bidsroot filesep 'participants.json'];

write_json(filename, participants_json);

%% Add the matlab code used to generate BIDS to a subfolder

destination                                     = [bidsroot filesep 'code'];
this_script                                     = [mfilename('fullpath') '.m'];
trialfun_script                                 = [fileparts(which(mfilename)) filesep 'trialfun_motionese.m'];

mkdir(destination);
copyfile(this_script, destination);
copyfile(trialfun_script, destination);

%% Create a sourcedata folder with the logfiles and the video's

% Let's create a folder for the logfiles
str                                             = [bidsroot filesep 'sourcedata' filesep 'logfiles'];
mkdir(str)

% And for the video files
strvideo                                        = [bidsroot filesep 'stimuli'];
mkdir(strvideo)

% Then copy the data there
logfiles                                        = [sourcedata filesep 'Logfiles'];
logfiles                                        = dir(logfiles);
videofile                                       = [sourcedata filesep 'Stimuli'];
videofile                                       = dir(videofile);

copyfile([sourcedata filesep 'Logfiles' filesep logfiles(1).name], str);
copyfile([sourcedata filesep 'Stimuli' filesep videofile(1).name], strvideo);

for cc = 1:length(videofile)
    if contains(videofile(cc).name, 'wave')
        delete([strvideo filesep videofile(cc).name])
    end
end


%% Exlude scans.tsv from bidsvalidator

destination = fullfile(bidsroot, '.bidsignore');
fileID = fopen(destination,'w');
fprintf(fileID,'*_scans.tsv\n');
fclose(fileID);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SUBFUNCTION

function s = remove_empty(s)
if isempty(s)
  return
elseif isstruct(s)
  fn = fieldnames(s);
  fn = fn(structfun(@isempty, s));
  s = removefields(s, fn);
elseif istable(s)
  remove = false(1,size(s,2));
  for i=1:size(s,2)
    % find columns that are non-numeric and where all elements are []
    remove(i) = ~isnumeric(s{:,i}) && all(cellfun(@isempty, s{:,i}));
  end
  s = s(:,~remove);
end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SUBFUNCTION

function y = sort_fields(x)
fn = fieldnames(x);
fn = sort(fn);
y = struct();
for i=1:numel(fn)
  y.(fn{i}) = x.(fn{i});
end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SUBFUNCTION

function write_json(filename, json)

ft_info('writing ''%s''\n', filename);
json = remove_empty(json);
% json = sort_fields(json);
json = ft_struct2char(json); % convert strings into char-arrays
ft_hastoolbox('jsonlab', 1);
% see also the output_compatible helper function
% write nan as 'n/a'
% write boolean as True/False
str = savejson('', json, 'NaN', '"n/a"', 'ParseLogical', true);
% fid = fopen_or_error(filename, 'w');
fid = fopen(filename, 'w');
fwrite(fid, str);
fclose(fid);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SUBFUNCTION

function write_tsv(filename, tsv)
ft_info('writing ''%s''\n', filename);
fn = tsv.Properties.VariableNames;
for i=1:numel(fn)
  % write [] as 'n/a'
  % write nan as 'n/a'
  % write boolean as 'True' or 'False'
  tsv.(fn{i}) = output_compatible(tsv.(fn{i}));
end
writetable(tsv, filename, 'Delimiter', 'tab', 'FileType', 'text');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SUBFUNCTION

function val = output_compatible(val)
if istable(val)
  fn = val.Properties.VariableNames;
  for i=1:numel(fn)
    val.(fn{i}) = output_compatible(val.(fn{i}));
  end
elseif iscell(val)
  % use recursion to make all elements compatible
  val = cellfun(@output_compatible, val, 'UniformOutput', false);
elseif isnumeric(val) && numel(val)>1 && any(isnan(val))
  % convert and use recursion to make all elements compatible
  val = num2cell(val);
  val = cellfun(@output_compatible, val, 'UniformOutput', false);
else
  % write [] as 'n/a'
  % write nan as 'n/a'
  % write boolean as 'True' or 'False'
  if isempty(val)
    val = 'n/a';
  elseif isnan(val)
    val = 'n/a';
  elseif islogical(val)
    if val
      val = 'True';
    else
      val = 'False';
    end
  end
end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SUBFUNCTION

function tsv_obs = read_excel_observation(excel_observation)

CodedPeriod                                    = cell(length(excel_observation), 1);
  for ll = 1:length(excel_observation)
      if excel_observation(ll, 1) == 95
          CodedPeriod(ll, :) = {'fixation cross'};
      elseif excel_observation(ll, 1)>100 && excel_observation(ll, 1)<200
          CodedPeriod(ll, :) = {'intro video'};
      elseif excel_observation(ll, 1)>2000000 && excel_observation(ll, 1)<22000000
          % there are nine phases of this:       
          phase = num2str(excel_observation(ll, 1));
          phase_str = ['stimulus video - phase' phase(end)]; 
          CodedPeriod(ll, :) = {phase_str};
      else 
          phase = num2str(excel_observation(ll, 1));
          phase_str = ['peek-a-boo video - phase' phase(end)]; 
          CodedPeriod(ll, :) = {phase_str};
      end
  end
  annotation                                    = excel_observation(:, 2);
  onset                                         = nan(size(annotation));
  duration                                      = nan(size(annotation));
  tsv_obs                                       = table(onset, duration, CodedPeriod, annotation);
  
end