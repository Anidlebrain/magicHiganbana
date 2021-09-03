##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 石匠工作台
##================================================
#priority 2000
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var masonItem = [
    
    <minecraft:dispenser>,
    <minecraft:sticky_piston>,
    <minecraft:lever>,
    <minecraft:stone_pressure_plate>,
    <minecraft:redstone_lamp>,
    <minecraft:tripwire_hook>,
    <minecraft:dropper>,
    <minecraft:repeater>,
    <minecraft:comparator>,


] as IIngredient[];


var masonNotItem = [
    <minecraft:stone_button>,

] as IIngredient[];

RecipeBuilder.get("mason")
  .setCopy(Copy.byOutput(masonItem))
  .create();

for item in masonItem
{
    recipes.remove(item);
}

RecipeBuilder.get("mason")
  .setCopy(Copy.byOutput(masonNotItem))
  .create();