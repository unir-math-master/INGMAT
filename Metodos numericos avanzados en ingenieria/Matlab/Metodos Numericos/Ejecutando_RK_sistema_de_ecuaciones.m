clear
clc

a = 0;
b = 2*pi;
intervalo = 40;

[x1, y1] = RungeKutta('sistema_ecuaciones', a, b, intervalo, [1, 2, 3]);
[x2, y2] = RungeKutta('sistema_ecuaciones', a, b, 2*intervalo, [1, 2, 3]);

%[x, y] = Adams_Bashforth('sistema_ecuaciones', a, b, intervalo, [1, 2, 3]);

%solex1 = exp(5.*x1)./3 - exp(-x1)./3 + exp(2.*x1);
%solex2 = exp(5.*x1)./3 + 2.*exp(-x1)./3 + (x1.^2).*exp(2.*x1);

%Estimacion de orden sin conocer la solucion exacta
n=1:6;
N=20*2.^n;
[x, y1rk] = RungeKutta('sistema_ecuaciones', a, b, N(1), [1, 2, 3]);
for j=1:n(end)
    [x, y2rk] = RungeKutta('sistema_ecuaciones', a, b, N(j), [1, 2, 3]);
    
    if j>1
        erk(j-1) = norm(y1rk(:,1)-y2rk(1:2:end,1));
    end
    
    y1rk = y2rk;
end
ork = log2(erk(1:end-1)./erk(2:end))
%fin de estimacion


%subplot(2,1,1)
%hold on
plot(x1, y1(:,1));
%plot(x1, y1(:,2));
%plot(x1, solex1);
%plot(x1, solex2);

%subplot(2,1,2)'
%hold on
%plot(x2, y2(:,1));
%plot(x2, y2(:,2));
%plot(x1, solex1);
%plot(x1, solex2);
