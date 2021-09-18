function [X,Y,iter,incr] = diferenciasfinitas_nolineal(f,fy,fz,a,b,alfa,beta,N,maxiter,tol)
    % [Y,X,iter,incr]=difnolin('f(x,y,z)','p(x,y,z)','q(x,y,z)',a,b,alfa,beta,n,maxiter,tol)
    
    h = (b-a)/(N+1);
    k = (beta-alfa)/(N+1);
    
    X = a:h:b;
    x = X(2:N+1);
    
    Y = alfa:k:beta;
    y = Y(2:N+1);
    
    incr = tol+1;
    iter=0;
    
    while incr>tol && iter<maxiter
        z = (Y(3:N+2) - Y(1:N))/(2*h);
        
        fe = feval(f,x,y,z);
        fye = feval(fy,x,y,z);
        fze = feval(fz,x,y,z);
        
        a = 2+h^2*fye;
        b = -1+h/2*fze(1:N-1);
        c = -1-h/2*fze(2:N);
        d = diff(Y,2)-h^2*fe;
        v = Crout(a,b,c,d);
        y = y + v';
        Y = [alfa y beta];
        
        incr = max(abs(v));
        iter = iter+1;
    end
end

function t=f(x,y,z)
    t=(1/8)*(32+2*x.^3-y.*z);
end

function t=fy(x,y,z)
    t=-(1/8)*z;
end

function t=fz(x,y,z)
    t=-(1/8)*y;
end

