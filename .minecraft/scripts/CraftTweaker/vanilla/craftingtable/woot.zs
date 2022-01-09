##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     生物工厂 工作台合成
##================================================
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;


function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{
    //ya锤
    recipes.remove(<woot:yahhammer>);
    recipes.remove(<minecraft:chest>);
    RecipeBuilder.get("blacksmith")
      .setShaped([
        [null, <ore:stickTreatedWood>, <woot:stygianironingot>],
        [<ore:plankWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>],
        [<ore:stickTreatedWood>, <ore:plankWood>, null]])
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<woot:yahhammer>)
      .create();
    
    //地狱铁矿
    recipes.remove(<woot:stygianironore>);

    //腐肉工厂方块
    recipes.remove(<woot:structure>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.centreCrossitem(<xreliquary:mob_ingredient:6>, <woot:factorybase>, <woot:factorycore>))
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<woot:structure>)
      .create();
    
    //骨头工厂方块
    recipes.remove(<woot:structure:1>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.centreCrossitem(<xreliquary:mob_ingredient>, <woot:factorybase>, <woot:factorycore>))
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<woot:structure:1>)
      .create();

    //烈焰工厂方块
    recipes.remove(<woot:structure:2>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.centreCrossitem(<xreliquary:mob_ingredient:7>, <woot:factorybase>, <woot:factorycore>))
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<woot:structure:2>)
      .create();

    //下界之心工厂方块
    recipes.remove(<woot:structure:4>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.centreCrossitem(<woot:shard:3>, <woot:factorybase>, <woot:factorycore>))
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<woot:structure:4>)
      .create();

    //地狱铁砧
    recipes.remove(<woot:anvil>);
    RecipeBuilder.get("blacksmith")
      .setShaped([
        [<woot:stygianiron>, <woot:stygianiron>, <woot:stygianiron>],
        [null, <woot:stygianiron>, null],
        [<ore:blockSkyStone>, <ore:blockSkyStone>, <ore:blockSkyStone>]])
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<woot:anvil>)
      .create();
    
}

function itemRemove()
{
    
}

if (!isInvalid)
{
    init();
}