import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var chefItem = [
    <botania_tweaks:compressed_tiny_potato_1>,
    <botania_tweaks:compressed_tiny_potato_2>,
    <botania_tweaks:compressed_tiny_potato_3>,
    <botania_tweaks:compressed_tiny_potato_4>,
    <botania_tweaks:compressed_tiny_potato_5>,
    <botania_tweaks:compressed_tiny_potato_6>,
    <botania_tweaks:compressed_tiny_potato_7>,
    <botania_tweaks:compressed_tiny_potato_8>,
    <minecraft:golden_apple>,
    <minecraft:golden_apple:1>,
    <minecraft:rabbit_stew>,


    
] as IIngredient[];


RecipeBuilder.get("chef")
  .setCopy(Copy.byOutput(chefItem))
  .create();

for item in chefItem
{
    recipes.remove(item);
}

