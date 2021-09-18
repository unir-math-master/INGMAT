function [sol,iter,i1,i2,ACOC] = Sis_NEWTON_(fun,x0,tol,maxiter)
iter=0; incr1=tol+1;
[fx0,dfx0]=feval(fun,x0);
incr2=norm(fx0);
I=[]; x0=x0(:);
while iter<maxiter && (incr1+incr2)>tol
    x=x0-dfx0\fx0;
    [fx,dfx]=feval(fun,x);
    incr1=norm(x-x0);
    I=[I,incr1];
    incr2=norm(fx);
    iter=iter+1;
    x0=x; fx0=fx; dfx0=dfx;
end
sol=vpa(x,7);
i1=vpa(incr1,7);
i2=vpa(incr2,7);
ACOC=vpa(log(I(3:end)./I(2:end-1))./log(I(2:end-1)./I(1:end-2)),7);