import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;


var farmerItem = [
    <minecraft:string>,
    <minecraft:dirt>,

] as IIngredient[];

var farmerOre = [
    <ore:dye>,
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