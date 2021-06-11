clear
clc

a = 50;
u = [0:0.01:1];

v = 4./((a.^2)*(1 + 4.*u.^2).^2)

plot(u, v)
xlabel('u')
ylabel('k(p)')