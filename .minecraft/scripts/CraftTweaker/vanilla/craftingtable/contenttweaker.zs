##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     cot 工作台合成
##================================================
#modloaded higanbana
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
      .addOutput(<contenttweaker:link_adhesive> * 3)
      .create();
    
    //未烧制的研钵
    RecipeBuilder.get("potter")
      .setShaped([
        [<ore:blockClay>, null, <ore:blockClay>],
        [<ore:blockClay>, null, <ore:blockClay>],
        [null, <ore:blockClay>]])
      .addOutput(<contenttweaker:unburned_mortar>)
      .create();
    
    //未烧制的研杵
    RecipeBuilder.get("potter")
      .setShaped([
        [null, null, <ore:blockClay>],
        [<ore:blockClay>, <ore:blockClay>],
        [<ore:blockClay>, <ore:blockClay>]])
      .addOutput(<contenttweaker:unburned_pestle>)
      .create();

    //升级灌注
    RecipeBuilder.get("basic")
      .setShapeless([<skyresources:baseitemcomponent>, <roots:spell_dust>.withTag({spell_storage: {s: "roots:spell_growth_infusion"}})])
      .addOutput(<contenttweaker:strengthen_growth_infusion>)
      .create();

    //木齿轮
    RecipeBuilder.get("potter")
      .setShaped([
        [null, <ore:pattern>],
        [<ore:pattern>, null,<ore:pattern>],
        [null, <ore:pattern>]])
      .addTool(<ore:artisansHandsaw>, 2)
      .addOutput(<ore:gearWood>.firstItem)
      .create();
      
}

if (!isInvalid)
{
    init();
}


