clear
clc

syms a b u v;

L = [0 0 2*b ; a*cos(v) a*sin(v) 2*b*u ; -a*u*sin(v) a*u*cos(v) 0];
DetL = det(L);

M = [-a*sin(v) a*cos(v) 0 ; a*cos(v) a*sin(v) 2*b*u ; -a*u*sin(v) a*u*cos(v) 0];
DetM = det(M);

N = [-a*u*cos(v) -a*u*sin(v) 0 ; a*cos(v) a*sin(v) 2*b*u ; -a*u*sin(v) a*u*cos(v) 0];
DetN = det(N);