function F=sistema(t,X)

% Valores del circuito
a = 0.2;  R = 1.3;
b = 0.01; L = 10;
h = -1;   C = 0.1;

x=X(1);
y=X(2);

F=[((-b/C)+(R/L))*x - y + (((-a/C)+(R/L)))*0.5*(abs(x+1)-abs(x-1));...
   ((1-b*R)/(C*L))*x + (((1-a*R)/(C*L))-((1-b*R)/(C*L)))*0.5*(abs(x+1)-abs(x-1))-h];
end