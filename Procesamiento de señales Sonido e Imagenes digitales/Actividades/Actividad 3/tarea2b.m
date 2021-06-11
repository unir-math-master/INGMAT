Fs = 800; 
inct = 1/Fs;
m=5;
d = 0.1;
t = [0:inct:d-inct];


Fi=5; %frecuencia sinusoidal 
%Señal sinusoidal
xi=cos(2*pi*Fi*t);

Fp1=50; %frecuencia portadora
Fp2=200; %frecuencia portadora
%Señal portadora
xp1=cos(2*pi*Fp1*t);
xp2=cos(2*pi*Fp2*t);

%señal modulada
xt1=cos(2*pi*Fp1*t+m*xi);
xt2=cos(2*pi*Fp2*t+m*xi);

xt=xt1+xt2;

f1 = figure( 'Name','Gráficas de espectogramas');
%espectograma de cada senal
subplot(3,2,1), specgram(xp1,60,800), title("Senal xp1, fp1=50");
subplot(3,2,2), specgram(xp2,60,800), title('Senal xp2, fp1=200');
subplot(3,2,3), specgram(xt1,60,800), title('Senal modal xt1');
subplot(3,2,4), specgram(xt2,60,800), title('Senal modal xt2');
subplot(3,2,5), specgram(xi,60,800), title('Senal xi, fi=5');
subplot(3,2,6), specgram(xt,60,800), title('Senal xt, N=60');


