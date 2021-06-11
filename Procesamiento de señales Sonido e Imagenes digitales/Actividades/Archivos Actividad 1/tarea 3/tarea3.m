%representación de señales periódicas.
%Jorge A. Balsells Orellana.
%En el documento esta descrito 

clear
clc

%valores de t y n incrementados en inct e incn
inct = 0.1;
incn = 1;
t = [-10:inct:10];
n = [-10:incn:10];

%funcion x1 continua y valor real
x1 = exp(j*t*pi*(14/17));
valor_real_x1_t = real(x1);

%funcion x1 discreta y valor real
x1 = exp(j*n*pi*(14/17));
valor_real_x1_n = real(x1);

%funcion x2 continua
x2_t = cos(t/5);

%funcion x2 discreta
x2_n = cos(n/5);

%grafica funcion x1 discreta y continua
subplot(2,1,1);
    hold on
    stem(n, valor_real_x1_n);
    plot(t, valor_real_x1_t, 'LineStyle', '-', 'color', 'red');
    %configuraciones graficas
    axis([-10 10 -1.5 1.5]);
    title('x(t) = Re(e^{j*(14\pi/17)*t})');
    legend('discreta [n]', 'continua [t]');
    xlabel("t/n")
    ylabel("x(t)")
    grid on
    hold off

    %grafica funcion x2 discreta y continua
subplot(2,1,2);
    hold on
    stem(n, x2_n);
    plot(t, x2_t, 'LineStyle', '-', 'color', 'red');
    %configuraciones graficas
    axis([-10 10 -0.75 1.25]);
    title('x(t) = Cos(t/5)');
    legend('discreta [n]', 'continua [t]');
    xlabel("t/n")
    ylabel("x(t)")
    grid on
    hold off