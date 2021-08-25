##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     工匠之作 木匠工作台
##================================================

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var carpenterItem = [
    <skyresources:waterextractor>,
    <techreborn:treetap>,
    <tconstruct:wooden_hopper>,
    <minecraft:jukebox>,
    <minecraft:bowl>,
    <minecraft:bookshelf>,
    <minecraft:boat>,
    <minecraft:spruce_boat>,
    <minecraft:birch_boat>,
    <minecraft:jungle_boat>,
    <minecraft:acacia_boat>,
    <minecraft:dark_oak_boat>,
    <tconstruct:tooltables:1>,
    <tconstruct:tooltables:2>,
    <tconstruct:tooltables:3>,
    <tconstruct:tooltables:4>,
    <tconstruct:tooltables:5>,
    <tconstruct:pattern>,
    <farmingforblockheads:market>,
    <harvestcraft:market>,
    <harvestcraft:shippingbin>,
    <minecraft:purple_shulker_box>,
    <minecraft:ladder>,
    <minecraft:torch>,
    <minecraft:fishing_rod>,
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



//箱子
recipes.remove(<minecraft:chest>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<minecraft:chest>)
  .create();

for kinds in 0 .. 15
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

//木质压力板
recipes.remove(<minecraft:wooden_pressure_plate>);
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:plankWood>, <ore:plankWood>])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<minecraft:wooden_pressure_plate>)
  .create();

//木门
recipes.remove(<minecraft:wooden_door>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>],
    [<minecraft:planks>, <minecraft:planks>],
    [<minecraft:planks>, <minecraft:planks>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<minecraft:wooden_door>)
  .create();

//木门
recipes.remove(<minecraft:spruce_door>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:planks:1>, <minecraft:planks:1>],
    [<minecraft:planks:1>, <minecraft:planks:1>],
    [<minecraft:planks:1>, <minecraft:planks:1>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<minecraft:spruce_door>)
  .create();

//木门
recipes.remove(<minecraft:birch_door>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:planks:2>, <minecraft:planks:2>],
    [<minecraft:planks:2>, <minecraft:planks:2>],
    [<minecraft:planks:2>, <minecraft:planks:2>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<minecraft:birch_door>)
  .create();

//木门
recipes.remove(<minecraft:jungle_door>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:planks:3>, <minecraft:planks:3>],
    [<minecraft:planks:3>, <minecraft:planks:3>],
    [<minecraft:planks:3>, <minecraft:planks:3>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<minecraft:jungle_door>)
  .create();

//木门
recipes.remove(<minecraft:dark_oak_door>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:planks:1>, <minecraft:planks:1>],
    [<minecraft:planks:1>, <minecraft:planks:1>],
    [<minecraft:planks:1>, <minecraft:planks:1>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<minecraft:dark_oak_door>)
  .create();

//木门
recipes.remove(<roots:wildwood_door>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<roots:wildwood_planks>, <roots:wildwood_planks>],
    [<roots:wildwood_planks>, <roots:wildwood_planks>],
    [<roots:wildwood_planks>, <roots:wildwood_planks>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<roots:wildwood_door>)
  .create();

//按钮
recipes.remove(<minecraft:wooden_button>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<roots:wildwood_planks>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<minecraft:wooden_button>)
  .create();

//活板门
recipes.remove(<minecraft:trapdoor>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<minecraft:trapdoor>)
  .create();

