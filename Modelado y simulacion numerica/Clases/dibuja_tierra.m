function  dibuja_tierra()
%Kdibuja_tierra: a�ade un circulo de radio 1 representando la tierra a nuestro gr�fico 

  t=0:0.01:2*pi;
  
  hold on
  plot(sin(t),cos(t));
  hold off
  
end


