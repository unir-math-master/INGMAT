function [u] = gen_var_acerec()
    global paq1
    global paq2
    %global xn
    %global xm
    flag = 0;
    
    while flag==0
        %[u1, xn] = gen(,,xn);
        %[v1, xm] = gen(,xm);
        %16,4,75
        %3,1,1048576

        u1 = rand();
        v1 = rand();
        
        a = 0;
        b = 4;
        c = 1/2;
        
        x = a+(b-a)*u1;
        y = c*v1;

        if x>=0 & x<3
            fx = x/6;
        elseif x>=3 & x<4
            fx = 2 - (x/2);
        end
        
        if y<=fx
            flag = 1;
        end
    end

    if x>=0 & x<3
        paq1 = [paq1 fx];
    elseif x>=3 & x<4
        paq2 = [paq2 fx];
    end
    
    u = fx;
end

