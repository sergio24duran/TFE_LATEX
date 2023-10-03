% Ejemplo 6 Tridimesional

tspan = 0:0.001:100; % Lapso de tiempo estudiado.
x0    = [-1.7764e-15;-0.02;-1];  % Punto inicial.

[t, xyz] = ode45(@sistematridi, tspan, x0);

% t   -> Los valores de tspan que hemos definido
% xyz -> Soluciones del sistema, el primer punto es el inicial 