##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 星辉祭坛
##================================================
#modloaded higanbana
#priority 2000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.Altar;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.addAltarRecipe;


function makeAltar(output as IItemStack,
                   starLight as int,
                   craftTickTime as int,
                   recipe as string[],
                   replacements as IIngredient[string])
{
    if(starLight > 2000)
    {
        addAltarRecipe(output, 2, 2000, craftTickTime, recipe, replacements);
    }
    else
    {
        addAltarRecipe(output, 2, starLight, craftTickTime, recipe, replacements);
    }
}

//虚空能源发电机
recipes.remove(<lightningcraft:lightning_infuser>);
makeAltar(<lightningcraft:lightning_infuser>, 1303, 40, 
    [
        "A   A",
        " DBD ",
        " DCD ",
        " DED ",
        "F   F",
    ],
    {
        A : <botania:lens:17>,
        B : <ore:rodElectricium>,
        C : <mekanism:machineblock:2>,
        D : <lightningcraft:stone_block>,
        E : <arcanearchives:stormway>,
        F : <botania:lens:5>,
    }
);

//天辉祭坛
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
makeAltar(<astralsorcery:blockaltar:2>, 1999, 200, 
    [
        "A   A",
        " D D ",
        " BCB ",
        " GEG ",
        "F   F",
    ],
    {
        A : <ore:dustAstralStarmetal>,
        B : <astralsorcery:blockmarble:4>,
        C : <contenttweaker:celestite_gem>,
        D : <contenttweaker:starglow_gem>,
        E : <astralsorcery:itemshiftingstar>,
        F : <astralsorcery:blockmarble:6>,
        G : <astralsorcery:blockmarble:2>,
    }
);

//天文望远镜
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/telescope");
makeAltar(<astralsorcery:blockmachine>, 500, 40, 
    [
        "     ",
        "  A  ",
        " BCB ",
        " DDD ",
        "     ",
    ],
    {
        A : <astralsorcery:itemhandtelescope>,
        B : <contenttweaker:crystal_gold>,
        C : <astralsorcery:blockinfusedwood>,
        D : <contenttweaker:arch_stick>,
    }
);

//效应放大器
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/ritualpedestal");
makeAltar(<astralsorcery:blockritualpedestal>, 1999, 40, 
    [
        "F   F",
        " EAE ",
        " BCB ",
        " DDD ",
        "G   G",
    ],
    {
        A : AS_CRYSTAL[0],
        B : <contenttweaker:starglow_gem>,
        C : <naturesaura:range_visualizer>,
        D : <astralsorcery:blockmarble:6>,
        E : <astralsorcery:blockmarble:4>,
        F : <contenttweaker:crystal_gold>,
        G : <astralsorcery:blockmarble:2>,
    }
);

//共鸣祭坛
Altar.removeAltarRecipe("astralsorcery:shaped/attunementaltar");
makeAltar(<astralsorcery:blockattunementaltar>, 1999, 40, 
    [
        "F   F",
        "     ",
        " BAB ",
        " DCD ",
        "D   D",
    ],
    {
        A : AS_CRYSTAL[0],
        B : <contenttweaker:starglow_gem>,
        C : <astralsorcery:blockattunementrelay>,
        D : <astralsorcery:blockmarble:6>,
        F : <embers:resonating_bell>,
    }
);

//链接器
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_linking");
makeAltar(<astralsorcery:blockattunementaltar>, 1999, 40, 
    [
        "     ",
        " BC  ",
        " BDC ",
        " ABB ",
        "A    ",
    ],
    {
        A : <astralsorcery:blockinfusedwood>,
        B : <contenttweaker:arch_stick>,
        C : <contenttweaker:starglow_gem>,
        D : AS_CRYSTAL[0],
    }
);



