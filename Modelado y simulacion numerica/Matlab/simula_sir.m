p=0.001;
[t,xf1]=ode45(@(t,x)edo_sir(t,x,0.09,0.05),[0,90],[1-p;p;0]);
[t2,xf2]=ode45(@(t,x)edo_sir(t,x,0.02,0.05),[90,160],xf1(end,:));
[t3,xf3]=ode45(@(t,x)edo_sir(t,x,0.08,0.05),[160,250],xf2(end,:));

ini=datenum("02/01/2020");


plot(ini+t,1-xf1(:,1),ini+t2,1-xf2(:,1),ini+t3,1-xf3(:,1))
datetick
