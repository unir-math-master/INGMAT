[tono,Fs]=audioread('censurado.wav');
sound(tono,Fs)
figure
spectrogram(tono,256,[],[],Fs,'yaxis')
[tonoc]=audioread('censurado.wav',[1,1.2*Fs])
N1=length(tonoc); % Longitud de la DFT igual a longitud de la señal
figure
spectrogram(tonoc,256,[],[],Fs,'yaxis')
x1=fft(tonoc);
X1 = fftshift(fft(tonoc));
x1m=abs(x1);
f1=(-N1/2:1:N1/2-1)*Fs/N1;
figure
plot(f1,abs(X1)), title('X1(f)');
tono2=quita_tono(tono,800,100,Fs);
figure
spectrogram(tono2,256,[],[],Fs,'yaxis')
sound(tono2,Fs)