function [a, b] = vienasdu(x)

    if nargout == 1
        a = cos(x);
    else
        a = sin(x);
        b = cos(x);
    end

end
