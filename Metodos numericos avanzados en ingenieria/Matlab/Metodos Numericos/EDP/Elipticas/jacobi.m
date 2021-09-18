function [U,x,y,iter,incre] = jacobi(c1x,c2x,c1y,c2y,f,a,b,nx,c,d,ny,maxiter,tol)
%a b y nx son de x, c d y ny son de y    
    h=(b-a)/nx;
    x=a:h:b
    k=(d-c)/ny;
    y=c:k:d;
    
    c1 = feval(c1x,x);
    c2 = feval(c2x,x);
    cc1= feval(c1y,y);
    cc2= feval(c2y,y);
    
    u0 = (sum(c1+c2)/(nx+1) + sum(cc1+cc2)/(ny+1))/4;%valor promedio de condiciones iniciales para iniciar la matriz
    U = u0.*ones(ny+1,nx+1);
    U(1,:) = c1;
    U(ny+1,:) = c2;
    U(:,1) = cc1;
    U(:,nx+1) = cc2;
    
    lambda = h/k;
    p=lambda^2/(2*(lambda^2+1));
    q=1/(2*(lambda^2+1));
    r=-h^2/(2*(lambda^2+1));
    
    iter=1;
    incre=tol+1;
    
    V=U;
    while iter<=maxiter && incre>tol
        for j=2:nx
            for i=2:ny
                V(i,j) = p*(U(i+1,j)+U(i-1,j)) + q*(U(i,j+1)+U(i,j-1))+r*feval(f,y(i),x(j));
            end
        end
        incre = max(max(abs(U-V)));
        U=V;
        iter=iter+1;
    end
end

