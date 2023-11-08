% Graficas Ejemplo 6
Ejemplo_6

xE = round(xE,4); tc=-1.87;

    figure; subplot(1,2,1);
plot(xy(:,1) , xy(:,2));
title('Solucion x y, cambio de variable no aplicado');
xlabel('x'); ylabel('y'); hold on;
h1 = 0.8:0.001:2.4;
k1 = -1.*ones(1 , length(h1));
plot(k1,h1);
plot(xE(end,1) , xE(end,2),'*');
plot(xE(end-1,1) , xE(end-1,2),'*'); hold off;
    subplot(1,2,2);
xy_Aplicado = [xy(:,1)+1 , xy(:,2)+tc];
plot(xy_Aplicado(:,1) , xy_Aplicado(:,2))
title('Solucion X Y, cambio de variable aplicado');
xlabel('X'); ylabel('Y'); hold on;
h2 = -1:0.001:0.4;
k2 = zeros(1,length(h2));
plot(k2,h2);
xE_Aplicado = [xE(:,1)+1 , xE(:,2)+tc];
plot(xE_Aplicado(end,1) , xE_Aplicado(end,2),'*');
plot(xE_Aplicado(end-1,1) , xE_Aplicado(end-1,2),'*');
hold off;

figure;
    subplot(2,2,1);
plot(t,xy(:,1));
title('Cambio de variable no aplicado');
xlabel('t'); ylabel('x');
    subplot(2,2,3);
plot(t,xy(:,2));
title('Cambio de variable no aplicado');
xlabel('t'); ylabel('y');
    subplot(2,2,2);
plot(t,xy_Aplicado(:,1));
title('Cambio de variable aplicado');
xlabel('t'); ylabel('X');
    subplot(2,2,4);
plot(t,xy_Aplicado(:,2));
title('Cambio de variable aplicado');
xlabel('t'); ylabel('Y');

figure;
plot(t,xy(:,2)); hold on;
plot(tE,xE(:,2)); hold off;