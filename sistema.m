function F=sistema(t,X)

% Valores del circuito
<<<<<<< HEAD
a = 0.2;  R = 1.1;
=======
a = 0.2;  R = 1.3;
>>>>>>> 7c2896b3f0ec067e6bd6bc152f1ea4418376f4b2
b = 0.01; L = 10;
h = -1;   C = 0.1;

x=X(1);
y=X(2);

F=[((-b/C)+(R/L))*x - y + (((-a/C)+(R/L)))*0.5*(abs(x+1)-abs(x-1));...
   ((1-b*R)/(C*L))*x + (((1-a*R)/(C*L))-((1-b*R)/(C*L)))*0.5*(abs(x+1)-abs(x-1))-h];
end