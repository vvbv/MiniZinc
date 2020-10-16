% Use this editor as a MiniZinc scratch book

% Se constriuyen dos tipos de transformadores
% Material 6 toneladas
% 28 horas de trabajo disponible

% El transformador 1 transformador requiere 2 toneladas de material y 7 horas de trabajo => $120 mil dolares venta
% El transformador 2 require 1 tonelada de material y 8 horas de trabajo => $80 mil dolares venta

% Cuántos transformadores de cada tipo se deben fabricar ?

% Parámetros

% c = cantidad de transformadores

% m = cantidad de toneladas
% h = cantidad de horas de trabajo

% ACM = Arreglo cantidad material requerido
% ACH = Arreglo cantidad horas requeridas
% AG = Arreglo venta

% Variables

% CT = Arreglo cantidad de transformadores a fabricar

% Restricciones

% Toneladas Sum( 1 hasta CT ) ACM[i]*CT[i] <= m
% Horas Sum( 1 hasta CT ) ACH[i]*CT[i] <= m

% Función objetivo

% maximize Sum( 1 hasta CT ) AG[i]*CT[i]

include "transformadores.dzn";

int: c;
int: m;
int: h;

array [1..c] of int: ACM;
array [1..c] of int: ACH;
array [1..c] of int: AG;

array [1..c] of var int: CT;

constraint sum(i in 1..c)( ACM[i]*CT[i] ) <= m;
constraint sum(i in 1..c)( ACH[i]*CT[i] ) <= h;
constraint forall(i in 1..c)(CT[i] >= 0);

solve maximize sum( i in 1..c)( AG[i]*CT[i] );

