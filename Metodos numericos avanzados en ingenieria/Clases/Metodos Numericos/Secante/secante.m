function [puntos, solaprox, iter] = disparosecante(funcion, a, b, alfa, beta, N, tol, maxiter)
%Sirve para encontrar los ceros de una funcion de forma iterativa
    h = (b-a)/N;
    x = a:h:b;
    
    t0=0;
    [x,y] = ode45(funcion, x, [alfa, t0]');
    yb0 = y(end, 1);
    %ypb0 = y(end, 2);
    
    t1 = (beta - alfa)/(b-a); %t1=1;
    [x, y] = ode45(funcion, x, [alfa, t1]');
    yb1 = y(end,1);
    %ypb1 = y(end, 2);
    
    iter = 1;
    incre = tol+1;
    
    while incre>tol && iter<maxiter
        t = t1 - (t1-t0)*(yb1-beta)/(yb1-yb0);
        [x, y] = ode45(funcion, x, [alfa, t]');
        incre = abs(y(end, 1) - beta);
        
        iter = iter+1;
        t0 = t1;
        t1 = t;
        yb0=yb1;
        yb1=y(end,1);
    end
    
    if incre<tol
        puntos = x;
        solaprox = y;
    else
        disp('se necesitan mas iteraciones')
    end
end

