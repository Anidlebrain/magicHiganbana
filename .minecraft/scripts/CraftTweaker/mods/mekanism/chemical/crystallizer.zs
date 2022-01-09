##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     通用机械 化学结晶机
##================================================
#modloaded higanbana
#priority 2000

import mods.mekanism.chemical.crystallizer;
//mods.mekanism.chemical.crystallizer.addRecipe(IGasStack inputGas, IItemStack outputStack);

crystallizer.addRecipe(<gas:water>, <minecraft:ice>);

crystallizer.addRecipe(<gas:iodine>, <item:contenttweaker:iodine_crystal>);
