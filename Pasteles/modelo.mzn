var int: pb;
var int: pc;
var float: F;

int: harina = 4000;
int: bananos = 6;
int: azucar = 2000;
int: mantequilla = 500;
int: cacao = 500;


constraint pb*250 + pc*200 <= harina;
constraint pb*2 <= bananos;
constraint pb*75 + pc*150 <= azucar;
constraint pb*100 + pc*150 <= mantequilla;
constraint pb*75 <= cacao;

constraint pb >= 0;
constraint pc >= 0;

constraint F = pc*4.5 + pb*4;

solve maximize F;