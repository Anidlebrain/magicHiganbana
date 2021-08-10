##=================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     mod 配方函数
##=================================================
#priority 9999999
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

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
    var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ recipesNum;
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
    mods.enderio.AlloySmelter.removeRecipe(output);
    mods.immersiveengineering.ArcFurnace.removeRecipe(output);
    //if (!isNull(input)) {
    //    mods.thermalexpansion.Enchanter.removeRecipe(input, input2);
    //}    
}
