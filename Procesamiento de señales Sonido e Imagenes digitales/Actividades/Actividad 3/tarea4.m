original_file='siren_original.wav';
%emisor en reposo, receptor a 20km/h
doppler_file='siren_doppler.wav';
%emisor a velocidad Vt, receptor a 20Km/h

[x1, Fs1] = audioread(original_file);
[x2, Fs2] = audioread(doppler_file); 

ts1 = 1/Fs1;
ts2 = 1/Fs2;

%Transformadas de fourier
X1 = fft(x1)/Fs1;
N1 = length(X1);
inc1 = Fs1/N1;
fn1 = (-Fs1/2:inc1:Fs1/2-inc1);

X2 = fft(x2)/Fs2;
N2 = length(X2);
inc2 = Fs2/N2;
fn2 = (-Fs2/2:inc2:Fs2/2-inc2);

%frecuencia maxima cada señal.
[Mf1max,If1max] = max(abs(X1));
[Mf2max,If2max] = max(abs(X2));

%determinar indice de frecuencia
df1 = Fs1/length(X1);
df2 = Fs2/length(X2);

f1 = df1*If1max;
f2 = df2*If2max;

