##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工作台合成
##================================================
#modloaded higanbana
#priority 2000

import scripts.CraftTweaker.vanilla.craftingtable;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.Copy;

function vanillaAddRecipes()
{

    //活塞
    recipes.remove(<minecraft:piston>);
    RecipeBuilder.get("farmer")
      .setShaped([
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
        [<ore:stone>, <ore:ingotCopper>, <ore:stone>],
        [<ore:stone>, <ore:dustRedstone>, <ore:stone>]])
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<minecraft:piston>)
      .create();

    //熔炉
    recipes.remove(<minecraft:furnace>);
    RecipeBuilder.get("farmer")
      .setShaped([
        [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
        [<ore:cobblestone>, <ore:coal>, <ore:cobblestone>],
        [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]])
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<minecraft:furnace>)
      .create();

    //骨头
    recipes.remove(<minecraft:bone>);
    RecipeBuilder.get("farmer")
      .setShapeless([<tp:bone_block>])
      .addOutput(<minecraft:bone> * 9)
      .create();

    //剪刀
    recipes.remove(<minecraft:shears>);
    RecipeBuilder.get("basic")
      .setShaped([
        [<minecraft:stick>, <minecraft:iron_ingot>],
        [<minecraft:iron_ingot>, <minecraft:stick>]])
      .addOutput(<minecraft:shears>)
      .create();
    
    RecipeBuilder.get("carpenter")
      .setCopy(Copy.byOutput(<ore:slabWood>.items))
      .addTool(<ore:artisansDriver>, 1)
      .create();
    
}

function vanillaRemoveRecipes()
{
    var removeItems = [
        <minecraft:crafting_table>,
        <minecraft:redstone>,
        <minecraft:rail>,
        <minecraft:detector_rail>,
        <minecraft:golden_rail>,
        <minecraft:activator_rail>,
        <minecraft:iron_door>,
        <minecraft:minecart>,
    ] as IIngredient[];

    for item in removeItems
    {
        recipes.remove(item);
    }
}

if (!isInvalid)
{
    vanillaAddRecipes();
    vanillaRemoveRecipes();
}
