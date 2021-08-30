##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     工匠之作 制陶师工作台
##================================================

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var potterItem = [

    <skyresources:sandynetherrack>,
    <skyresources:compressedcoalblock>,
    <skyresources:coalinfusedblock>,
    <skyresources:darkmatterblock>,
    <skyresources:alchemyitemcomponent:6>,
    <skyresources:baseitemcomponent:3>,

] as IIngredient[];

RecipeBuilder.get("potter")
  .setCopy(Copy.byOutput(potterItem))
  .addTool(<ore:artisansBurner>, 1)
  .create();

for item in potterItem
{
    recipes.remove(item);
}