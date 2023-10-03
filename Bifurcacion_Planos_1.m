% Bifurcacion Planos 1

Ejemplo_6_Tridimensional

% Definir las coordenadas X e Y

[X, Y] = meshgrid(-0.3:0.00025:0.3);

% Calcular Z
Z  = -1+0*X*Y;

% Crear una grafica 3D
figure('Position', [0, 0, 1200, 1000]);
surf(X, Y, Z, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'black');
hold on;

% Dibujar el ciclo limite
h1 = plot3(xyz(:,1),xyz(:,2),xyz(:,3),'LineWidth',1.5); shg;
view(-140, 10);
axis([-0.3, 0.3, -0.3, 0.3, -1.5, -0.8]);
hold off;