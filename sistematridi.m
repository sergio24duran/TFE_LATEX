function F=sistematridi(t,X)

% valores del circuito
a = 0.2;  R = 1;      
b = 0.01; L = 10;
h0 = -1;  C = 0.1;

% variables auxiliares
a12 =  1/C;   a11 = -a12;
a21 = -1/L;   a22 = -R*a21; 

x=X(1);
y=X(2);
z=X(3);

% funcion W(z)
breaks=[-Inf, -1, 1, Inf];
coefs=[b,a,b];
W=mkpp(breaks,coefs);

F=[a11*x*ppval(W,z)+a12*y ; a21*x+a22*y ; x];

end