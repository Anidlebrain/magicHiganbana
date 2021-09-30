##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     沉浸工程 合金窑
##================================================
#priority 2000
import mods.immersiveengineering.AlloySmelter;

//合金的配方注意转移其他mod的合金合成 除了匠魂以外的合金配方都应包含
//合金窑 为第一级合金机器，后续的合金机器理应都包含

AlloySmelter.removeAll();

//爆裂粉
AlloySmelter.addRecipe(<contenttweaker:explosive_dust> * 2, <minecraft:gunpowder> * 3, <minecraft:blaze_powder> * 2, 200);


//低级炼金粉尘
mods.skyresources.combustion.removeRecipe(<skyresources:alchemyitemcomponent:2>);
AlloySmelter.addRecipe(<skyresources:alchemyitemcomponent:2> * 4, <contenttweaker:explosive_dust> * 5, <minecraft:coal:1> * 3, 200);

//岩浆膏
recipes.removeByRecipeName("minecraft:magma_cream");
AlloySmelter.addRecipe(<minecraft:magma_cream>, <minecraft:blaze_powder>, <minecraft:slime_ball>, 200);

//模块化合金
recipes.remove(<modularmachinery:itemmodularium>);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium>, <skyresources:alchemyitemcomponent:7>, <skyresources:alchemyitemcomponent:8>, 2000);