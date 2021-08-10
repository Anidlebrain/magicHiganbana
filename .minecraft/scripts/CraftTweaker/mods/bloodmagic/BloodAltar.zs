##=============================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     血魔法 血之祭坛
##=============================================================

#priority 2000
import mods.bloodmagic.BloodAltar;

//移除配方 移除的是 输入的物品
BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.addRecipe(<bloodmagic:slate>, <roots:runestone>, 0, 1000, 5, 5);

#BloodAltar.addRecipe(<bloodmagic:slate:1>,<bloodmagic:slate>, 1, 1000, 5, 5);

