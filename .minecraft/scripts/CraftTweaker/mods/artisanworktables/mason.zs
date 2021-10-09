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

    <roots:runestone_pressure_plate>,
    <roots:runed_obsidian>,
    <roots:runed_obsidian_brick>,
    <roots:runed_obsidian_brick_alt>,
    <roots:chiseled_runed_obsidian>,
    <roots:runestone_brick_pressure_plate>,
    <roots:runestone_brick_alt_pressure_plate>,
    <roots:runed_obsidian_button>,
    <roots:runed_obsidian_pressure_plate>,
    <roots:runed_obsidian_brick_button>,
    <roots:runed_obsidian_brick_pressure_plate>,
    <roots:runed_obsidian_brick_alt_button>,
    <roots:runed_obsidian_brick_alt_pressure_plate>,
    




] as IIngredient[];


var masonNotItem = [
    <minecraft:stone_button>,
    <roots:runestone_brick_button>,
    <roots:runed_obsidian_button>,
    <roots:runed_obsidian_brick_button>,
    <roots:runed_obsidian_brick_alt_button>,
    <roots:runestone_button>,

] as IIngredient[];

var masonName = [
    "roots:runestone_brick_unslab",
    "roots:runestone_brick_alt_unslab",
    "roots:runestone_unslab",

] as string[];



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


for recipeName in masonName
{
    recipes.removeByRecipeName(recipeName);
    RecipeBuilder.get("mason")
      .setCopy(Copy.byName(recipeName))
      .create();
}