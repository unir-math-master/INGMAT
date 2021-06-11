clear
clc

a = 70;
b = 50;

u = [0:0.01:1];

v = (4*(b^2).*(u.^2))./((1+4*u.^2)*(a^2).*(u.^2).*((a^2)+4.*(b^2).*(u.^2)))

plot(u, v)
xlabel('u')
ylabel('k(p)')