function [xf,vf,t] = propaga_orbita(t,x,v,b_atmosfera,b_plot)
%PROPAGA_ORBITA esta función realiza la propagación de una nave espacial
%alrededor de la Tierra. Se toma una posición (x) y una velocidad (v)
%inicial y se retorna la posición y la velocidad después de t unidades de
%tiempo.

    if(size(x) ~= 3)
        msg = 'x debe tener dimensión 3';
        error(msg);
    end
    if(size(v) ~= 3)
        msg = 'v debe tener dimensión 3';
        error(msg);
    end
    if(exist('b_plot','var')==0 )
        b_plot=0;
    end
    
    x0=[x, v];
    
    tsp=0:0.1:t;
    
    opts = odeset('Reltol',1e-8,'AbsTol',1e-8,'Stats','off');
    if(b_atmosfera == 1)
        [~,xvf] = ode113(@kepler_atm,tsp,x0,opts);
    end
    if(b_atmosfera == 0)
        [~,xvf] = ode113(@kepler,tsp,x0,opts);
    end

    if(b_plot == 0)
        xf=xvf(end,1:3);
        vf=xvf(end,4:6);
    else
        xf=xvf(:,1:3);
        vf=xvf(:,4:6);
        t=tsp;
    end
    
end

