##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     cot 工作台合成
##================================================
#modloaded higanbanautils
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
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


