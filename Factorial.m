function [res] = Factorial(value)
    if (value > 1)
        res = value*Factorial(value-1);
    else
        res = 1;
    end
end

