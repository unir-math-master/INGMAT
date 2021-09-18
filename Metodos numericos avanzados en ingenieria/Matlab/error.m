[x1, y1] = Heun_sis_1582('PVI1', -1/2, 1/2, 40, [0,2*exp(-1/2)]);
solex1 = 2*exp(x1) - 2*exp(-1/2);
error40 = max(abs(y1-solex1));

[x2, y2] = Heun_sis_1582('PVI1', -1/2, 1/2, 80, [0,2*exp(-1/2)]);
solex2 = 2*exp(x2) - 2*exp(-1/2);
error80 = max(abs(y2-solex2));

errorTot = error40/error80


[x1, y1] = RungeKutta('PVI1', -1/2, 1/2, 40, [0,2*exp(-1/2)]);
solex1 = 2*exp(x1) - 2*exp(-1/2);
error40 = max(abs(y1-solex1));

[x2, y2] = RungeKutta('PVI1', -1/2, 1/2, 80, [0,2*exp(-1/2)]);
solex2 = 2*exp(x2) - 2*exp(-1/2);
error80 = max(abs(y2-solex2));

errorTot = error40/error80