% Chuffed

include "datos.dzn";

int: max_pages;

array [int] of int: readers_pp;
array [int, int] of int: pages;

array [1..length(readers_pp)] of var int: pag_selected;
var int: F;

constraint sum(i in 1..length(pag_selected))( pag_selected[i] ) <= max_pages;

constraint forall(i in 1..length(pag_selected))( 
  pag_selected[i] > 0 -> 
    (pag_selected[i] >= pages[i,1]) /\ (pag_selected[i] <= pages[i,2])
);

constraint forall(i in 1..length(pag_selected))( pag_selected[i] >= 0 );

constraint F = sum(i in 1..length(pag_selected))( pag_selected[i]*readers_pp[i] );

solve maximize F;