function [xs] = edo_sir(~,x,b,k)
%Sistema de EDO que representa el modelo SIR (Sanos 1, infectados 2,
%recuperados 3)



sp = -b*x(1)*x(2);   
ip = b*x(1)*x(2)-k*x(2);
rp = k*x(2);

xs=[sp;ip;rp];
end


