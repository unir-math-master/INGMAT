%convolución de señales.
%Jorge A. Balsells Orellana.

clear
clc

%incremento de n
inct = 1;
n = [0:inct:10];

%señal original x[n]
x0 = 0;
x1 = n+1;
x = x0.*(n<0) + x1.*((n>=0)&(n<=4)) + x0.*(n>4)

%señal original h[n]
h0 = 0;
h1 = 2;
h = h0.*(n<0) + h1.*((n>=0)&(n<=2)) + h0.*(n>2)

%convolucion con funcion Conv de matlab
z = conv(x,h);
nz = [0:length(z)-1];

%Descomentar para graficar señales originales
%Al descomentar esta seccion, comentar las demas secciones de subplots

%--------------------------------------------------------------------------
subplot(2,1,1);
    hold on
    stem(n, x);
    axis([0 10 0 5.5]);
    title('Señal x[n]');
    xlabel("n")
    ylabel("x[n]")
    grid on
    hold off

subplot(2,1,2);
    hold on
    stem(n, h);
    axis([0 10 0 2.5]);
    title('Señal h[n]');
    xlabel("n")
    ylabel("x[n]")
    grid on
    hold off
%--------------------------------------------------------------------------


%{
%Descomentar para graficar convoluciones
%Al descomentar esta seccion, comentar las secciones de subplots arriba
%-------------------------------------------------------------------------

%retornos de funcion desplaza de h[n-m]
y0 = x(0+1).*desplaza(h,0);
y1 = x(1+1).*desplaza(h,1);
y2 = x(2+1).*desplaza(h,2);
y3 = x(3+1).*desplaza(h,3);
y4 = x(4+1).*desplaza(h,4);
y5 = x(5+1).*desplaza(h,5);

%convolucion original
subplot(4,2,[1 2]);
    hold on
    stem(nz, z);
    axis([0 10 0 25]);
    title('Convolucion z[n] con comando Conv');
    xlabel("n")
    ylabel("z[n]")
    grid on
    hold off

%primera suma parcial
subplot(4,2,3);
    hold on
    stem(n, y0);
    title('Y[0]. Sumas parciales');
    legend('ym[n]');
    xlabel("n")
    ylabel("y[n]")
    grid on
    hold off
   
%segunda suma parcial
subplot(4,2,4);
    hold on
    stem(n, y1);
    stem(n, y0 + y1);
    title('Y[1]. Sumas parciales');
    legend('Ym[n]', 'suma con Ym[n] anteriores');
    xlabel("n")
    ylabel("y[n]")
    grid on
    hold off
    
%tercera suma parcial
subplot(4,2,5);
    hold on
    stem(n, y2);
    stem(n, y0 + y1 + y2);
    title('Y[2]. Sumas parciales');
    legend('Ym[n]', 'suma con Ym[n] anteriores');
    xlabel("n")
    ylabel("y[n]")
    grid on
    hold off
    
%cuarta suma parcial
subplot(4,2,6);
    hold on
    stem(n, y3);
    stem(n, y0 + y1 + y2 + y3);
    title('Y[3]. Sumas parciales');
    legend('Ym[n]', 'suma con Ym[n] anteriores');
    xlabel("n")
    ylabel("y[n]")
    grid on
    hold off
    
%quinta suma parcial
subplot(4,2,7);
    hold on
    stem(n, y4);
    stem(n, y0 + y1 + y2 + y3 + y4);
    title('Y[4]. Sumas parciales');
    legend('Ym[n]', 'suma con Ym[n] anteriores');
    xlabel("n")
    ylabel("y[n]")
    grid on
    hold off
    
%sexta suma parcial (ceros)
subplot(4,2,8);
    hold on
    stem(n, y5);
    stem(n, y0 + y1 + y2 + y3 + y4 + y5);
    title('Y[5]. Sumas parciales');
    legend('Ym[n]', 'suma con Ym[n] anteriores');
    xlabel("n")
    ylabel("y[n]")
    grid on
    hold off
%--------------------------------------------------------------------------
%}