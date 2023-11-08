function H = fsolvepoinca(kL,kR,a,TL,TR,DL,DR,Y)
%Funciones para fsolve en la semiaplicacion de poincare
H(1)=semipoincay1y0(kL,a,TL,DL,Y);
H(2)=semipoincay1y0(kR,a,TR,DR,Y);
end