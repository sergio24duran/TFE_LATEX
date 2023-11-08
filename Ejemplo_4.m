% Ejemplo 4

% Valores del circuito
<<<<<<< HEAD
a = 0.2;  Rtilde = 1.3;
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

periodo = @(R) (4*pi/(((1-b*R)/(C*L))*sqrt((4*((1-b*R)/(C*L)))-(((-b/C)+(R/L))^2)))) + (2*(((1-a*R)/(C*L))-((1-b*R)/(C*L))-(2*((-a/C)+(R/L))^2)+(((-a/C)+(R/L))*((-b/C)+(R/L)))+((-b/C)+(R/L))^2)*((((3*pi*(((1-a*R)/(C*L))+h)^3)/(2*((-a/C)+(R/L))*((1-b*R)/(C*L))^(3/2)))*((-b/C)+(R/L)))^(1/3))^3/(3*(((1-a*R)/(C*L))-h)^3));

<<<<<<< HEAD
amplitud = @(R) Y0(R)-Y1(R);

disp('Condiciones que deben cumplirse');
disp('de > 0, te > 0(para R > 1), a < 0, tc < 0');
de = (1-b*Rtilde)/(C*L)
te = (-b/C)+(Rtilde/L)
as = ((1-a*Rtilde)/(C*L)) + h
tc = (-a/C)+(Rtilde/L)

disp('Puntos, periodo y amplitud');
Y0_punto = Y0(Rtilde)
Y1_punto = Y1(Rtilde)
periodo_punto  = periodo(Rtilde)
amplitud_punto = amplitud(Rtilde)

subplot(3,1,1); fplot(Y0,[1 3]);hold on; fplot(Y1,[1 3]);
plot(Rtilde,Y0_punto,'*'); plot(Rtilde,Y1_punto,'*');
xlabel('R'); ylabel('Y'); grid on; shg; subplot(3,1,2);
fplot(periodo,[1 3]); hold on; plot(Rtilde,periodo_punto,'*');
xlabel('R'); ylabel('periodo'); grid on; shg;
subplot(3,1,3); fplot(amplitud,[1 3]); hold on;
plot(Rtilde,amplitud_punto,'*'); xlabel('R'); ylabel('amplitud');
grid on; shg;
=======
disp('Condiciones que deben cumplirse');
disp('de > 0, te > 0(para R > 1), a < 0, tc < 0');
de = (1-b*R)/(C*L)
te = (-b/C)+(R/L)
as = ((1-a*R)/(C*L)) + h
tc = (-a/C)+(R/L)

disp('Puntos y periodo');
Y0_punto = Y0(R)
Y1_punto = Y1(R)
periodo_punto = periodo(R)

subplot(2,1,1); fplot(Y0,[0 3]);hold on; fplot(Y1,[0 3]);
hold on; plot(R,Y0_punto,'*'); plot(R,Y1_punto,'*');
xlabel('R'); ylabel('Y'); grid on; shg; subplot(2,1,2);
fplot(periodo,[0 3]); hold on; plot(R,periodo_punto,'*');
xlabel('R'); ylabel('periodo'); grid on; shg;
>>>>>>> 7c2896b3f0ec067e6bd6bc152f1ea4418376f4b2
