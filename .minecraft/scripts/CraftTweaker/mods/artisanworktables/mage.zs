##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 法师工作台
##================================================
#modloaded higanbana
#priority 2000

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var mageItem = [
    <tp:small_bandage>,
    <tp:small_med_kit>,
    <tp:large_med_kit>,
    <tp:large_bandage>,
    
] as IIngredient[];

var mageName = [

] as string[];

RecipeBuilder.get("mage")
  .setCopy(Copy.byOutput(mageItem))
  .create();

for item in mageItem
{
    recipes.remove(item);
}


for recipeName in mageName
{
    recipes.removeByRecipeName(recipeName);
    RecipeBuilder.get("mage")
      .setCopy(Copy.byName(recipeName))
      .create();
}