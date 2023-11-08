% Ejemplo 1
a=-1;           % Pto. de equilibrio en zona IZQUIERDA
kL=2;   kR=0;   % kL,R en funcion del signo de aL,R
TL=0.3; TR=-0.5;% Condiciones para que exista oscilacion
DL=1;   DR=1;   % Condiciones para que exista oscilacion

y0 = 1.5;         % Punto y0 > 0 de prueba

y1_L = semipoinca(kL,a,TL,DL,y0)
y1_R = semipoinca(kR,a,TR,DR,y0)