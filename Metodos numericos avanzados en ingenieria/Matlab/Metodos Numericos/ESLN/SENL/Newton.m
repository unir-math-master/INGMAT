function [x1,iter,incre1,incre2,ACOC] = Newton(f,df,x0,tol,maxiter)
    iter=0;
    incre1=tol+1;
    incre2=incre1;
    
    while iter<maxiter && incre1>tol && incre2>tol
        
        x1=x0-feval(f,x0)/feval(df,x0);
        %[fx,dfx]=feval(fun,x0); x1=x0-fx/dfx;
        
        incre1=abs(x1-x0);
        incre2=abs(feval(f,x1));
        
        iter=iter+1;
        I(iter)=incre1;
        
        x0=x1;
    end
    
    if iter>= maxiter
        disp("se necesitan mas iteraciones")
    else
        disp("converge")
    end
    
    ACOC = log(I(3:end)./I(2:end-1))./log(I(2:end-1)./I(1:end-2));
end

