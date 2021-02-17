clear;
clc;
x0 = [0,0]; % teta1 y teta2 iniciales supuestas
xp = 20;
yp = -40;
f = @(x)objfun(x,xp,yp);
x = fminsearch(f,x0);
t1 = x(1);
t2 = x(2);
E1 = 37*cos((pi*t1)/180) + 40*cos((pi*t1)/180)*cos((pi*t2)/180) - 40*sin((pi*t1)/180)*sin((pi*t2)/180);
E2 = 37*sin((pi*t1)/180) + 40*cos((pi*t1)/180)*sin((pi*t2)/180) + 40*cos((pi*t2)/180)*sin((pi*t1)/180);
fprintf('teta 1 = %6.2f, teta 2 = %6.2f, x = %6.2f, y = %6.2f\n',t1,t2,E1,E2);