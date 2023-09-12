function H = fsolvepoinca(kL,kR,aL,aR,TL,TR,DL,DR,Y)
%Funciones para fsolve en la semiaplicacion de poincare
H(1)=semipoincay1y0(kL,aL,TL,DL,Y);
H(2)=semipoincay1y0(kR,aR,TR,DR,Y);
end