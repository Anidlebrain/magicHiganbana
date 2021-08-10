##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     通用机械 化学结晶机
##================================================
#priority 2000
import mods.mekanism.chemical.crystallizer;
//mods.mekanism.chemical.crystallizer.addRecipe(IGasStack inputGas, IItemStack outputStack);

crystallizer.addRecipe(<gas:water>, <minecraft:ice>);

crystallizer.addRecipe(<gas:iodine>, <item:contenttweaker:iodine_crystal>);
