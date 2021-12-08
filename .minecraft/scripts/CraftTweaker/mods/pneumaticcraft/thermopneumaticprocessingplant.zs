##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     气动工艺 热动力加工
##================================================
#priority 2000
import mods.pneumaticcraft.thermopneumaticprocessingplant;
/*
// Add a recipe converting an input item into an output fluid
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(IItemStack itemInput, double pressure, double temperature, ILiquidStack output);

// Add a recipe converting an input fluid and item into an output fluid (item may be null)
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(ILiquidStack liquidInput, IItemStack itemInput, double pressure, double temperature, ILiquidStack output);

// Example: convert water and redstone to some redstone fluid at 3.0 bar and 473K (200C)
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water>, <item:redstone>, 3.0, 473, <liquid:redstone> * 250);
// Example: convert 10mB oil into 5mB lava at 3.0 bar and 473K
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:oil> * 10, null, 3.0, 473, <liquid:lava> * 5);
// Example: convert 1 netherrack into 50mB lava at 1.5 bar and 573K
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<minecraft:netherrack>, 1.5, 573, <liquid:lava> * 50);

*/


//碘酒
//thermopneumaticprocessingplant.addRecipe(<liquid:ethanol> * 80, <harvestcraft:seaweeditem>, 3.0, 333, <liquid:iodine> * 80);

//液态塑料
thermopneumaticprocessingplant.removeRecipe(<liquid:plastic>);
thermopneumaticprocessingplant.addRecipe(<liquid:lpg> * 1000, <mekanism:polyethene:2>, 0.0, 373, <liquid:plastic> * 1000);



