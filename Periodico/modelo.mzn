% Chuffed

var int: i;
var int: n;
var int: ln;
var int: s;
var int: c;
var int: readers;

constraint i + n + ln + s + c = 10;

constraint i > 0 -> (i >= 5)  /\ (i<=9);
constraint n > 0 -> (n >= 4)  /\ (n<=7);
constraint ln > 0 -> (ln >= 2)  /\ (ln <=5);
constraint s > 0 -> (s >= 2)  /\ (s<=4);
constraint c > 0 -> (c >= 1)  /\ (c<=3);

constraint i >= 0;
constraint n >= 0;
constraint ln >= 0;
constraint s >= 0;
constraint c >= 0;

constraint readers =  i*1500 + n*2000 + ln*100 + s*1500 + c*750;

solve maximize readers;