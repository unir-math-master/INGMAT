function [x,y] = DisparoLinea(PVI1,PVI2,a,b,N,alfa,beta)
    h = (b-a)/N;
    x = a:h:b;
    
    [x,Y1] = ode45(PVI1,x,[alfa,0]');
    [x,Y2] = ode45(PVI2,x,[0,1]');
    
    C = (beta-Y1(end,1))/Y2(end,1);
    y = Y1(:,1) + C*Y2(:,1);
end

