##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     工匠之作 基础工作台
##================================================

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var basicItem = [
    

    <minecraft:snow_layer>,

    <roots:wood_knife>,
    <roots:gold_knife>,

    <skyresources:cactuscuttingknife>,
    <skyresources:stonecuttingknife>,
    <skyresources:ironcuttingknife>,
    <skyresources:diamondcuttingknife>,
    <skyresources:cactusfruitneedle>,
    

] as IIngredient[];

var basicNotItem = [
    <minecraft:dirt:1>,
    <minecraft:dye:15>,

    <skyresources:minifreezer>,
    <skyresources:heavyexplosivesnowball>,
    <skyresources:heavysnow>,
    <skyresources:fleshysnownugget>,
] as IIngredient[];


var basicOre = [
    <ore:paneGlass>
] as IOreDictEntry[];

var basicNotOre = [
    <ore:plankWood>,
    <ore:stickWood>,
    <ore:treeSapling>,
    <ore:plankWood>,
] as IOreDictEntry[];

var basicNotName = [
    "minecraft:snow",

] as string[];


RecipeBuilder.get("basic")
  .setCopy(Copy.byOutput(basicItem))
  .create();

for item in basicItem
{
    recipes.remove(item);
}

RecipeBuilder.get("basic")
  .setCopy(Copy.byOutput(basicNotItem))
  .create();


for ore in basicNotOre
{
    RecipeBuilder.get("basic")
        .setCopy(Copy.byOutput(ore.items))
        .create();
}

for recipeName in basicNotName
{
    RecipeBuilder.get("basic")
      .setCopy(Copy.byName(recipeName))
      .create();
}


