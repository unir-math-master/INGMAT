clear
clc 

a = 50;
b = 50;

x0 = 0;
y0 = 0;
z0 = 0;

u=linspace(0,2*pi,100);
v=linspace(0,2*pi,100);
[U,V]=meshgrid(u,v); 

x = x0 + a*U.*cos(V);
y = y0 + a*U.*sin(V);
z = z0 + b*U.^2;

s = surf(x,y,z);
grid on;
s.EdgeColor = 'none';
colormap autumn;