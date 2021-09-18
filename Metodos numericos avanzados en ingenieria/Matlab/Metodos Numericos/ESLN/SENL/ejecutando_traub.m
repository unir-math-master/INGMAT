clear
clc

%[sol,iter,incr1,incr2,ACOC] = Newton(f,df,x0,tol,maxiter)
[sol,iter,incr1,incr2,ACOC] = Traub('funcion2', vpa(1), 1e-100, 50)