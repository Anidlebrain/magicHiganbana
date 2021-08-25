##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     工匠之作 基础工作台
##================================================

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var basicItem = [
    <roots:wood_knife>,
    <roots:gold_knife>,
    <minecraft:snow_layer>,
] as IIngredient[];

var basicNotItem = [
    <skyresources:minifreezer>,
    <skyresources:heavyexplosivesnowball>,
    <minecraft:dirt:1>,
    <minecraft:dye:15>,
] as IIngredient[];


var basicOre = [
    <ore:paneGlass>
] as IOreDictEntry[];

var basicNotOre = [
    <ore:plankWood>,
    <ore:stickWood>,
    <ore:treeSapling>,
    <ore:plankWood>,
] as IOreDictEntry[];

var basicNotName = [
    "minecraft:snow",

] as string[];


RecipeBuilder.get("basic")
  .setCopy(Copy.byOutput(basicItem))
  .create();

RecipeBuilder.get("basic")
  .setCopy(Copy.byOutput(basicNotItem))
  .create();


for ore in basicNotOre
{
    for item in ore.items
    {
        RecipeBuilder.get("basic")
          .setCopy(Copy.byOutput(basicNotItem))
          .create();
    }
}

for recipeName in basicNotName
{
    RecipeBuilder.get("basic")
      .setCopy(Copy.byName(recipeName))
      .create();
}


for item in basicItem
{
    recipes.remove(item);
}

//木匠工作台
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, <artisanworktables:worktable:5>, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<artisanworktables:worktable:1>)
  .create();

//铁匠工作台
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotIron>, <artisanworktables:worktable:5>, <ore:ingotIron>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]])
  .addTool(<ore:artisansDriver>, 10)
  .addOutput(<artisanworktables:worktable:3>)
  .create();

//农夫工作台
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:grass>, <minecraft:grass>, <minecraft:grass>],
    [<randomthings:coloredgrass:1>, <artisanworktables:worktable:5>, <randomthings:coloredgrass:1>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansChisel>, 10)
  .addOutput(<artisanworktables:worktable:10>)
  .setFluid(<liquid:water> * 1000)
  .create();

//石匠工作台
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:slabBricks>, <ore:slabBricks>, <ore:slabBricks>],
    [<minecraft:brick_block>, <artisanworktables:worktable:5>, <minecraft:brick_block>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<artisanworktables:workstation:2>)
  .create();

//小刀
recipes.remove(<skyresources:cactuscuttingknife>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <skyresources:alchemyitemcomponent>, null],
    [<skyresources:alchemyitemcomponent>, <ore:stickWood>, null],
    [<skyresources:alchemyitemcomponent>, null, <ore:stickWood>]])
  .addTool(<ore:artisansChisel>, 1)
  .addOutput(<skyresources:cactuscuttingknife>)
  .create();

//小刀
recipes.remove(<skyresources:stonecuttingknife>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:cobblestone>, <ore:stickWood>],
    [<ore:cobblestone>, <ore:stickWood>, null],
    [<ore:cobblestone>, null, null]])
  .addTool(<ore:artisansChisel>, 1)
  .addOutput(<skyresources:stonecuttingknife>)
  .create();

//小刀
recipes.remove(<skyresources:ironcuttingknife>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:iron_ingot>, <ore:stickWood>, null],
    [<minecraft:iron_ingot>, null, <ore:stickWood>]])
  .addTool(<ore:artisansChisel>, 1)
  .addOutput(<skyresources:ironcuttingknife>)
  .create();

//小刀
recipes.remove(<skyresources:diamondcuttingknife>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:diamond>, null],
    [<minecraft:diamond>, <ore:stickWood>, null],
    [<minecraft:diamond>, null, <ore:stickWood>]])
  .addTool(<ore:artisansChisel>, 1)
  .addOutput(<skyresources:diamondcuttingknife>)
  .create();

