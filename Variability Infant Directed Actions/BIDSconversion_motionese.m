%% Conversion into BIDS - Variability of Infant Directed Actions project

%% Section 1: specification of folders

clear;

addpath();

sourcedata = '';

cd(sourcedata)

bidsroot = '';

% Delete the current BIDS folder if it already exists
if exist(bidsroot, 'dir')
  rmdir(bidsroot, 's');
end

%% Section 2: subject information

sub = {'P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7', 'P8', 'P9', 'P10', 'P11', 'P12', 'P13', 'P14', 'P15', 'P16', 'P17', 'P18', 'P19', 'P20', 'P21', 'P22', 'P23', 'P24', 'P25', 'P26', 'P27', 'P28', 'P29', 'P30',...
    'P31', 'P32', 'P33', 'P34', 'P35', 'P36', 'P37', 'P38', 'P39', 'P40', 'P41', 'P42', 'P43', 'P44', 'P45', 'P46', 'P47'};

age = [nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan...
    nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan nan...
    nan nan nan nan nan nan nan];
% example: sex = {'f' [] 'f' 'f' 'f' 'm' 'm' 'm' 'm' 'm'};
sex = {[] [] [] [] [] [] [] [] [] [] [] [] [] [] [] [] [] [] [] []...
    [] [] [] [] [] [] [] [] [] [] [] [] [] [] [] [] [] [] [] []...
    [] [] [] [] [] [] []};

