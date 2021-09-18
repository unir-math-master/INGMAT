function [dy] = sistema(x,y)
    dy(1) = y(2);
    dy(2) = (1/8)*(32+(2*x.^3)-(y(1).*y(2)));
    dy = dy(:);
end

