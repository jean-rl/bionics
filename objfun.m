function f = objfun(x,xp,yp)
    t1 = x(1);
    t2 = x(2);
    E1 = 37*cos((pi*t1)/180) + 40*cos((pi*t1)/180)*cos((pi*t2)/180) - 40*sin((pi*t1)/180)*sin((pi*t2)/180);
    E2 = 37*sin((pi*t1)/180) + 40*cos((pi*t1)/180)*sin((pi*t2)/180) + 40*cos((pi*t2)/180)*sin((pi*t1)/180);
    x1 = xp - E1;
    y1 = yp - E2;
    f = sqrt(x1^2 + y1^2);
end