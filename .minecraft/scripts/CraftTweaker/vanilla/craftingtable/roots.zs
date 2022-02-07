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
    recipesRemove();
    itemRemove();
}

function recipesInit()
{
    //柴堆
    recipes.remove(<roots:pyre>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [null, <botania:livingwood>],
        [<botania:livingwood>, <ore:powderMana>, <botania:livingwood>],
        [<minecraft:stonebrick:2>, <roots:terra_moss>, <minecraft:stonebrick:2>]])
      .addTool(<ore:artisansFramingHammer>, 3)
      .addOutput(<roots:pyre>)
      .create();
    
    //注造器
    recipes.remove(<roots:imbuer>);
    RecipeBuilder.get("carpenter")
      .setShaped(recipesUtils.centreCrossitem(<ore:stickWood>, <ore:wildroot>, <ore:bricksStone>))
      .addTool(<ore:artisansFramingHammer>, 2)
      .addOutput(<roots:imbuer>)
      .create();
    
    //野木符文
    recipes.remove(<roots:wildroot_rune>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<roots:runed_wildwood>, <ore:wildroot>],
        [<ore:wildroot>, <ore:randomThingsRuneDust>]])
      .addTool(<ore:artisansFramingHammer>, 1)
      .addOutput(<roots:wildroot_rune>)
      .create();
}

function itemRemove()
{
    //木剪
    itemHelper.removeItem(<roots:wooden_shears>);
}

function recipesRemove()
{
    //研钵 研杵
    recipes.remove(<roots:pestle>);
    recipes.remove(<roots:mortar>);
}

if (!isInvalid)
{
    init();
}
