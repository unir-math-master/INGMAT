%representación de señales contínuas y complejas.
%Jorge A. Balsells Orellana.

clear 
clc

%funcion x con incremento en t
inct = 0.01;
t = [-8:inct:8];
x = exp(j*t*(pi/2));

%numeros complejos polares
valor_modulo = abs(x);
valor_argumento = angle(x);

%numeros complejos en parte real e imaginaria
valor_real = real(x);
valor_complejo = imag(x);

%subplot con valor real e imaginario
subplot(1,2,1);
    hold on
    plot(t, valor_real);
    plot(t, valor_complejo);
    %configuraciones graficas
    axis([-8 8 -1.5 1.5]);
    title('x(t) = e^{j*(\pi/2)*t}');
    legend('Re(x)', 'Im(x)');
    xlabel("t")
    ylabel("x(t)")
    grid on
    hold off

    %subplot con modulo y argumento
subplot(1,2,2);
    hold on
    plot(t, valor_modulo);
    plot(t, valor_argumento);
    %configuraciones graficas
    axis([-8 8 -4 4]);
    title('x(t) = e^{j*(\pi/2)*t}');
    legend('modulo', 'argumento');
    xlabel("t")
    ylabel("x(t)")
    grid on
    hold off