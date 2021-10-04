##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     mod 配方函数
##=================================================
#priority 9999999
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.ctutils.utils.Math;

static recipesNum as int = 0;

//沉浸工程 高炉 删除燃料
function removeImmersiveengIneeringFuel(ore as IOreDictEntry) {
    for item in ore.items {
        mods.immersiveengineering.BlastFurnace.removeFuel(item);
    }
}

//圣遗物 配方转换
function reliquaryRecipe(output as IItemStack, inputs as IIngredient[], level as int) {
    var modid as string = output.definition.id.split(":")[0];
    if (modid == "xreliquary") {
        recipes.remove(output);
    }
    else if (modid == "minecraft") {
        var recipre_name as string = "xreliquary:items/uncrafting/" ~ output.definition.id.split(":")[1];
        print(recipre_name);
        recipes.removeByRecipeName(recipre_name);
    }
    mods.bloodmagic.AlchemyTable.addRecipe(output, inputs, 500 * (2 * level - 1), 200 * level, level);
}

    //自然灵气 森林仪式
function treeRitualRecipe(output as IItemStack, inputs as IIngredient[]) {
    var type as string[] = output.definition.id.split(":");
    recipesNum = recipesNum + 1;
    var name = type[0] ~ "/MagicHiganbana/" ~ type[1] ~ "_" ~ recipesNum;
    mods.naturesaura.TreeRitual.removeRecipe(output);
    mods.naturesaura.TreeRitual.addRecipe(name, <prodigytech:zorra_sapling>, output, 100, inputs);
}

/*
    function TreeRitualRecipe(output as IItemStack, inputs as IIngredient[], saplingType as IIngredient) {
        var type as string[] = output.definition.id.split(":");

        m_recipesNum = m_recipesNum + 1;
        var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;

        mods.naturesaura.TreeRitual.removeRecipe(output);
        mods.naturesaura.TreeRitual.addRecipe(name, saplingType, output, 100, inputs);
    }
*/

function removeAlloySmelter(output as IItemStack/*, input as IItemStack, input2 as IItemStack*/) {
    //mods.enderio.AlloySmelter.removeRecipe(output);
    mods.immersiveengineering.ArcFurnace.removeRecipe(output);
    mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(output);
    //if (!isNull(input)) {
    //    mods.thermalexpansion.Enchanter.removeRecipe(input, input2);
    //}    
}

function rootsMortarRecipe(output as IItemStack, inputs as IIngredient[]) {
    var type as string[] = output.definition.id.split(":");
    recipesNum = recipesNum + 1;
    var name = type[0] ~ "/MagicHiganbana/" ~ type[1] ~ "_" ~ recipesNum;
    mods.roots.Mortar.addRecipe(name, output, inputs);
    
    mods.artisanworktables.builder.RecipeBuilder.get("chemist")
                    .setShapeless(inputs)
                    .addTool(<ore:artisansBurner>, 1)
                    .setName(name)
                    .addOutput(output)
                    .create();

}

function gaiaPlateRecipe(output as IItemStack, mana as int, inputs as IIngredient[])
{
    if ((inputs.length % 2 == 0) || inputs.length > 7)
    {
        logger.logError("[gaiaPlateRecipe] - The input must be odd and less than seven");
    }
    else
    {
        mods.botanicadds.GaiaPlate.add(output, mana, inputs);
/*
        mods.jei.JEI.createJEIRecipe("gaia_plate")
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
            .addJEIElement(mods.jei.JEI.createJEIManaBarElement(30, 57, Math.floor(mana / 100)))
            .build();
*/
    }
}

function addEmpowererRecipe(output as IItemStack, outputblock as IItemStack, inputs as IIngredient[]) {
    var modid as string = output.definition.id.split(":")[0];
    if (modid == "actuallyadditions")
    {
        mods.actuallyadditions.Empowerer.removeRecipe(output);
        mods.actuallyadditions.Empowerer.removeRecipe(outputblock);
    }
    mods.actuallyadditions.Empowerer.addRecipe(output, inputs[0], inputs[2], inputs[3], inputs[4], inputs[5], 10000, 600, [Math.random(), Math.random(), Math.random()]);
    mods.actuallyadditions.Empowerer.addRecipe(outputblock, inputs[1], inputs[2], inputs[3], inputs[4], inputs[5], 10000, 600, [Math.random(), Math.random(), Math.random()]);

}

function addMillingRecipe(output as IItemStack, input as IItemStack, level as int)
{
    if (level < 3)
    {

    }
    if (level < 2)
    {
        mods.mekanism.crusher.removeRecipe(output, input);
        mods.thermalexpansion.Pulverizer.addRecipe(output, input, 1500);
        mods.enderio.SagMill.addRecipe([output], [0.9], input);

    }
    if (level < 1)
    {
        mods.prodigytech.rotarygrinder.addRecipe(input, output);
    }

}