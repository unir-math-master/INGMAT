function [dy] = funcion1(x,y)
    %solucion exacta: y(t) = exp((1/4)*((1/2)-t).^2)
    dy = (1-2*x)*y;
end