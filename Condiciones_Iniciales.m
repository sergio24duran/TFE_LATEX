% Condiciones Iniciales

% valores del circuito
a = 0.2;  R = 1;      
b = 0.01; L = 10;
h0 = -1;  C = 0.1;

% variables auxiliares
a12 =  1/C;   a11 = -a12;
a21 = -1/L;   a22 = -R*a21; 

alpha1 = (a22^2+a21*a12)/a22;
alpha3 = a12/a22;

tc=a*a11+a22;

% Funcion q
q = @(phi) b*phi+0.5*(a-b)*(abs(phi+1)-abs(phi-1));

% punto inicial sistema bidimensional
x0tilde = -1;  y0tilde = -tc;

% punto inicial sistema tridimensional
z0 = x0tilde

y0=(alpha1*x0tilde+h0/a22-y0tilde)/alpha3

x0=a12/a22*(y0)+a11*q(x0tilde)-a12*a21/a22*x0tilde-h0/a22

