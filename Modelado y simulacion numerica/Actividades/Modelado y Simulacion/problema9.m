for j=1:10000
    u1 = gen_var_acerec();
    paquete(j) = u1;
end
    
%Index1 = find(paquete==paquete(1));
%Index2 = find(paquete==paquete(2));
%if Index1(1)==(Index2(1)-1)
%    Period = Index1(2) - Index1(1);
%end
%disp(Period);

paquete = paquete.*6;
histogram(paquete,20,'Normalization','pdf')

hold on

x = [0:0.01:3];
y = x/6;
plot(x,y)

x = [3:0.01:4];
y = 2 - x/2;
plot(x,y)