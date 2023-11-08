function valor = semipoincay1y0(k,a,T,D,Y)
% Resuelve Integral-cte = 0, dado y0 e y1
cte = (k*pi*T)/(D*sqrt(4*D-T^2));
y0=Y(1);
y1=Y(2);
valor = integral(@(y) (-y./((D.*y.^2)-(a.*T.*y)+(a.^2))),y1,y0)-cte;
end