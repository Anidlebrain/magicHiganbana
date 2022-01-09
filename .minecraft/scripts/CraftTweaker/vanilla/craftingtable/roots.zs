##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     根源魔法 工作台合成
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
}

function recipesInit()
{

    //研钵
    recipes.remove(<roots:mortar>);
    RecipeBuilder.get("farmer")
      .setShaped([
        [<prodigytech:ash_bricks>, null, <prodigytech:ash_bricks>],
        [<prodigytech:ash_bricks>, null, <prodigytech:ash_bricks>],
        [null, <embers:block_caminite_brick>, null]])
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<roots:mortar>)
      .create();
    
    //研杵
    recipes.remove(<roots:pestle>);
    RecipeBuilder.get("farmer")
      .setShaped([
        [null, null, <embers:block_caminite_brick>],
        [<prodigytech:ash_bricks>, <prodigytech:ash_bricks>, null],
        [<prodigytech:ash_bricks>, <prodigytech:ash_bricks>, null]])
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<roots:pestle>)
      .create();

    //柴堆
    recipes.remove(<roots:pyre>);
    RecipeBuilder.get("farmer")
      .setShaped([
        [null, <botania:livingwood>, null],
        [<botania:livingwood>, <ore:powderMana>, <botania:livingwood>],
        [<minecraft:stonebrick:2>, <roots:terra_moss>, <minecraft:stonebrick:2>]])
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<roots:pyre>)
      .create();
    
    //注造器
    recipes.remove(<roots:imbuer>);
    RecipeBuilder.get("farmer")
      .setShaped(recipesUtils.centreCrossitem(<ore:stickWood>, <ore:wildroot>, <ore:bricksStone>))
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<roots:imbuer>)
      .create();
}

function itemRemove()
{
    //木剪
    itemHelper.removeItem(<roots:wooden_shears>);
}

if (!isInvalid)
{
    init();
}