clear
clc

inct = 0.1;
t = [-1:inct:1];

x = 0.5 * (sign(t) + 1);

plot(t, x);
axis([-1 1 -0.5 1.5])