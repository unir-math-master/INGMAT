function [dx] = sistema(x,y)
    dy(1) = y(2);
    dy(2) = y(3);
    dy(3) = 2*y(1)-y(2)-2*cos(x);
    dy = dy(:);
end