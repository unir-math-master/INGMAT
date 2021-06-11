function [u] = gen_var_acerec()
    %global xn
    %global xm
    flag = 0;
    
    while flag==0
        %[u1, xn] = gen(3,1,1048576,xn);
        %[v1, xm] = gen(3,1,1048576,xm);

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
    
    u = fx;
end
