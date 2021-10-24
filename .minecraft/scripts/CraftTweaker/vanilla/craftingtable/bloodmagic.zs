##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     血魔法 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
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

    /*
    //符文石
    recipes.remove(<bloodmagic:blood_rune>);
    recipesUtils.addRecipe(<bloodmagic:blood_rune>,
        ["AAA",
            "BCB",
            "AAA"],
        { A : <roots:runestone>,
            B : <bloodmagic:slate>,
            C : orb}
    );
    */

    //恶魔 气血碎片
    RecipeBuilder.get("chemist")
      .setShaped([
        [<bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>],
        [<bloodmagic:item_demon_crystal>, <extrautils2:ingredients:11>, <bloodmagic:slate:3>, <extrautils2:ingredients:11>, <bloodmagic:item_demon_crystal>],
        [<bloodmagic:item_demon_crystal>, <bloodmagic:slate:3>, <bloodmagic:blood_shard>, <bloodmagic:slate:3>, <bloodmagic:item_demon_crystal>],
        [<bloodmagic:item_demon_crystal>, <extrautils2:ingredients:11>, <bloodmagic:slate:3>, <extrautils2:ingredients:11>, <bloodmagic:item_demon_crystal>],
        [<bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>]])
      .setSecondaryIngredients([<bloodmagic:monster_soul:1>, <bloodmagic:monster_soul:2>, <bloodmagic:monster_soul:3>, <bloodmagic:monster_soul:4>])
      .addOutput(<bloodmagic:blood_shard:1>)
      .create();
}

if (!isInvalid)
{
    init();
}