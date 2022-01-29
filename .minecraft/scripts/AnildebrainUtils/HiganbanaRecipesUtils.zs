##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     mod 配方函数
##=================================================

#modloaded higanbana
#priority 9999999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockState;
import thaumcraft.aspect.CTAspectStack;

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.MessageUtils;

import mods.Higanbana.IUtils;
import mods.ctutils.utils.Math;

function removeAlloySmelter(output as IItemStack, level as int) as void
{
    if(IUtils.bitwiseJudgment(level, 1)) {
        
    }
    if(IUtils.bitwiseJudgment(level, 2)) {
        mods.immersiveengineering.ArcFurnace.removeRecipe(output);
    }
    if(IUtils.bitwiseJudgment(level, 3)) {
        
    }
}

//星辉魔法 祭坛
function addAltarRecipe(output as IItemStack,
                   level as int,
                   starLight as int,
                   craftTickTime as int,
                   recipe as string[],
                   replacements as IIngredient[string],
                   iRequiredConstellationFocusName as string = "") as void
{
    var recipesNum = recipesUtils.getRecipesNum();
    if(1 == level) {
        var name = "MagicHiganbana/addDiscoveryAltarRecipe_" ~ recipesNum;
        mods.astralsorcery.Altar.addDiscoveryAltarRecipe(name, output, starLight, craftTickTime, 
            recipesUtils.altarTransformation(level, recipe, replacements));
    }
    else if(2 == level) {
        var name = "MagicHiganbana/addAttunmentAltarRecipe_" ~ recipesNum;
        mods.astralsorcery.Altar.addAttunementAltarRecipe(name, output, starLight, craftTickTime, 
            recipesUtils.altarTransformation(level, recipe, replacements));
    }
    else if(3 == level) {
        var name = "MagicHiganbana/addConstellationAltarRecipe_" ~ recipesNum;
        mods.astralsorcery.Altar.addConstellationAltarRecipe(name, output, starLight, craftTickTime,
            recipesUtils.altarTransformation(level, recipe, replacements));
    }
    else if(4 == level) {
        var name = "MagicHiganbana/addTraitAltarRecipe_" ~ recipesNum;
        if(iRequiredConstellationFocusName == "") {
            mods.astralsorcery.Altar.addTraitAltarRecipe(name, output, starLight, craftTickTime, 
                recipesUtils.altarTransformation(level, recipe, replacements));
        }
        else {
            mods.astralsorcery.Altar.addTraitAltarRecipe(name, output, starLight, craftTickTime, 
                recipesUtils.altarTransformation(level, recipe, replacements), iRequiredConstellationFocusName);
        }
    }
}

function addArcaneWorkbenchShapedRecipe(output as IItemStack,
                                        vis as int,
                                        input as IIngredient[][],
                                        aspectList as CTAspectStack[],
                                        research as string = "") as void
{
    var name = recipesUtils.getRecipeName(output);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(name, research, vis, 
        aspectList, output, input);
}

function addArcaneWorkbenchShapelessRecipe(output as IItemStack,
                                        vis as int,
                                        input as IIngredient[],
                                        aspectList as CTAspectStack[],
                                        research as string = "") as void
{
    var name = recipesUtils.getRecipeName(output);

    mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe(name, research, vis, 
        aspectList, output, input);
}

function addEmpowererRecipe(output as IItemStack, outputblock as IItemStack, inputs as IIngredient[]) as void
{
    var modid as string = output.definition.id.split(":")[0];
    if (modid == "actuallyadditions") {
        mods.actuallyadditions.Empowerer.removeRecipe(output);
        mods.actuallyadditions.Empowerer.removeRecipe(outputblock);
    }
    mods.actuallyadditions.Empowerer.addRecipe(output, inputs[0], inputs[2], inputs[3], inputs[4], inputs[5], 10000, 600, [Math.random(), Math.random(), Math.random()]);
    mods.actuallyadditions.Empowerer.addRecipe(outputblock, inputs[1], inputs[2], inputs[3], inputs[4], inputs[5], 10000, 600, [Math.random(), Math.random(), Math.random()]);

}

//圣遗物 配方转换
function reliquaryRecipe(output as IItemStack, inputs as IIngredient[], level as int) as void
{
    var modid as string = output.definition.id.split(":")[0];
    if (modid == "xreliquary") {
        recipes.remove(output);
    }
    else if (modid == "minecraft") {
        var recipre_name as string = "xreliquary:items/uncrafting/" ~ output.definition.id.split(":")[1];
        //print(recipre_name);
        recipes.removeByRecipeName(recipre_name);
    }
    mods.bloodmagic.AlchemyTable.addRecipe(output, inputs, 500 * (2 * level - 1), 200 * level, level);
}

function gaiaPlateRecipe(output as IItemStack, mana as int, inputs as IIngredient[]) as void
{
    if ((inputs.length % 2 == 0) || inputs.length > 7) {
        logger.logError("[gaiaPlateRecipe] - The input must be odd and less than seven");
        return ;
    }
    mods.botanicadds.GaiaPlate.add(output, mana, inputs);

    mods.jei.JEI.createJeiRecipe("gaia_plate")
      .setInputs(inputs)
      .addOutput(<botanicadds:gaia_plate>)
      .addOutput(output)
      .addOutput(<botanicadds:elven_lapis_block>)
      .addOutput(<botanicadds:elven_lapis_block>)
      .addOutput(<botanicadds:elven_lapis_block>)
      .addOutput(<botanicadds:elven_lapis_block>)
      .addOutput(<botanicadds:dreamrock>)
      .addOutput(<botanicadds:dreamrock>)
      .addOutput(<botanicadds:dreamrock>)
      .addOutput(<botanicadds:dreamrock>)
      .addOutput(<botanicadds:dreamrock>)
      .addElement(mods.randomtweaker.jei.IJeiUtils.createJeiManaBarElement(30, 57, Math.floor(mana / 100)))
      .build();
}

