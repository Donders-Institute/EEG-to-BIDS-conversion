function trl = trialfun_motionese(cfg)

% Read relevant info
event = ft_read_event(cfg.dataset);

% Initiate the output struct
counttrial = 0;
block = 1;

% Now let's loop over all events
for ii = 1:size(event,2)
    % First we test if it is an event of interest
    if strcmp(event(ii).type, cfg.trialdef.eventtype)
        % Then it is a stimulus of interest
        
        % Is it a new trial?
        if strcmp(event(ii).value, 'S 95')
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
                        block = block+1;
                    end
                end
                
                % Let's find start, end, offset, and block
                begsample(counttrial, :) = event(ii).sample; % Start sample number of the event
                if counttrial>1
                    endsample(counttrial-1, :) = begsample(counttrial, :)-1; % ask correct durations to Marlene
                end
                offset(counttrial, :) = 0;
                block(counttrial, : ) = block;
                
                % Then find the type
                if (type-100) >= 1 && (type-100) <= 6
                    action_type(countrial, : ) = {'balls'};
                elseif (type-100) >= 7 && (type-100) <= 12
                    action_type(counttrial, : ) = {'cups'};
                elseif (type-100) >= 13 && (type-100) <= 18
                    action_type(counttrial, : ) = {'rings'};
                end 
                
                % Then find the condition
                cond = sum(str2double(regexp(event(ii+3).value,'\d+','match')));
                if cond == 1
                    condition(counttrial, : ) = {'normal'};
                elseif cond == 2
                    condition(counttrial, : ) = {'high'};
                else 
                    condition(counttrial, : ) = {'variable'};
                    % and type of variable condition
                end
                
            
              elseif type>80 && type<90
            % It is a peek-a-boo
                end
            
        end
    end
end
trl = table(begsample, endsample, offset, experiment_block, flicker, display);