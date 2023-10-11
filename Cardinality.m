function [] = Cardinality(x)
    text = "[";
    for looper = 1:1:length(x)-1
        text = text + x(looper)+", ";
    end
    text = text + x(length(x))+"]: Cardinality: "+ length(x); 
    disp(text);
    disp(2^length(x)+" possible events");
    disp(" ")
    disp("Number of events for each cardinality")
    for card = 0:1:length(x)
        disp("|"+card+"|: "+ CnR(length(x), card));
    end
end