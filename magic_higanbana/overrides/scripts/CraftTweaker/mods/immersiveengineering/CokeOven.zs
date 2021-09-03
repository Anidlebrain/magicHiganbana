##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     沉浸工程 焦炉
##================================================

#priority 2000
import mods.immersiveengineering.CokeOven;


//删除所有配方
CokeOven.removeAll();

//木炭
CokeOven.addRecipe(<minecraft:coal:1>, 50, <skyresources:baseitemcomponent>, 1200);

//焦煤
CokeOven.addRecipe(<immersiveengineering:material:6>, 100, <minecraft:coal>, 1200);

//焦煤块
CokeOven.addRecipe(<immersiveengineering:stone_decoration:3>, 1000, <minecraft:coal_block>, 13000);
