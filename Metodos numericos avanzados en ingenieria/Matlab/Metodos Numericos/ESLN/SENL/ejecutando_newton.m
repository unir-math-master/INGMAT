clear
clc

%[sol,iter,incr1,incr2,ACOC] = Newton(f,df,x0,tol,maxiter)
[sol,iter,incr1,incr2,ACOC] = Newton(@(x) (sin(x)).^2-x.^2+1, @(x) 2.*sin(x).*cos(x), 1, 1e-10, 50)