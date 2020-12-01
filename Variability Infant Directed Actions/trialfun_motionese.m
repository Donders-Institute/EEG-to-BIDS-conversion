function trl = trialfun_motionese(cfg)

% Read relevant info
event = ft_read_event(cfg.dataset);
hdr   = ft_read_header(cfg.dataset);

% Initiate the output struct
counttrial = 0;
blck = 1;

%load(['Additional_Info' filesep 'EEG_Trigger' filesep 'later_coded_from_stimuli' filesep 'stim_videos_msec_info_actiongoals.mat'])
%exp_video_ends            = stim_videos_msec_info_actiongoals(:,9);
%exp_video_starts          = stim_videos_msec_info_actiongoals(:,5);

% Now let's loop over all events
for ii = 1:size(event,2)
    % First we test if it is an event of interest
    if strcmp(event(ii).type, cfg.trialdef.eventtype)
            % Then it is a stimulus of interest
        
            % Is it a new trial?
            if strcmp(event(ii).value, 'S 95')
                    if ii == size(event,2)
                    % somehow the last trigger is a fixation cross,we ignore it
                    else
                        % It is a new fixation cross trial
                        counttrial = counttrial + 1;        
                        begsample(counttrial, :) = event(ii).sample; % Start sample number of the event              
                        endsample(counttrial, :) = event(ii+1).sample-1;  
                        offset(counttrial, :) = 0;
                        block(counttrial, : ) = blck;
                        stimulus(counttrial, : ) = {'fixation cross'};
                        action_type(counttrial, : ) = {'n/a'};
                        condition(counttrial, :) = {'n/a'};                                     
                    end
            
            elseif sum(str2double(regexp(event(ii).value,'\d+','match')))>100 && sum(str2double(regexp(event(ii).value,'\d+','match')))<120
                    % It's an intro video
                    counttrial = counttrial + 1;           
                    % Here we can test whether it is a new block
                    if ii>3
                        previous = sum(str2double(regexp(event(ii-2).value,'\d+','match')));
                        if previous>80 && previous<90
                            % the previous video was a peek-a-boo, this is a
                            % new block
                            blck = blck+1;
                            % the previous fixation cross is also a new
                            % block
                            block(counttrial-1, :) = blck;
                        end
                    end
                    begsample(counttrial, :) = event(ii).sample; % Start sample number of the event              
                    endsample(counttrial, :) = event(ii+1).sample-1;  
                    offset(counttrial, :) = 0;
                    block(counttrial, : ) = blck;
                    trial_type(counttrial, : ) = {'intro video'};
                    action_type(counttrial, : ) = {'n/a'};
                    condition(counttrial, :) = {'n/a'};
                    variability(counttrial, :) = {'n/a'};  
                
            elseif sum(str2double(regexp(event(ii).value,'\d+','match')))>200 && sum(str2double(regexp(event(ii).value,'\d+','match')))<220
                    % It's an experimental video
                    counttrial = counttrial + 1;
                    % Let's find start, end, offset, and block
                    begsample(counttrial, :) = event(ii).sample; % Start sample number of the event  
                    duration_experiment = round(32 * hdr.Fs);              
                    endsample(counttrial, :) = begsample(counttrial, :)+duration_experiment; % ask correct durations to Marlene
                    offset(counttrial, :) = 0;
                    block(counttrial, : ) = blck;
                    trial_type(counttrial, : ) = {'experimental video'};
                
                    % Then find the type
                    type = sum(str2double(regexp(event(ii).value,'\d+','match')))-200;
                    if type >= 1 && type <= 6
                        action_type(counttrial, : ) = {'balls'};
                    elseif type >= 7 && type <= 12
                        action_type(counttrial, : ) = {'cups'};
                    elseif type >= 13 && type <= 18
                        action_type(counttrial, : ) = {'rings'};
                    end 
                
                    % Then find the condition
                    cond = sum(str2double(regexp(event(ii+1).value,'\d+','match')));
                    if cond == 1
                        condition(counttrial, : ) = {'normal'};
                        variability(counttrial, : ) = {'n/a'};
                    elseif cond == 2
                        condition(counttrial, : ) = {'high'};
                        variability(counttrial, : ) = {'n/a'};
                    else 
                        condition(counttrial, : ) = {'variable'};
                        temp = num2str(cond-30);
                        % type of variable condition
                        variability(counttrial, : ) = { temp };                    
                    end               
            
            elseif sum(str2double(regexp(event(ii).value,'\d+','match')))>80 && sum(str2double(regexp(event(ii).value,'\d+','match')))<90
                    % It is a peek-a-boo
                    counttrial = counttrial + 1; 
                    
                    % Let's test whether this is a new block
                    previous = sum(str2double(regexp(event(ii-2).value,'\d+','match')));
                    before_previous = sum(str2double(regexp(event(ii-4).value,'\d+','match')));
                    if previous>80 && previous<90 
                        if before_previous == 31 || before_previous == 32 || before_previous == 33 ||...
                                before_previous == 34 || before_previous == 1 || before_previous == 2
                            % Then the last block of only peek-a-boo's started
                            blck = blck+1;
                            % the previous fixation cross is also a new block
                            block(counttrial-1, :) = blck;
                        end
                    end
                    
                    begsample(counttrial, :) = event(ii).sample; % Start sample number of the event
                    videosec = sum(str2double(regexp(event(ii).value,'\d+','match'))) - 80;
                    videotime = (videosec-1)+6.375;
                    videosample = round(videotime * hdr.Fs);
                    endsample(counttrial, :) = begsample(counttrial, :) + videosample;  
                    offset(counttrial, :) = 0;
                    block(counttrial, : ) = blck;
                    trial_type(counttrial, : ) = {'peek-a-boo'};
                    action_type(counttrial, : ) = {num2str(videosec)};
                    condition(counttrial, :) = {'n/a'};
                    variability(counttrial, :) = {'n/a'};            
            
            end 
    end
end


trl = table(begsample, endsample, offset, block, trial_type, action_type, condition, variability);