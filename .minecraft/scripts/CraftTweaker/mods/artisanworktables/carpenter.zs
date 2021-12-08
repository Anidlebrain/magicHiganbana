##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 木匠工作台
##================================================
#priority 2000
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var carpenterItem = [

    <arcanearchives:radiant_chest>,

    <farmingforblockheads:market>,

    <minecraft:jukebox>,
    <minecraft:bowl>,
    <minecraft:bookshelf>,
    <minecraft:boat>,
    <minecraft:spruce_boat>,
    <minecraft:birch_boat>,
    <minecraft:jungle_boat>,
    <minecraft:acacia_boat>,
    <minecraft:dark_oak_boat>,
    <minecraft:purple_shulker_box>,
    <minecraft:ladder>,
    <minecraft:torch>,
    <minecraft:fishing_rod>,
    <minecraft:chest>,
    <minecraft:wooden_pressure_plate>,
    <minecraft:wooden_door>,
    <minecraft:spruce_door>,
    <minecraft:birch_door>,
    <minecraft:jungle_door>,
    <minecraft:dark_oak_door>,
    <minecraft:wooden_button>,
    <minecraft:trapdoor>,
    <minecraft:armor_stand>,
    <minecraft:trapped_chest>,


    <roots:wildwood_trapdoor>,
    <roots:wildwood_ladder>,
    <roots:wildwood_pressure_plate>,
    <roots:wildwood_door>,

    
    <skyresources:waterextractor>,

    <techreborn:treetap>,
    <tconstruct:wooden_hopper>,
    <tconstruct:tooltables:1>,
    <tconstruct:tooltables:2>,
    <tconstruct:tooltables:3>,
    <tconstruct:tooltables:4>,
    <tconstruct:tooltables:5>,
    <tconstruct:pattern>,


] as IIngredient[];

var carpenterNotItem = [
    <roots:wildwood_button>,
] as IIngredient[];


RecipeBuilder.get("carpenter")
  .setCopy(Copy.byOutput(carpenterItem)
             .replaceInput(<minecraft:crafting_table>, <artisanworktables:worktable:5>))
  .addTool(<ore:artisansDriver>, 1)
  .create();

for item in carpenterItem
{
    recipes.remove(item);
}

RecipeBuilder.get("carpenter")
  .setCopy(Copy.byOutput(carpenterNotItem)
             .replaceInput(<minecraft:crafting_table>, <artisanworktables:worktable:5>))
  .addTool(<ore:artisansDriver>, 1)
  .create();

for kinds in 0 .. 16
{//床
    recipes.remove(<minecraft:bed>.definition.makeStack(kinds));
    var wool = <minecraft:wool>.definition.makeStack(kinds);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [wool, wool, wool],
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
        [null, null, null]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<minecraft:bed>.definition.makeStack(kinds))
      .create();
}