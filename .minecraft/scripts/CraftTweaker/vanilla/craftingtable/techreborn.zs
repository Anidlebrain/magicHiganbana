##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     科技复兴 工作台合成
##================================================
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{

    //铜制导线
    recipes.remove(<techreborn:cable>);
    RecipeBuilder.get("engineer")
      .setShapeless([<immersiveengineering:metal_decoration0:0>])
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<techreborn:cable:0>)
      .create();

    //锡制导线
    recipes.remove(<techreborn:cable:1>);
    RecipeBuilder.get("engineer")
      .setShapeless([<contenttweaker:tin_wire>])
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<techreborn:cable:0>)
      .create();

    //金制导线
    recipes.remove(<techreborn:cable:2>);
    RecipeBuilder.get("engineer")
      .setShapeless([<immersiveengineering:metal_decoration0:1>])
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<techreborn:cable:0>)
      .create();

    //高压导线
    recipes.remove(<techreborn:cable:3>);
    RecipeBuilder.get("engineer")
      .setShapeless([<immersiveengineering:metal_decoration0:2>])
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<techreborn:cable:3>)
      .create();

    //电路板
    recipes.remove(<techreborn:part:29>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<techreborn:cable:5>, <techreborn:cable:5>, <techreborn:cable:5>],
        [<prodigytech:circuit_refined>, <techreborn:plates:35>, <prodigytech:circuit_refined>],
        [<techreborn:cable:5>, <techreborn:cable:5>, <techreborn:cable:5>]])
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<techreborn:part:29>)
      .create();

    //高级电路板
    recipes.remove(<techreborn:part:30>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<ore:plateRedstone>, <techreborn:cable:5>, <ore:plateRedstone>],
        [<ore:plateelectrum>, <techreborn:part:29>, <ore:plateelectrum>],
        [<ore:plateRedstone>, <techreborn:cable:5>, <ore:plateRedstone>]])
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<techreborn:part:30>)
      .create();

    //控制电路加工
    recipes.remove(<techreborn:assembling_machine>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<techreborn:part:30>, <minecraft:piston>, <techreborn:part:30>],
        [<techreborn:plates:17>, <techreborn:machine_casing:1>, <techreborn:plates:17>],
        [<techreborn:part:30>, <techreborn:plates:17>, <techreborn:part:30>]])
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<techreborn:assembling_machine>)
      .create();

    //铱强化石
    recipes.remove(<techreborn:storage2:2>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.centreCrossitem(<techreborn:plates:38>, <techreborn:plates:2>, <naturesaura:infused_stone>))
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<techreborn:storage2:2>)
      .create();

    //强化铱钨钢混合块
    recipes.remove(<techreborn:storage2:1>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.crossItems(<techreborn:ingot:17>, <techreborn:storage2:2>))
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<techreborn:storage2:2>)
      .create();

    //木板
    //recipesUtils.addShapeless(<techreborn:plates:3>, [<ore:plankWood>, <ore:plankWood>, <immersiveengineering:tool>]);
    
}

function itemRemove()
{
    //导线
    recipes.removeByRecipeName("techreborn:cable_6");
    recipes.removeByRecipeName("techreborn:cable_7");
    recipes.removeByRecipeName("techreborn:cable_9");
    recipes.removeByRecipeName("techreborn:cable_11");
    recipes.removeByRecipeName("techreborn:cable");

    //能量水晶
    recipes.removeByRecipeName("techreborn:energycrystal");
    
    //线缆加工机
    //itemHelper.removeItem(<techreborn:wire_mill>);

    //合金炉
    //itemHelper.removeItem(<techreborn:iron_alloy_furnace>);
    //itemHelper.removeItem(<techreborn:alloy_smelter>);

    //UU物质
    itemHelper.removeItem(<techreborn:uumatter>);

    //黄铜
    //itemHelper.removeItem(<techreborn:ingot:1>);
    
}

if (!isInvalid)
{
    init();
}