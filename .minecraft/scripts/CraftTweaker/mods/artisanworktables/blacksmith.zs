##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 铁匠工作台
##================================================
#priority 2000
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var blacksmithItem = [
    <minecraft:shield>,
    <minecraft:chest_minecart>,
    <minecraft:furnace_minecart>,
    <minecraft:tnt_minecart>,
    <minecraft:hopper_minecart>,
    <minecraft:bucket>,
    <minecraft:compass>,
    <minecraft:light_weighted_pressure_plate>,
    <minecraft:heavy_weighted_pressure_plate>,
    <minecraft:tipped_arrow>,

    <roots:reinforced_pyre>,

    <skyresources:diamondgrinder>,
    <skyresources:irongrinder>,
    <skyresources:stonegrinder>,

] as IIngredient[];


RecipeBuilder.get("blacksmith")
  .setCopy(Copy.byOutput(blacksmithItem))
  .addTool(<ore:artisansShears>, 10)
  .create();

for item in blacksmithItem
{
    recipes.remove(item);
}