//凿子
function addChiselByOre(ore as IOreDictEntry) as void
{
    var recipesNum = recipesUtils.getRecipesNum();
    var name = ore.name ~ recipesNum;
    //print(name);
    mods.chisel.Carving.addGroup(name);
    for item in ore.items {
        recipes.remove(item);
        mods.chisel.Carving.addVariation(name, item);
    }
    
}

function removeImmersiveengIneeringFuel(ore as IOreDictEntry) as void
{
    for item in ore.items {
        mods.immersiveengineering.BlastFurnace.removeFuel(item);
    }
}

function modifyWoodRecipe(log as IItemStack, flag as bool) as void
{
    val plank as IItemStack = recipes.craft([[log]]);
    if (isNull(plank)) {
        return;
    }
    var name = recipesUtils.getRecipeName(plank);
    recipes.removeShaped(plank, [[log]]);
    if(flag) {
        recipesUtils.addRecipe(plank.withAmount(1), [[log]]);

        mods.artisanworktables.builder.RecipeBuilder.get("basic")
          .setShaped([[log]])
          .addOutput(plank.withAmount(1))
          .setName("basic/" ~ name)
          .create();

        mods.skyresources.knife.removeRecipe(plank);
        mods.skyresources.knife.addRecipe(plank.withAmount(4), log);
    }
    else {
        mods.skyresources.knife.addRecipe(plank.withAmount(2), log);
    }

    mods.artisanworktables.builder.RecipeBuilder.get("carpenter")
      .setShaped([[log]])
      .addOutput(plank.withAmount(2))
      .addTool(<ore:artisansHandsaw>, 1)
      .setName("carpenter/" ~ name)
      .create();
}

function modifyStickRecipe(stick as IItemStack, wood as IOreDictEntry) as void
{
    var name = recipesUtils.getRecipeName(stick);

    recipes.remove(stick);
    recipesUtils.addRecipe(stick, [[wood], [wood]]);

    mods.artisanworktables.builder.RecipeBuilder.get("basic")
      .setShaped([[wood], [wood]])
      .addOutput(stick * 2)
      .setName("basic/" ~ name)
      .create();
    
    mods.artisanworktables.builder.RecipeBuilder.get("carpenter")
      .setShaped([[wood], [wood]])
      .addOutput(stick * 4)
      .setName("carpenter/" ~ name)
      .create();

    for item in wood.items {
        mods.skyresources.knife.addRecipe(stick * 4, item);
    }
}

//磨粉
function addMillingRecipe(output as IItemStack, input as IItemStack, level as int) as void
{
    if (level < 3) {

    }
    if (level < 2) {
        mods.mekanism.crusher.removeRecipe(output, input);
        //mods.thermalexpansion.Pulverizer.addRecipe(output, input, 1500);
        //mods.enderio.SagMill.addRecipe([output], [0.9], input);
    }
    if (level < 1) {
        mods.prodigytech.rotarygrinder.addRecipe(input, output);
    }

}

function addOfferingRecipe(output as IItemStack,
                           input as IIngredient,
                           startItem as IIngredient) as void
{
    var name = recipesUtils.getRecipeName(output);
    var num as int = input.amount;

    mods.naturesaura.Offering.addRecipe(name, input.transformConsume(1), num, startItem, output);
}

//自然灵气 森林仪式
function treeRitualRecipe(output as IItemStack, inputs as IIngredient[]) as void
{
    var name = recipesUtils.getRecipeName(output);
    mods.naturesaura.TreeRitual.removeRecipe(output);
    mods.naturesaura.TreeRitual.addRecipe(name, <prodigytech:zorra_sapling>, output, 100, inputs);
}

function addCrucibleRecipe(output as IItemStack,
                           input as IIngredient,
                           aspectList as CTAspectStack[],
                           research as string = "" ) as void
{
    var name = recipesUtils.getRecipeName(output);

    mods.thaumcraft.Crucible.registerRecipe(name, research, output, input, aspectList);
}

function addFlowerGrowth(item as IItemStack,
                         Metadata as int) as void
{
    var name = recipesUtils.getRecipeName(item);
    mods.jei.JEI.addDescription(item.definition.makeStack(Metadata), MessageUtils.getDescriptionMessage("flower.growth"));
    mods.roots.FlowerGrowth.addRecipeBlock(name, item.asBlock(), Metadata);
}

function rootsMortarRecipe(output as IItemStack, inputs as IIngredient[]) as void
{
    var name = recipesUtils.getRecipeName(output);
    mods.roots.Mortar.addRecipe(name, output, inputs);
    
    mods.artisanworktables.builder.RecipeBuilder.get("chemist")
      .setShapeless(inputs)
      .addTool(<ore:artisansMortar>, 3)
      .setName(name)
      .addOutput(output)
      .create();
}

function addRootsPyreRecipe(output as IItemStack, inputs as IIngredient[], xp as int = 0) as void
{
    var name = recipesUtils.getRecipeName(output);

    mods.roots.Pyre.addRecipe(name, output, inputs, xp);
}