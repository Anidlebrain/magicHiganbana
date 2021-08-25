##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     工匠之作 铁匠工作台
##================================================

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var blacksmithItem = [
    <minecraft:shield>,
    <skyresources:diamondgrinder>,
    <skyresources:irongrinder>,
    <skyresources:stonegrinder>,
    <harvestcraft:cuttingboarditem>,
    <harvestcraft:potitem>,
    <harvestcraft:skilletitem>,
    <harvestcraft:saucepanitem>,
    <harvestcraft:bakewareitem>,
    <harvestcraft:mortarandpestleitem>,
    <harvestcraft:mixingbowlitem>,
    <harvestcraft:juiceritem>
] as IIngredient[];


RecipeBuilder.get("blacksmith")
  .setCopy(Copy.byOutput(blacksmithItem))
  .addTool(<ore:artisansShears>, 10)
  .create();

for item in blacksmithItem
{
    recipes.remove(item);
}