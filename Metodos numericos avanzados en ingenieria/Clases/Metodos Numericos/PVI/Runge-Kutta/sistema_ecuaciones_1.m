function [dz] = funcion1(t,z)
    x = z(1);
    y = z(2);
    dz = [(-2/t)*x;];
end