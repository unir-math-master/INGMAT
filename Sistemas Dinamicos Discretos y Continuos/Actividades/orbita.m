function [x, d, iter]=orbita(f, x0, tol, maxiter)
%[x, d, iter]=orbita(f, x0, t, maxiter)
iter=1;
d=1;
x=x0;
while iter<maxiter && d(end)>tol
    xk=feval(f,x(end));
    d=[d abs(xk-x(end))];
    x=[x xk];
    iter=iter+1;
end
%plot(1:iter,x,'o-','linewidth',1.5), grid on
end
