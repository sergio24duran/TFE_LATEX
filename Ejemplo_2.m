% Ejemplo 2
a=-1;           % Pto. de equilibrio en zona IZQUIERDA
kL=2;   kR=0;   % kL,R en funcion del signo de aL,R
TL=0.3; TR=-0.5;% Condiciones para que exista oscilacion
DL=1;   DR=1;   % Condiciones para que exista oscilacion

fplot(@(y0)semipoinca(kL,a,TL,DL,y0),[0 10],'r');
xlabel('y0');
ylabel('y1');
hold on;

fplot(@(y0)semipoinca(kR,a,TR,DR,y0),[0 10],'b');
xlabel('y0');
ylabel('y1');
hold on;

grid on;
legend('Semiaplicacion Izquierda','Semiaplicacion Inversa Derecha');
shg