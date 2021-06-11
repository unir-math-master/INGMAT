function dydt = kepler_atm(~,zv)
%KEPLER: campo vectorial para el problema de Kepler (un cuerpo de masa cero
%dando vueltas alrededor de un cuerpo de masa positiva) se tiene en cuenta
%la fricción dada por la atmosfera.

mu=1;
radTierra=1;




x  = zv(1); 
y  = zv(2); 
z  = zv(3);
vx = zv(4); 
vy = zv(5); 
vz = zv(6);
     
r= sqrt(x^2+y^2+z^2);

Omega=0.0093;

xvrel=vx + Omega*y;
yvrel=vy - Omega*x;
zvrel=vz;

vr=xvrel^2+yvrel^2+zvrel^2;


h=r-radTierra-71/6378;
C=2.4958e-8;
balistic=1;
r0=0.0003;

densidad= r0 * exp(- h * C);


atm= -densidad * balistic * vr ;


zp(1) = vx;
zp(2) = vy;
zp(3) = vz;
zp(4) = - mu * x/r^3 + atm * xvrel;
zp(5) = - mu * y/r^3 + atm * yvrel;
zp(6) = - mu * z/r^3 + atm * zvrel;



dydt = zp';
end

