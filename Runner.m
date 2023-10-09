
ex = ["win", "loss", "tie"];

% text = "[";
%     for looper = 1:1:length(ex)-1
%         text = text + ex(looper)+", ";
%     end
%     text = text + ex(length(ex))+"]: Cardinality: "+ length(ex); 
%     disp(text);
%     disp("Possible events: "+ 2^length(ex));
Testdrive(ex)

ex = [1,2,3,4,5,6,7];
Testdrive(ex)
disp("Events for each cardinality")
total = 0;
for card = 0:1:length(ex)
    disp("|"+card+"|: "+ CnR(length(ex), card));
    total = total + CnR(length(ex), card);
end
disp(total)