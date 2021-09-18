clear
clc

a = 0;
b = 3;
intervalo = 128;

[x1, y1] = RungeKutta_1582('sistema_ecuaciones', a, b, intervalo, [1, 1]);
[x2, y2] = RungeKutta_1582('sistema_ecuaciones', a, b, 2*intervalo, [1, 1]);

solex1 = exp(5.*x1)./3 - exp(-x1)./3 + exp(2.*x1);
solex2 = exp(5.*x1)./3 + 2.*exp(-x1)./3 + (x1.^2).*exp(2.*x1);

subplot(2,1,1)
hold on
plot(x1, y1(:,1));
plot(x1, y1(:,2));
%plot(x1, solex1);
%plot(x1, solex2);

subplot(2,1,2)'
hold on
plot(x2, y2(:,1));
plot(x2, y2(:,2));
%plot(x1, solex1);
%plot(x1, solex2);
