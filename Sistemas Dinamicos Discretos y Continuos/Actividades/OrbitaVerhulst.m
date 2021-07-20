function OrbitaVerhulst(x0,rangox0,rangoM,tol,maxiter)

   % Representamos el diagrama de bifurcación
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [X,M]=meshgrid(rangox0,rangoM);
    iter=1;
    while iter<500
        X=X.^2-M.*X+M;
        iter=iter+1;
    end

    plot(rangoM,X,'k.');
    grid on;
    xlabel('\mu');
    ylabel('x_k');
    title('Diagrama de Bifurcación f(x)=x^2-\mux+\mu');

% Seleccionamos el punto con el comando ginput y tomamos solo
% la primera coordenada del punto
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
    [mu,~] = ginput(1);

% Sustituimos en la familia de funciones el parámetro por el
%valor seleccionado
    f=@(x) x.^2-x.*mu+mu;

% Representamos el diagrama de Verhulst asociado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
    figure('Name','Diagrama de Verhults');
    y1=rangox0; 
    y2=feval(f,rangox0);
    plot(rangox0,y1,'k',rangox0,y2,'k','Linewidth',1.5);
    grid on

    [xk, d, iter]=orbita(f,x0,tol,maxiter);

    xplot=repmat(xk,2,1); 
    xplot=xplot(:);
    yplot=xplot(2:end); 
    xplot(end)=[];
    
    hold on;
    plot(xplot, yplot, 'r', 'Linewidth', 1.5);
    axis([min(rangox0) max(rangox0) min(rangox0) max(rangox0)]);
    xlabel('x');
    ylabel('f(x)');
    title(['Diagrama de Verhults para \mu= ',num2str(round(mu,2)),' y x_0= ',num2str(x0)])
end
