##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 炼金工作台
##================================================
#modloaded higanbanautils
#priority 2000

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var chemistItem = [

    <minecraft:slime_ball>,

] as IIngredient[];


RecipeBuilder.get("chemist")
  .setCopy(Copy.byOutput(chemistItem))
  .create();

for item in chemistItem
{
    recipes.remove(item);
}
