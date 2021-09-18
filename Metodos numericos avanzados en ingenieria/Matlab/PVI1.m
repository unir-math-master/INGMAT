function [dw] = PVI1(x, w)
    y1 = w(1);
    y2 = w(2);
    dw = [y2 ; 2*y2 - 5*y1];
end