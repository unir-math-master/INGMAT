%Tarea1
clear all
clc
%'x_1[n] a f_s_1=150 muestras/seg'
incr1=1/150;
t0=0:incr1:0.4-incr1;
y0=sin(2*pi*20*t0);
t1=0.4:incr1:0.8-incr1;
y1=sin(2*pi*50*t1);
t2=0.8:incr1:1.2;%-incr1;
y2=sin(2*pi*100*t2);
T1=[t0, t1, t2];
Y1=[y0, y1, y2];
%'x_2[n] a f_s_2=300 muestras/seg'
incr2=1/300;
t4=0:incr2:0.4-incr2;
y4=sin(2*pi*20*t4);
t5=0.4:incr2:0.8-incr2;
y5=sin(2*pi*50*t5);
t6=0.8:incr2:1.2;%-incr2;
y6=sin(2*pi*100*t6);
T2=[t4, t5, t6];
Y2=[y4, y5, y6];
%graficos de salida
f1 = figure('Name','Espectrogramas');
f2 = figure('Name','Gráficas de las señales');
%Gráficos señales
subplot(1,2,1);
plot(T1,Y1)
xlim([-0.05 1.25])
title('x_1[n] a f_s_1=150 muestras/seg')
subplot(1,2,2);
plot(T2,Y2,'r')
xlim([-0.05 1.25])
title('x_2[n] a f_s_2=300 muestras/seg')
%Gráficos espectrogramas
figure(f1)
subplot(3,2,1);
specgram(Y1,15,150)
title('a) x_1[n];f_s_1=150; V=15')
subplot(3,2,2);
specgram(Y2,15,300)
title('d) x_2[n];f_s_2=300; V=15')
subplot(3,2,3);
specgram(Y1,25,150)
title('b) x_1[n];f_s_1=150; V=25')
subplot(3,2,4);
specgram(Y2,25,300)
title('e) x_2[n];f_s_2=300; V=25')
subplot(3,2,5);
specgram(Y1,75,150)
title('c) x_1[n];f_s_1=150; V=75')
subplot(3,2,6);
specgram(Y2,75,300)
title('f) x_2[n];f_s_2=300; V=75')
%fin del programa