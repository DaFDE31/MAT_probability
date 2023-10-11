
ex = ["heads", "loss", "tie"];
exnum = zeros(1,length(ex));
for filler = 1:1:length(ex)
    exnum(filler) = filler;
end
disp(exnum)
% text = "[";
%     for looper = 1:1:length(ex)-1
%         text = text + ex(looper)+", ";
%     end
%     text = text + ex(length(ex))+"]: Cardinality: "+ length(ex); 
%     disp(text);
%     disp("Possible events: "+ 2^length(ex));
Testdrive(ex)
%ex = [1,2,3,4,5,6];
Testdrive(ex)
disp("Number of events for each cardinality")
total = 0;
for card = 0:1:length(ex)
    disp("|"+card+"|: "+ CnR(length(ex), card));
    total = total + CnR(length(ex), card);
end
disp(total)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%W = [1,2,3];

% Generate all possible events
all_events = {};
for k = 0:length(exnum)
    combinations = nchoosek(exnum, k);
    for i = 1:size(combinations, 1)
        all_events{end+1} = combinations(i, :);
    end
end

% events by cardinality and display
grouped_events = cell(1, length(exnum) + 1);
for i = 1:length(all_events)
    len = sum(all_events{i} ~= 0); % counting non-zero elements as MATLAB fills with zeros
    grouped_events{len+1}{end+1} = all_events{i}(1:len); % +1 because MATLAB indexing starts at 1
end

for i = 1:length(grouped_events)
    %if ~isempty(grouped_events{i})
        fprintf('Events with %d outcomes:\n', i-1);
        for j = 1:length(grouped_events{i})
            disp(ex(grouped_events{i}{j}));
        end
    %end
end
%disp(grouped_events{2}{6})