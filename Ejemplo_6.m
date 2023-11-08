% Ejemplo 6

<<<<<<< HEAD
tspan = 0:0.01:50; % Lapso de tiempo estudiado.
x0    = [-1;1];    % Punto inicial.
=======
tspan = [0, 50]; % Lapso de tiempo estudiado.
x0    = [-1;1];  % Punto inicial.
>>>>>>> 7c2896b3f0ec067e6bd6bc152f1ea4418376f4b2

[t, xy,tE,xE,iE] = ode45(@sistema, tspan, x0, odeset('Events',@EF));

% t  -> Los valores de tspan que hemos definido
% xy -> Soluciones del sistema, el primer punto es el inicial 
% tE -> Momentos temporales para los que se produce un evento definido.
% xE -> Valores x e y para los que se produce un evento definido.
% iE -> Indice de eventos, nosotros solo definimos uno.