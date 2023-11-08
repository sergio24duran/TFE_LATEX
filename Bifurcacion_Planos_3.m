% Bifurcacion Planos 3

Ejemplo_6_Tridimensional

% Definir las coordenadas X e Y

[X, Y] = meshgrid(-0.3:0.00025:0.3);

% Calcular Z, Z1 y Z2
Z  = -1+0*X*Y;
Z1 = -(h0 + a22*X - a12*Y + a11*a22*(a - b))/(a12*a21 - a11*a22*b);
Z2 = -(h0 + a22*X - a12*Y)/(a12*a21 - a*a11*a22);

% Visualizar diferencia entre planos
figure('Position', [0, 0, 1200, 1000]);
surf(X, Y, Z1, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'red');
hold on;
surf(X, Y, Z2, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'green');
surf(X, Y, Z, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'black');
hold off;
view(-80, 15);

% Ocultar los valores no deseados en Z1 y Z2
Z1(Z1 > -1) = NaN;
Z2(Z2 < -1) = NaN;

% Crear una grafica 3D
figure('Position', [0, 0, 1200, 1000]);
surf(X, Y, Z1, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'red');
hold on;
surf(X, Y, Z2, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'green');
surf(X, Y, Z, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'black');

% Dibujar el ciclo limite
h1 = plot3(xyz(:,1),xyz(:,2),xyz(:,3),'LineWidth',1.5); shg;
view(-140, 10);
axis([-0.3, 0.3, -0.3, 0.3, -1.5, -0.8]);
hold off;