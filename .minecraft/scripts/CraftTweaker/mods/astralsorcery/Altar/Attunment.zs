##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 星辉祭坛
##================================================
#priority 2000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.Altar;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.addAltarRecipe;


function makeAltar(output as IItemStack,
                   starLight as int,
                   craftTickTime as int,
                   recipe as string[],
                   replacements as IIngredient[string])
{
    if(starLight > 2000)
    {
        addAltarRecipe(output, 2, 2000, craftTickTime, recipe, replacements, "");
    }
    else
    {
        addAltarRecipe(output, 2, starLight, craftTickTime, recipe, replacements, "");
    }
}

var dawnstone as IItemStack = <embers:ingot_dawnstone>;
var caminite as IItemStack = <embers:brick_caminite>;


recipes.remove(<embers:ember_bore>);
makeAltar(<embers:ember_bore>, 1005, 40, 
    [
        "A   A",
        " DBD ",
        " BCB ",
        " DBD ",
        "A   A",
    ],
    {
        A : <embers:ember_cluster>,
        B : <ore:ingotAstralStarmetal>,
        C : <thermalexpansion:frame>,
        D : dawnstone
    }
);

/*
recipes.remove(<embers:ember_bore>);
makeAltar(<embers:ember_bore>, 1005, 40, 
    [
        "A   A",
        "  B  ",
        " BCB ",
        " DDD ",
        "A   A",
    ],
    {
        A : <contenttweaker:alchemical_plate>,
        B : <ore:plateDawnstone>,
        C : <contenttweaker:alchemical_frame>,
        D : dawnstone
    }
);
*/

