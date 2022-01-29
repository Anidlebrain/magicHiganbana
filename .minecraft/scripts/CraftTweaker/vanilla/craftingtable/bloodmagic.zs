##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     血魔法 工作台合成
##================================================
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    recipesInit();
}

function recipesInit()
{
    //狱火熔炉
    recipes.remove(<bloodmagic:soul_forge>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<bloodmagic:monster_soul>, <skyresources:alchemyitemcomponent:7>, <bloodmagic:monster_soul>],
        [<ore:bricksStone>, <minecraft:furnace>, <ore:bricksStone>],
        [<ore:bricksStone>, <ore:blockIron>, <ore:bricksStone>]])
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<bloodmagic:soul_forge>)
      .create();

    //血之祭坛
    recipes.remove(<bloodmagic:altar>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<ore:bricksStone>, null, <ore:bricksStone>],
        [<ore:bricksStone>, <contenttweaker:alchemical_frame>, <ore:bricksStone>],
        [<skyresources:alchemyitemcomponent:7>, <bloodmagic:monster_soul>, <skyresources:alchemyitemcomponent:7>]])
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<bloodmagic:altar>)
      .create();
}

if (!isInvalid)
{
    init();
}