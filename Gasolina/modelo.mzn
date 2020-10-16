int: ingredientes = 3;
int: galones_gasolina = 12000;

var float: b;
var float: cr;
var float: np;

% Restricciones gasolina
constraint 120*b + 100*cr + 74*np >= 89 * galones_gasolina;
constraint 60*b + 2.5*cr + 40*np <= 11 * galones_gasolina;
constraint 105*b + 3*cr + 12*np >= 17 * galones_gasolina;

constraint b >= 0;
constraint cr >= 0;
constraint np >= 0;

solve minimize 0.58*b + 1.55*cr + 0.85*np;