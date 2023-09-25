% Ejemplo 6

tspan = [0, 50]; % Lapso de tiempo estudiado.
x0    = [-1;1];  % Punto inicial.

[t, xy,tE,xE,iE] = ode45(@sistema, tspan, x0, odeset('Events',@EF));

% t  -> Los valores de tspan que hemos definido
% xy -> Soluciones del sistema, el primer punto es el inicial 
% tE -> Momentos temporales para los que se produce un evento definido.
% xE -> Valores x e y para los que se produce un evento definido.
% iE -> Indice de eventos, nosotros solo definimos uno.