##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 法师工作台
##================================================
#priority 2000
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var mageName = [
    "minecraft:snow",

] as string[];

for recipeName in mageName
{
    recipes.removeByRecipeName(recipeName);
    RecipeBuilder.get("basic")
      .setCopy(Copy.byName(recipeName))
      .create();
}