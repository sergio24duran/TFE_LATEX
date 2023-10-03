% Bifurcacion Planos 2

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