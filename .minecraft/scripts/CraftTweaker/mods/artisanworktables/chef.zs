##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 厨师工作台
##================================================
#modloaded higanbana
#priority 2000

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


    <roots:wildroot_stew>,


    <tp:redstone_apple>,
    <tp:emerald_apple>,
    <tp:diamond_apple>,
    <tp:iron_apple>,
    <tp:cooked_apple>,

] as IIngredient[];

var chefToolItem = [
    <roots:wildewheet_bread>,
    <minecraft:rabbit_stew>,
    <minecraft:mushroom_stew>,
    <minecraft:bread>,
    <minecraft:speckled_melon>,

    <tp:bacon_sandwhich>,
    <tp:bacon_eggs>,
    <tp:bams_pizza>,
    <tp:chicken_sandwhich>,
    <tp:rabbit_sandwhich>,
    <tp:beef_sandwhich>,
    <tp:bacon_eggs_sandwhich>,
    <tp:bread_slice>,
    <tp:bsc_sugar_cookie>,

] as IIngredient[];


RecipeBuilder.get("chef")
  .setCopy(Copy.byOutput(chefItem))
  .setFluid(<liquid:water> * 250)
  .create();

for item in chefItem
{
    recipes.remove(item);
}


RecipeBuilder.get("chef")
  .setCopy(Copy.byOutput(chefToolItem))
  .addTool(<ore:artisansPan>, 2)
  .setFluid(<liquid:water> * 250)
  .create();

for item in chefToolItem
{
    recipes.remove(item);
}
