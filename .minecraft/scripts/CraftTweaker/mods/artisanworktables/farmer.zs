##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 农夫工作台
##================================================
#modloaded higanbanautils
#priority 2000

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;


var farmerItem = [

    <botania:floatingspecialflower>,
    <botania:miniisland:0>,
    <botania:miniisland:1>,
    <botania:miniisland:2>,
    <botania:miniisland:3>,
    <botania:miniisland:4>,
    <botania:miniisland:5>,
    <botania:miniisland:6>,
    <botania:miniisland:7>,
    <botania:miniisland:8>,
    <botania:miniisland:9>,
    <botania:miniisland:10>,
    <botania:miniisland:11>,
    <botania:miniisland:12>,
    <botania:miniisland:13>,
    <botania:miniisland:14>,
    <botania:miniisland:15>,

    <minecraft:string>,
    <minecraft:dirt>,
    <minecraft:pumpkin>,
    <minecraft:melon_block>,
    <minecraft:lit_pumpkin>,
    <minecraft:netherrack>,
    <minecraft:soul_sand>,
    <minecraft:mycelium>,
    <minecraft:carrot_on_a_stick>,
    <minecraft:wheat>,
    <minecraft:hay_block>,
    <minecraft:paper>,

    <skyresources:wildlifeattractor>,

    <tp:bone_block>,
    
] as IIngredient[];

var farmerOre = [
    #<ore:dye>,
] as IOreDictEntry[];

var farmerNotOre = [
    <ore:listAllseed>,
    <ore:listAllsugar>,
] as IOreDictEntry[];

RecipeBuilder.get("farmer")
  .setCopy(Copy.byOutput(farmerItem))
  .create();

for item in farmerItem
{
    recipes.remove(item);
}

for ore in farmerOre
{
    RecipeBuilder.get("farmer")
      .setCopy(Copy.byOutput(ore.items))
      .create();
    for item in ore.items
    {
        recipes.remove(item);
    }
}

for ore in farmerNotOre
{
    RecipeBuilder.get("farmer")
      .setCopy(Copy.byOutput(ore.items))
      .create();
}