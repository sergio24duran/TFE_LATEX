% Ejemplo 3
a=-1;           % Pto. de equilibrio en zona IZQUIERDA
kL=2;   kR=0;   % kL,R en funcion del signo de aL,R
TL=0.3; TR=-0.5;% Condiciones para que exista oscilacion
DL=1;   DR=1;   % Condiciones para que exista oscilacion

Punto_Inicial = [3.63636 -6.80511];

funcion = @(Y) fsolvepoinca(kL,kR,a,TL,TR,DL,DR,Y);

Punto_Solucion = fsolve(funcion,Punto_Inicial);

y0_Solucion = Punto_Solucion(1)
y1_Solucion = Punto_Solucion(2)