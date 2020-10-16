% Gecode

include "alldifferent.mzn";
include "datos.dzn";

int: tt;
int: tm;
int: tg;

array [int] of float: t;
array [int] of float: m;
array [int] of float: g;
array [int] of float: p;

int: qty_parts = length(t);

array [1..qty_parts] of var int: qty_per_part;
var int: F;

% No negatividad
constraint forall(i in 1..qty_parts)( qty_per_part[i] >= 0 );

% Restricciones
constraint sum(i in 1..qty_parts)( qty_per_part[i]*t[i] ) <= tt;
constraint sum(i in 1..qty_parts)( qty_per_part[i]*m[i] ) <= tm;
constraint sum(i in 1..qty_parts)( qty_per_part[i]*g[i] ) <= tg;

constraint alldifferent(qty_per_part);

% Función objetivo
constraint F = sum(i in 1..qty_parts)( qty_per_part[i]*p[i] );

solve maximize F;


