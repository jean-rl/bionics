function h3=grafica_robot(t1,t2)

    T01 = [cosd(t1) -sind(t1) 0   0;
           sind(t1)  cosd(t1) 0   0;
           0           0      1   0;
           0           0      0   1];
    T12 = [1          0      0  37;
           0          1      0   0;
           0          0      1   0;
           0          0      0   1];
    
    T01T12 = T01*T12;
    
    p1 = T01(1:3,4);
    p2 = T01T12(1:3,4);
    %plot3([p1(1),p2(1)],[p1(2),p2(2)],[p1(3),p2(3)],'r','LineWidth',4);
    h1 = plot([p1(1),p2(1)],[p1(2),p2(2)],'r','LineWidth',4);
    
    T23 = [cosd(t2)  -sind(t2) 0   0;
           sind(t2)   cosd(t2) 0   0;
           0          0        1   0;
           0          0        0   1];
    T3P = [1          0        0  40;
           0          1        0   0;
           0          0        1   0;
           0          0        0   1];
    
    T23T3P = T01*T12*T23*T3P;
    p3 = T23T3P(1:3,4);
    hold on;
    h2 = plot([p2(1),p3(1)],[p2(2),p3(2)],'b','LineWidth',4);
    h3 = [h1;h2];
    hold off;
    fprintf('x = %6.2f, y = %6.2f\n',p3(1),p3(2));
end
   