% Perhaps add more info in  a datainfo files, if required

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
  
  %% Section 6: the data set
  
  % Now that we identified the correct subject in the previous section, we
  % can find the correct dataset.
  str                                   = [];
  dataset                               = dir(fullfile(str,'*.vhdr'));
  cfg.dataset                           = [str filesep dataset.name];
  hdr                                   = ft_read_header(cfg.dataset);
  
  %% Section 7: the EEG json
  
  % Describing the task
  cfg.TaskName                          = 'action-observation'; % Ask Marlene
  cfg.TaskDescription                   = {'Demonstration phase: infants observed an avator on a screen performing an action', 'Exploration phase: infants were presented with the objects needed to execute the actions from the movies'}; % OPTIONAL. Description of the task, let's do this in the readme
  cfg.Instructions                      = 'none'; % More extensively in the readme
  %cfg.CogAtlasID                        = % OPTIONAL. URL of the corresponding "Cognitive Atlas term that describes the task (e.g. Resting State with eyes closed ""http://www.cognitiveatlas.org/term/id/trm_54e69c642d89b""")
  %cfg.CogPOID                           = % OPTIONAL. URL of the corresponding "CogPO term that describes the task (e.g. Rest "http://wiki.cogpo.org/index.php?title=Rest")
  
  % Describing the recording setup
  cfg.InstitutionName                   = 'The Donders Institute for Brain, Cognition and Behaviour'; % The name of the institution in charge of the equipment that produced the composite instances.
  cfg.InstitutionAddress                = 'Heyendaalseweg 135, 6525 AJ Nijmegen, the Netherlands';
  cfg.InstitutionalDepartmentName       = 'Donders Centre for Cognition';
  
  cfg.Manufacturer                      = 'Brain Products GmbH'; % Manufacturer of the recording system
  cfg.ManufacturersModelName            = 'BrainAmp Standard'; % Manufacturer's designation of the model
  %cfg.DeviceSerialNumber                = % OPTIONAL. The serial number of the equipment that produced the composite instances. A pseudonym can also be used to prevent the equipment from being identifiable, as long as each pseudonym is unique within the dataset.
  %cfg.SoftwareVersions                  = % OPTIONAL. Manufacturer's designation of the acquisition software.
  
  cfg.eeg.CapManufacturer               = 'Brain Products GmbH'; % name of the cap manufacturer
  cfg.eeg.CapModelName                  = 'actiCAP 32Ch'; % Manufacturer's designation of the EEG cap model
  cfg.eeg.EEGPlacementScheme            = '10-20'; % Placement scheme of the EEG electrodes
  cfg.eeg.EEGReference                  = 'M1'; % Description of the type of reference used
  cfg.eeg.EEGGround                     = 'AFz'; % Description of the location of the ground electrode
  
  cfg.eeg.SamplingFrequency             = 500; % Sampling frequency (in Hz)
  % NOTE: the amplifier always samples at 5000 Hz in hardware, the data
  % is then downsampled to 500 Hz in software
  cfg.eeg.PowerLineFrequency            = 50; % Frequency (in Hz) of the power grid where the EEG is installed (i.e. 50 or 60).
  cfg.eeg.HardwareFilters               = {'Low Cutoff: 0.1', 'High Cutoff: 1000'}; % List of hardware (amplifier) filters
  cfg.eeg.SoftwareFilters               = {'Low Cutoff: 0.1', 'High Cutoff: 125'}; % List of temporal software filters applied or ideally  key:value pairs of pre-applied filters and their parameter values
  
  cfg.eeg.EEGChannelCount               = 32; % Number of EEG channels
  cfg.eeg.EOGChannelCount               = 2; % Number of EOG channels
  % cfg.eeg.ECGChannelCount               = % None in these recordings
  % cfg.eeg.EMGChannelCount               = % None in these recordings
  % cfg.eeg.MiscChannelCount              = % Number of miscellaneous analog channels for auxiliary  signals
  % cfg.eeg.TriggerChannelCount           = % Number of channels for digital and analog triggers.
  
  % Describing the recording
  cfg.eeg.RecordingType                 = 'continuous';
  % cfg.eeg.RecordingDuration             = % Read automatically
  % cfg.eeg.EpochLength                   = % Read automatically
  
  % Possible additional info
  % cfg.eeg.HeadCircumference             = % Circumference of the participants head, not known for these recordings
  % cfg.eeg.SubjectArtefactDescription    = % Freeform description of the observed subject artefact and its possible cause (e.g. "Vagus Nerve Stimulator", "non-removable implant").
  % This info is in her labnotes, would have to be added manually though.
  
  %% Section 8: the events.tsv.
  
  % To do this, first create events using ft_define_trial
  cfg_trials                      = cfg;
  cfg_trials.trialdef.eventtype   = '';
  trl                             = trialfun_thetalearning(cfg_trials);   
  cfg.events                      = trl;
  
  %% Section 9: the channels.tsv
  
  % Double info with eeg.tsv --> here only fill it out if it is channel specific
  
  cfg.channels.name               = hdr.label;
  cfg.channels.type               = [repmat({'EEG'}, 32, 1); repmat({'EOG'}, 2, 1)];  % Type of channel
  cfg.channels.units              = repmat({'uV'}, 34, 1);% Physical unit of the data values recorded by this channel in SI
  cfg.channels.sampling_frequency = repmat(500, 34, 1); % Sampling rate of the channel in Hz.
  cfg.channels.low_cutoff         = repmat(0.1, 34, 1); % Frequencies used for the hardware high-pass filter applied to the channel in Hz
  cfg.channels.high_cutoff        = repmat(1000, 34, 1); % Frequencies used for the hardware low-pass filter applied to the channel in Hz.
  cfg.channels.notch              = repmat(nan, 34, 1); % Frequencies used for the notch filter applied to the channel, in Hz. If no notch filter applied, use n/a.
  
  % cfg.channels.software_filters   = {' "Low Cutoff": 0.1', ' "High Cutoff": 125'}; % List of temporal and/or spatial software filters applied.
  % cfg.channels.description        = % OPTIONAL. Brief free-text description of the channel, or other information of interest. See examples below.
  % cfg.channels.status             = % OPTIONAL. Data quality observed on the channel (good/bad). A channel is considered bad if its data quality is compromised by excessive noise. Description of noise type SHOULD be provided in [status_description].
  % cfg.channels.status_description = % OPTIONAL. Freeform text description of noise or artifact affecting data quality on the channel. It is meant to explain why the channel was declared bad in [status].
  
  %% Additional info on electrodes and coordinate system
  
  % For EEG and iEEG data you can specify an electrode definition according to
  % FT_DATATYPE_SENS as an "elec" field in the input data, or you can specify it as
  % cfg.elec or you can specify a filename with electrode information.
  %   cfg.elec                    = structure with electrode positions or filename, see FT_READ_SENS
  
  % Columns in the electrodes file
  
  %cfg.electrodes.name             = hdr.label; % REQUIRED. Name of the electrode,hopefully read from header. Check it!
  %cfg.electrodes.x                = % REQUIRED. Recorded position along the x-axis
  %cfg.electrodes.y                = % REQUIRED. Recorded position along the y-axis
  %cfg.electrodes.z                = % REQUIRED. Recorded position along the z-axis
  %cfg.electrodes.type             = % RECOMMENDED. Type of the electrode (e.g., cup, ring, clip-on, wire, needle)
  %cfg.electrodes.material         = % RECOMMENDED. Material of the electrode, e.g., Tin, Ag/AgCl, Gold
  %cfg.electrodes.impedance        = % RECOMMENDED. Impedance of the electrode in kOhm
  
  % Info on coordsystem --> not necessary for this study: no info available.
  % Is required i electrodes tsv is required
  
  %cfg.coordsystem.EEGCoordinateSystem              = % OPTIONAL. Describes how the coordinates of the EEG sensors are to be interpreted.
  %cfg.coordsystem.EEGCoordinateUnits               = % OPTIONAL. Units of the coordinates of EEGCoordinateSystem. MUST be ???m???, ???cm???, or ???mm???.
  %cfg.coordsystem.EEGCoordinateSystemDescription   = % OPTIONAL. Freeform text description or link to document describing the EEG coordinate system system in detail.
  
  %% Stimulus info --> Not necessary for now
  
  % cfg.presentationfile        = [sourcedata '\subject_' sub{1} '\Behavioural' '\Theta_Exp_Adult_part1']; % Not sure about this
  % cfg.trigger.eventtype       = cfg.trialdef.eventtype; % Not sure about this % this should be a string, extract it from a datainfo file
  % cfg.trigger.eventvalue      = string or number
  % cfg.trigger.skip            = 'last'/'first'/'none'
  
  % cfg.presentation.eventtype  = [] % string, extract it from a datainfo file
  % cfg.presentation.eventvalue = string or number ????
  % cfg.presentation.skip       = 'last'/'first'/'none'
  
  % To add stimulus files, not necessary for Rocio's data set
  % cfg.datatype = 'stimulus';
  %cfg.stim.Columns                          =
  %cfg.stim.StartTime                        =
  %cfg.stim.SamplingFrequency                =
  
  
  %% Call data2bids
  
  data2bids(cfg);
  
