clear
clc

global xn x2 x3;
xn=3;
x2=5;
x3=7;

for j=1:5000
    [u1, xn] = gen(16,4,75,xn);
    [u2, x2] = gen(9,7,128,x2);
    [u3, x3] = gen(21,0,256,x3);
    
    %u1 = gen_var_acerec();
    %u2 = gen_var_acerec();
    %u3 = gen_var_acerec();
    
    paquete_1(j) = u1;
    paquete_2(j) = u2;
    paquete_3(j) = u3;
end

packages = [paquete_1, paquete_2, paquete_3];
m = ["-Xn", "-Yn", "-Zn"]

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
    title(strcat('Distribucion paquete ',m(k)))
end