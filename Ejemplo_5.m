% Ejemplo 5

% Valores del circuito
<<<<<<< HEAD
a = 0.2;       
=======
a = 0.2;  R = 1.3;      
>>>>>>> 7c2896b3f0ec067e6bd6bc152f1ea4418376f4b2
b = 0.01; L = 10;
h = -1;   C = 0.1;

% dc = (1-a*R)/(C*L)    % c: Central,  Derecha
% de = (1-b*R)/(C*L)    % e: Exterior, Izquierda
% tc = (-a/C)+(R/L)
% te = (-b/C)+(R/L)
% as = dc + h

Y0 = @(R)  (((3*pi*(((1-a*R)/(C*L))+h)^3)/(2*((-a/C)+(R/L))*((1-b*R)/(C*L))^(3/2)))*((-b/C)+(R/L)))^(1/3);

Y1 = @(R) (-((((3*pi*(((1-a*R)/(C*L))+h)^3)/(2*((-a/C)+(R/L))*((1-b*R)/(C*L))^(3/2)))*((-b/C)+(R/L)))^(1/3)))-(((2*((-a/C)+(R/L)))/(3*(h+((1-a*R)/(C*L))))))*(((((3*pi*(((1-a*R)/(C*L))+h)^3)/(2*((-a/C)+(R/L))*((1-b*R)/(C*L))^(3/2)))*((-b/C)+(R/L)))^(1/3)))^2;

<<<<<<< HEAD
fplot(Y0,[1 20]);
hold on;
fplot(Y1,[1 20]);
=======
periodo = @(R) (4*pi/(((1-b*R)/(C*L))*sqrt((4*((1-b*R)/(C*L)))-(((-b/C)+(R/L))^2)))) + (2*(((1-a*R)/(C*L))-((1-b*R)/(C*L))-(2*((-a/C)+(R/L))^2)+(((-a/C)+(R/L))*((-b/C)+(R/L)))+((-b/C)+(R/L))^2)*((((3*pi*(((1-a*R)/(C*L))+h)^3)/(2*((-a/C)+(R/L))*((1-b*R)/(C*L))^(3/2)))*((-b/C)+(R/L)))^(1/3))^3/(3*(((1-a*R)/(C*L))-h)^3));

fplot(Y0,[0 25]);
hold on;
fplot(Y1,[0 25]);
>>>>>>> 7c2896b3f0ec067e6bd6bc152f1ea4418376f4b2
xlabel('R');
ylabel('Y');
legend('Y0','Y1');
grid on;
shg;