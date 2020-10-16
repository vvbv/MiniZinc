include "datos.dzn";

var float: F;

int: tipos_torta;

array [int] of int: recursos;
array [int] of float: costo_venta;
array [int, int] of int: consumos;

array [1..tipos_torta] of var int: cantidad_tortas;

constraint forall( i in 1..tipos_torta )( cantidad_tortas[i] >= 0 );

constraint forall( i in 1..length(recursos) )(
    sum(j in 1..tipos_torta )( consumos[i,j] * cantidad_tortas[j] ) <= recursos[i]
);

constraint F = sum(i in 1..tipos_torta)( cantidad_tortas[i]*costo_venta[i] );

solve maximize F;
