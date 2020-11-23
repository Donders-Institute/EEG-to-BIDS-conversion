function trl = trialfun_motionese(cfg)

% Read relevant info
event = ft_read_event(cfg.dataset);
hdr   = ft_read_header(cfg.dataset);

% Initiate the output struct
counttrial = 0;
blck = 1;

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
                % Yes, it is a new trial
                counttrial = counttrial + 1;        

                % Then we test whether the trial is a video phase or peek-a-boo
                type = sum(str2double(regexp(event(ii+1).value,'\d+','match')));
                if type>100 && type<120
                    % Then we are dealing with a display of intro and exp video
            
                    % Here we can test whether it is a new block
                    if ii>2
                        previous = sum(str2double(regexp(event(ii-1).value,'\d+','match')));
                        if previous>80 && previous<90
                            % the previous video was a peek-a-boo, this is a
                            % new block
                            blck = blck+1;
                        end
                    end
                
                    % Let's find start, end, offset, and block
                    begsample(counttrial, :) = event(ii).sample; % Start sample number of the event
                    if counttrial>1
                        endsample(counttrial-1, :) = begsample(counttrial, :)-1; % ask correct durations to Marlene
                    end
                    offset(counttrial, :) = 0;
                    block(counttrial, : ) = blck;
                    trial_type(counttrial, : ) = {'intro and experimental'};
                
                    % Then find the type
                    if (type-100) >= 1 && (type-100) <= 6
                        action_type(counttrial, : ) = {'balls'};
                    elseif (type-100) >= 7 && (type-100) <= 12
                        action_type(counttrial, : ) = {'cups'};
                    elseif (type-100) >= 13 && (type-100) <= 18
                        action_type(counttrial, : ) = {'rings'};
                    end 
                
                    % Then find the condition
                    cond = sum(str2double(regexp(event(ii+3).value,'\d+','match')));
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
                
            
                elseif type>80 && type<90
                    % It is a peek-a-boo
            
                    % Let's test whether this is a new block
                    previous = sum(str2double(regexp(event(ii-1).value,'\d+','match')));
                    before_previous = sum(str2double(regexp(event(ii-3).value,'\d+','match')));
                    if previous>80 && previous<90 
                        if before_previous == 31 || before_previous == 32 || before_previous == 33 ||...
                                before_previous == 34 || before_previous == 1 || before_previous == 2
                                % Then the last block of only peek-a-boo's started
                                blck = blck+1; 
                        end
                    end
                    begsample(counttrial, :) = event(ii).sample; % Start sample number of the event
                    if counttrial>1
                        endsample(counttrial-1, :) = begsample(counttrial, :)-1; % ask correct durations to Marlene
                    end
                    offset(counttrial, :) = 0;
                    block(counttrial, : ) = blck;
                    trial_type(counttrial, : ) = {'peek-a-boo'};
                    time_vid = [num2str(sum(str2double(regexp(event(ii+1).value,'\d+','match'))) - 80) ' seconds' ];
                    action_type(counttrial, : ) = {time_vid};
                    condition(counttrial, : ) = {'n/a'};
                    variability(counttrial, : ) = {'n/a'};
                end 
            end
        end
    end
end

% we did not yet assign an end to the last trial
endsample(counttrial, :) = hdr.nSamples; % this is probably not correct, ask Marlene

trl = table(begsample, endsample, offset, block, trial_type, action_type, condition, variability);