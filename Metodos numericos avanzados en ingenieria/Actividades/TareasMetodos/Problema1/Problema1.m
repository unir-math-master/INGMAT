t = 0:0.1:3;
y = t;
[T,Y] = meshgrid(t,y);
yp = cos(2*T) + sin(3*T);
quiver(T,Y,ones(size(T)),yp)
hold on
solex = 1/2*sin(2*t) - 1/3*cos(3*t) + 4/3; 
plot(t,solex,'r')
