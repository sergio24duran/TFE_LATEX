% Bifurcacion Combinar Planos

% Abre las figuras existentes
h1 = openfig('foco25.fig','reuse','invisible');
h2 = openfig('centro25.fig','reuse','invisible');
h3 = openfig('ciclo25.fig','reuse','invisible');

% Define la misma vista 3D para todas las figuras
azimuth = 30; % Angulo azimutal (grados)
elevation = 10; % Angulo de elevacion (grados)

% Crea una nueva figura con tres subplots
figure('units','normalized','outerposition',[0 0 1 1])

% Configura los subplots
s1 = subplot(1,3,1);
axis([-0.3, 0.3, -0.3, 0.3, -1.5, -0.8]);
view(azimuth, elevation);

s2 = subplot(1,3,2);
axis([-0.3, 0.3, -0.3, 0.3, -1.5, -0.8]);
view(azimuth, elevation);

s3 = subplot(1,3,3);
axis([-0.3, 0.3, -0.3, 0.3, -1.5, -0.8]);
view(azimuth, elevation);

% Copia y muestra las figuras en los subplots
copyobj(allchild(get(h1,'CurrentAxes')), s1);
copyobj(allchild(get(h2,'CurrentAxes')), s2);
copyobj(allchild(get(h3,'CurrentAxes')), s3);


% Ajusta los titulos de los subplots
title(s1, '\fontsize{28}FOCO    R = 0.7');
title(s2, '\fontsize{28}CENTRO    R = 1');
title(s3, '\fontsize{28}CICLO LIMITE     R = 1.3');
