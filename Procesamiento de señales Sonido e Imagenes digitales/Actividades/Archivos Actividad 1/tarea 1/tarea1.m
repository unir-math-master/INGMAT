%representación de señales discretas.
%Jorge A. Balsells Orellana.

clear
clc

%funciones parciales
x0 = 0;
x1 = 1;
x2 = -1;
x3 = 2;
x4 = 3;
x5 = 0;

%rango de n y funcion x completa
n = [-4:4]
x = x0.*(n<=-3)+x1.*(n==-2)+x2.*(n==-1)+x3.*(n==0)+x4.*(n==1)+x5.*(n>=2);

stem(n,x);

grid on

axis([-4 4 -2 4]);
title('Representación de señales discretas');
xlabel("n")
ylabel("x")