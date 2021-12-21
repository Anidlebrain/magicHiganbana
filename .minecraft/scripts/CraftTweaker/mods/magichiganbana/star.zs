##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     彼岸之法 星座
##================================================
#modloaded higanbanautils
#priority 2001

import mods.Higanbana.AstralSorcery.Constellation;
/*
北斗
4 12
10 13
12 15
16 18
15 21
22 24
25 20

5,13
9,14
12,16
15,18
15,21
21,24
24,21
*/
var dipper = Constellation.create("dipper", 2, 0);
var s1 as int = dipper.addStar(4, 12);
var s2 as int = dipper.addStar(10, 13);
var s3 as int = dipper.addStar(12, 15);
var s4 as int = dipper.addStar(16, 18);
var s5 as int = dipper.addStar(15, 21);
var s6 as int = dipper.addStar(22, 24);
var s7 as int = dipper.addStar(25, 20);
dipper.addConnection(s1, s2);
dipper.addConnection(s2, s3);
dipper.addConnection(s3, s4);
dipper.addConnection(s4, s5);
dipper.addConnection(s5, s6);
dipper.addConnection(s6, s7);
dipper.register();