function [] = Testdrive(x)
    text = "[";
    for looper = 1:1:length(x)-1
        text = text + x(looper)+", ";
    end
    text = text + x(length(x))+"]: Cardinality: "+ length(x); 
    disp(text);
    disp(2^length(x)+" possible events");
end