% Use this editor as a MiniZinc scratch book

% Se constriuyen dos tipos de transformadores
% Material 6 toneladas
% 28 horas de trabajo disponible

% El transformador 1 transformador requiere 2 toneladas de material y 7 horas de trabajo => $120 mil dolares venta
% El transformador 2 require 1 tonelada de material y 8 horas de trabajo => $80 mil dolares venta

% Cuántos transformadores de cada tipo se deben fabricar ?

var int: t1;
var int: t2;

constraint 2*t1 + 1*t2 <= 6;
constraint 7*t1 + 8*t2 <= 28;
constraint t1 >= 0;
constraint t2 >= 0;

solve maximize 120*t1 + 80*t2;