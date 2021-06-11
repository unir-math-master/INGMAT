function  dibuja_tierra()
%Kdibuja_tierra: añade un circulo de radio 1 representando la tierra a nuestro gráfico 

  t=0:0.01:2*pi;
  
  hold on
  plot(sin(t),cos(t));
  hold off
  
end


