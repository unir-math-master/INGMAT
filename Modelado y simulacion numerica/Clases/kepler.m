function dydt = kepler(~,zv)
%KEPLER: campo vectorial para el problema de Kepler (un cuerpo de masa cero
%dando vueltas alrededor de un cuerpo de masa positiva)

mu=1;

x  = zv(1); 
y  = zv(2); 
z  = zv(3);
vx = zv(4); 
vy = zv(5); 
vz = zv(6);
     
r= sqrt(x^2+y^2+z^2);

zp(1) = vx;
zp(2) = vy;
zp(3) = vz;
zp(4) = - mu * x/r^3 ;
zp(5) = - mu * y/r^3 ;
zp(6) = - mu * z/r^3 ;



dydt = zp';
end


