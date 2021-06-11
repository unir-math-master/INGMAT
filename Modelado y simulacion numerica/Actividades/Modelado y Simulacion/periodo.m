vector = [paquete_1;paquete_2;paquete_3];
Period = [0 0 0];

for a=1:3
    Temp = vector(a,:);
    
    Index1 = find(Temp==vector(a,1));
    Index2 = find(Temp==vector(a,2));
    
    if Index1(1)==(Index2(1)-1)
        Period(a) = Index1(2) - Index1(1);
    end
end

disp(Period);