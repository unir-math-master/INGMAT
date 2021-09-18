function [du] = PVI_1(x,u)
    du = [u(2) ; (-2./x).*u(2) + (2./x.^2).*u(1) + sin(log(x))./x.^2];
end

