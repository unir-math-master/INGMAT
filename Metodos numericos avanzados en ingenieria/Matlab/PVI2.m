function [dw] = PVI2(t, w)
    u1 = w(1);
    u2 = w(2);
    v1 = w(3);
    v2 = w(4);
    dw = [u2; 4*cos(t)-8*t*sin(t)-u1+2*v1-10*t; v2; 5*t-2*(t^2)*cos(t)-t*v2+u1];
end