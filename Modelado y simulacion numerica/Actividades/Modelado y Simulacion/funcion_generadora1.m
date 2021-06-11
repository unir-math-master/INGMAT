clear
clc

% Variable global
global x1 x2 x3;
x1 = 42;
x2 = 3;
x3 = 42;

for i=1:5000
    [u1,xn] = gen(89,73,720191,x1);
    [u2,x2] = gen(16,4,75,x2);
    [u3,x3] = gen(16,4,75,x3);
    
    paquete_1(i) = u1;
    paquete_2(i) = u2;
    paquete_3(i) = u3;
end

packages = [paquete_1, paquete_2, paquete_3];
index = 0;
x=[1:10]; 
for k=1:3
    pkg = packages(index*5000+1:5000*k);
    bin=1;
    for i=0.1:0.1:1 
        j=i-0.1;
        y(bin) = length(pkg(pkg>=j & pkg<i)); 
        bin = bin +1;
    end
    subplot(3,1,k),bar(x,y) 
    title('Distribucion paquete')
end