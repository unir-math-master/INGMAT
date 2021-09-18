% CALCULO JACOBIAN

syms x y z 
fx = [
         3*x+(cos(z*y))-0.5;...
         x^2-81*(y+0.1)^2+sin(z)+1.06;...
         exp(-x*y)+20*z-((3-(10*pi))/3)
     ];
solex = jacobian(fx,[x y z])