var int: p1;
var int: p2;

constraint 12*p1 + 6*p2 <= 60;
constraint 8*p1 + 6.5*p2 <= 75;
constraint 15*p1 + 10*p2 <= 140;

constraint p1 >= 0;
constraint p2 >= 0;

solve maximize p1*120 + p2*90;