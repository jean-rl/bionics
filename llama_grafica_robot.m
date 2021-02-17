inicio = -90
fin = -45;
incremento = 1;
clf;
for x= inicio:incremento:fin
    y = x;
    axis([-100 100 -100 100]);
    grid on;
    xlabel('X');
    ylabel('Y');
    hold on;
    h3 = grafica_robot(x,y);
    if x == fin
        break;
    end
    hold off;
    pause(0.1);
    delete(h3);
end