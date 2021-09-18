function [x, y] = Euler_hacia_atras(f, a, b, N, y0, tol, maxiter)
    h = (b-a)/N;
    x = a:h:b;
    x = x(:);
    
    y = zeros(N+1, 1);
    y(1) = y0;
    
    for k=1:N
        yn0 = y(k);
        incre = tol+1;
        iter = 0;
        
        while incre>tol && iter<maxiter
            %La siguiente linea cambia segun la ecuacion que se ingrese
            %yn = yn0 - (yn0-y(k)-h*f)/(1-h*f')
            
            %yn = yn0 - (yn0-y(k)-h*(-10*yn0))/(1+10*h);
            yn = yn0 - (yn0-y(k)-h*(1-2*x(k))*yn0)/(1-h*(1-2*x(k)));
            
            incre = abs(yn - yn0);
            yn0 = yn;
            iter = iter + 1;
        end
    y(k+1) = yn;
end