end

%% Add the participants json

participants_json.participant_id.description    = 'Subject identifier';
participants_json.age.description               = 'age of each subject';
participants_json.age.units                     = 'months';
participants_json.sex.description               = 'gender of each subject';
participants_json.sex.levels                    = {'f: female', 'm: male' };

filename                                        = [bidsroot filesep 'participants.json'];

write_json(filename, participants_json);


%% Add the events json

events_json.onset.description                   = 'Onset of the event';
events_json.onset.units                         = 'seconds';
events_json.duration.description                = 'Duration of the event';
events_json.duration.units                      = 'seconds';
events_json.begsample.description               = 'sample from start of recording where the event begins';
events_json.begsample.units                     = 'sample number';
events_json.endsample.description               = 'sample from start of recording where the event ends';
events_json.endsample.units                     = 'sample number';
events_json.offset.description                  = 'offset from onset till start of the trial';
events_json.offset.units                        = 'sample number';
events_json.experiment_block.description        = 'Block of the experiment';
events_json.experiment_block.levels             = {'1: theta flicker and display relevant cartoon', '2: display distraction cartoon', '3: display distraction math problems'};
events_json.flicker.description                 = 'presentation pre-stimulus flicker at theta or random frequencies';
events_json.flicker.levels                      = {'theta: pre-stimulis flicker at 5 Hz', 'random: pre-stimulus flicker at a random frequency', 'n/a: no pre-stimulus flicker is shown in this block of the experiment'};
events_json.display.description                 = 'type of cartoon or math problem that is shown to the participant';
events_json.display.levels                      = {'1-20: one of the relevant cartoons', '221-226: one of the distraction cartoons', '60: a math problem'};

filename                                        = [bidsroot filesep 'task-' cfg.TaskName '_events.json'];

write_json(filename, events_json);

%% Add the matlab code used to generate BIDS to a subfolder

destination                                     = [bidsroot filesep 'code'];
this_script                                     = [mfilename('fullpath') '.m'];

mkdir(destination);
copyfile(this_script, destination);

%% Copy the labnote text files

% loop over the subjects
for ii = 1:length(sub)
  
  source = [sourcedata '\subject_' sub{ii} '\*.txt'];
  % The labnotes are not there for every participant, first test if it exists
  if isempty(dir(source))
    % do nothing
  else
    source_file = [sourcedata '\subject_' sub{ii} filesep dir(source).name];
    destination = [bidsroot '\sub-' sub{ii}];
    copyfile(source_file, destination);
  end
end

% Then make sure these are excluded from the BIDS validator test

% we want to exlude all .txt files from the validator, and all scans tsv
% files

towrite_txt = ['**/*.txt'];
towrite_scans = ['**/*_scans.tsv'];
destination = [bidsroot filesep '.bidsignore'];
fileID = fopen(destination,'w');
fprintf(fileID,'%s', towrite_txt);
fprintf(fileID, '\n%s', towrite_scans);
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
json = sort_fields(json);
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