Fs = 800; 
inct = 1/Fs;
m=5;
d = 0.1;
t = [0:inct:d-inct];
A = 1;


Fi=5; %frecuencia sinusoidal 
%Se�al sinusoidal
xi=cos(2*pi*Fi*t)';

Fp1=50; %frecuencia portadora
Fp2=200; %frecuencia portadora
%Se�al portadora
xp1=cos(2*pi*Fp1*t)';
xp2=cos(2*pi*Fp2*t)';

%se�al modulada
xt1=cos(2*pi*Fp1*t+m*xi)';
xt2=cos(2*pi*Fp2*t+m*xi)';

subplot(5,1,1), plot(t,xi), title('Se�al x1, fi=5');
subplot(5,1,2), plot(t,xp1), title('Se�al xp1, fp1=50');
subplot(5,1,3), plot(t,xp2), title('Se�al xp2, fp1=200');
subplot(5,1,4), plot(t,xt1), title('Se�al modal xt1');
subplot(5,1,5), plot(t,xt2), title('Se�al modal xt2');