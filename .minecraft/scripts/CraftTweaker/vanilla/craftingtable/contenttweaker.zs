##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     cot 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    recipesInit();
}

function recipesInit() {

    //火柴
    RecipeBuilder.get("basic")
      .setShaped([
        [null, <minecraft:coal:1>],
        [<ore:stickWood>, null]])
      .addOutput(<contenttweaker:match_stick>)
      .create();
    RecipeBuilder.get("jeweler")
      .setShaped([
        [<randomthings:ingredient:3>, <randomthings:ingredient:3>, <randomthings:ingredient:3>, null, null],
        [<randomthings:ingredient:3>, <actuallyadditions:block_crystal_empowered:2>, null, null, null],
        [<randomthings:ingredient:3>, null, <contenttweaker:space_key>, null, null],
        [null, null, null, <actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal_empowered:2>],
        [null, null, null, <actuallyadditions:block_crystal_empowered:2>, <randomthings:ingredient:3>]])
      .setSecondaryIngredients([<astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent>, 
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent>])
      .addTool(<ore:artisansPencil>, 1)
      .addTool(<ore:artisansLens>, 1)
      .addTool(<ore:artisansGemCutter>, 1)
      .addOutput(<randomthings:spectrekey>)
    .create();

    //链接粘合剂
    RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:dustObsidian>, <minecraft:redstone>, <ore:dustObsidian>],
    [<minecraft:redstone>, <ore:dustObsidian>, <minecraft:redstone>],
    [<ore:dustObsidian>, <minecraft:redstone>, <ore:dustObsidian>]])
  .setFluid(<liquid:magma_fluid> * 1000)
  .addTool(<ore:artisansBurner>, 2)
  .addOutput(<contenttweaker:link_adhesive>*3)
  .create();
}

if (!isInvalid)
{
    init();
}


