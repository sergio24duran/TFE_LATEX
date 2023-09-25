function [valor,terminar,direccion] = EF(t,xy)

  valor=(xy(1)+1);
  % xy(1) es la x y buscamos x=-1 --> x+1=0

  terminar=0;
  % 0 (no termina), 1 (termina de integrar en el primer evento)

  direccion=0;
  % 0 (no importa el sentido)
end