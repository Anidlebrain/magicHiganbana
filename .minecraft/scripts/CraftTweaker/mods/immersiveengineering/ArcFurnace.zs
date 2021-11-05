##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     沉浸工程 电弧炉
##================================================

#priority 2000
import mods.immersiveengineering.ArcFurnace;

//Example:
//ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives, @Optional String specialRecipeType);

//合金锭
recipes.remove(<techreborn:ingot:21>);
ArcFurnace.addRecipe(<techreborn:ingot:21>, <ore:ingotBronze> * 3, null, 2000, 2048, [<ore:ingotIronCompressed> * 3, <ore:ingotSilver> * 3], "Alloying");

//铱合金锭
recipes.remove(<techreborn:ingot:22>);
ArcFurnace.addRecipe(<techreborn:ingot:22>, <ore:ingotIridium> * 3, null, 2000, 2048, [<techreborn:plates:36> * 3, <ore:dustDiamond> * 3], "Alloying");

//黄铜
ArcFurnace.removeRecipe(<techreborn:ingot:1>);