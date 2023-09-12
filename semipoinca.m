function y1 = semipoinca(k,a,T,D,y0)
% Calcula la semiaplicacion en el intervalo y1 -> y0
% Valores de entrada k,a,T,D,y0.
% Dado y0 devuelve y1
inicial = -y0;
cte = (k*pi*T)/(D*sqrt(4*D-T^2));
ecuacion = @(y1) integral(@(y) (-y./((D.*y.^2)-(a.*T.*y)+(a.^2))),y1,y0)-cte;
y1 = fzero(ecuacion,inicial); 
end