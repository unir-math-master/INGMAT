function [dz] = sistema_ecuaciones(t,z)
    %x = z(2);
    %y = z(3); 
    %dz = [3*x + 2*y - (2*t.^2+1)*exp(2*t); 4*x + y + (t.^2+2*t-4)*exp(2*t)];


    dz(1) = z(2);
    dz(2) = z(3);
    dz(3) = 2*z(1)-z(2)-2*cos(t);
    dz = dz(:);
end