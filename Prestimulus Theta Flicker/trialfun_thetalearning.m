function trl = trialfun_thetalearning(cfg)

% Read relevant info
event = ft_read_event(cfg.dataset);

% Initiate the output struct
counttrl = 0;

% Now let's loop over all events
for ii = 1:size(event,2)
    % First we test if it is an event of interest
    if strcmp(event(ii).type, cfg.trialdef.eventtype)
        % Now, we test if it belongs to phase I of the experiment
        if strcmp(event(ii).value, 'S100') || strcmp(event(ii).value, 'S200')
            % We add a number to the trial count
            counttrl = counttrl+1;
            % Then extract relevant information
            begsample(counttrl, :) = event(ii).sample; % Start sample number of the event
            endsample(counttrl, :) = begsample(counttrl, :)+1; % I don't know the end, ask rocio
            offset(counttrl, :) = 0;            
            experiment_block(counttrl, :) = 1;
            if strcmp(event(ii).value, 'S100')
                flicker(counttrl, :) = {'theta'};
            else
                flicker(counttrl, :) = {'random'};
            end            
            display(counttrl, :) = sum(str2double(regexp(event(ii+1).value,'\d+','match')));            
         elseif strcmp(event(ii).value, 'S221') || strcmp(event(ii).value, 'S222') || strcmp(event(ii).value, 'S223') ||...
                 strcmp(event(ii).value, 'S224') || strcmp(event(ii).value, 'S225') || strcmp(event(ii).value, 'S226')
             % The trials belongs to phase II
             counttrl = counttrl+1;
             begsample(counttrl, :) = event(ii).sample;
             endsample(counttrl, :) = begsample(counttrl, :)+1;
             offset(counttrl, :) = 0;             
             experiment_block(counttrl, :) = 2;
             flicker(counttrl, :)  = {'n/a'}; 
             display(counttrl, :) = sum(str2double(regexp(event(ii).value,'\d+','match')));             
         elseif strcmp(event(ii).value, 'S 60')
             % The event belongs to phase III
             counttrl = counttrl+1;
             begsample(counttrl, :) = event(ii).sample;
             endsample(counttrl, :) = begsample(counttrl, :)+1;
             offset(counttrl, :) = 0;          
             experiment_block(counttrl, :) = 3;
             flicker(counttrl, :)  = {'n/a'}; 
             display(counttrl, :) = sum(str2double(regexp(event(ii).value,'\d+','match')));          
        end
    end
end
trl = table(begsample, endsample, offset, experiment_block, flicker, display);