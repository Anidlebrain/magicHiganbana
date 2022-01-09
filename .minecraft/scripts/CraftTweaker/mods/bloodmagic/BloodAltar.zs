##=============================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     血魔法 血之祭坛
##=============================================================
#modloaded higanbana
#priority 2000

import mods.bloodmagic.BloodAltar;

//移除配方 移除的是 输入的物品
BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.addRecipe(<bloodmagic:slate>, <roots:runestone>, 0, 1000, 5, 5);

BloodAltar.addRecipe(<lightningcraft:material:5>, <randomthings:ingredient:1>, 5, 30000, 100, 500);

#BloodAltar.addRecipe(<bloodmagic:slate:1>,<bloodmagic:slate>, 1, 1000, 5, 5);

/*
3:144209
4:2079650
5:295399680
6:2^31-1=2147483647
*/