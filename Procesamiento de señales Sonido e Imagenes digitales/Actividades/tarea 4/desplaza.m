function [y] = desplaza(x,n)
    %esta funcion calcula h[n-m]
    %   x es equivalente a la funcion h buscada
    %   n es equivalente a la posicion del vector
    
    y = [zeros(1, n) x(1:end-n)];
end

