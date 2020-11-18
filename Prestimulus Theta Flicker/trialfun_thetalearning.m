function trl = trialfun_thetalearning(cfg)

% Read relevant info
event = ft_read_event(cfg.dataset);

% Initiate the output struct
trl = [];
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
            begsample = event(ii).sample; % Start sample number of the event
            endsample = begsample+1; % I don't know the end, ask rocio
            offset = 0;            
            experiment_phase = 1;
            if strcmp(event(ii).value, 'S100')
                theta = 100;
            else
                theta = 200;
            end            
            display = sum(str2double(regexp(event(ii+1).value,'\d+','match')));
            trl(counttrl, :) = [begsample endsample offset experiment_phase theta display];
         elseif strcmp(event(ii).value, 'S221') || strcmp(event(ii).value, 'S222') || strcmp(event(ii).value, 'S223') ||...
                 strcmp(event(ii).value, 'S224') || strcmp(event(ii).value, 'S225') || strcmp(event(ii).value, 'S226')
             % The trials belongs to phase II
             counttrl = counttrl+1;
             begsample = event(ii).sample;
             endsample = begsample+1;
             offset = 0;             
             experiment_phase = 2;
             theta  = NaN; 
             display = sum(str2double(regexp(event(ii).value,'\d+','match')));
             trl(counttrl, :) = [begsample endsample offset experiment_phase theta display];
         elseif strcmp(event(ii).value, 'S 60')
             % The event belongs to phase III
             counttrl = counttrl+1;
             begsample = event(ii).sample;
             endsample = begsample+1;
             offset = 0;          
             experiment_phase = 3;
             theta  = NaN; 
             display = sum(str2double(regexp(event(ii).value,'\d+','match')));
             trl(counttrl, :) = [begsample endsample offset experiment_phase theta display];
        end
    end
end