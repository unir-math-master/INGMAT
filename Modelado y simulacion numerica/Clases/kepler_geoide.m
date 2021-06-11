function dydt = kepler_geoide(~,zv)
%KEPLER: campo vectorial para el problema de Kepler (un cuerpo de masa cero
%dando vueltas alrededor de un cuerpo de masa positiva) se tiene en cuenta
%la fricción dada por la atmosfera.

mu=1;
radTierra=1;

%coeficientes geoide:
c0=1;
%c1=0; por la definición del problema es siempre 1, no lo usamos
c2=-1.08e-3;
c3=2.53e-6;


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
zp(4) = -(mu*((c0*radTierra^2*x)/r^3 - c3*((3*radTierra^4*x)/(2*r^5) - (15*radTierra^4*x*z^2)/(2*r^7)) + (3*c2*radTierra^3*x*z)/r^5))/radTierra^2;
zp(5) = -(mu*((c0*radTierra^2*y)/r^3 - c3*((3*radTierra^4*y)/(2*r^5) - (15*radTierra^4*y*z^2)/(2*r^7)) + (3*c2*radTierra^3*y*z)/r^5))/radTierra^2;
zp(6) = (mu*(3*c2*(radTierra^3/(2*r^3) - (3*radTierra^3*z^2)/(2*r^5)) + 4*c3*((2*radTierra^4*z)/(3*r^5) + (5*radTierra*z*(radTierra^3/(2*r^3) - (3*radTierra^3*z^2)/(2*r^5)))/(3*r^2)) - (c0*radTierra^2*z)/r^3))/radTierra^2;


 
                                                                            

 




dydt = zp';
end

