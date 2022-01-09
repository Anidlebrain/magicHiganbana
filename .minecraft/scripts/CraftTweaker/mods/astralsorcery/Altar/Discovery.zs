##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 星辉合成台
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
    if(starLight > 1000)
    {
        addAltarRecipe(output, 1, 1000, craftTickTime, recipe, replacements);
    }
    else
    {
        addAltarRecipe(output, 1, starLight, craftTickTime, recipe, replacements);
    }
}


//星辉祭坛
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
makeAltar(<astralsorcery:blockaltar:1>, 488, 600, 
    [
        "ABA",
        "CDE",
        "F F",
    ],
    {
        A : <astralsorcery:blockmarble>,
        B : <astralsorcery:itemrockcrystalsimple>,
        C : <arcanearchives:mountaintear>,
        D : <contenttweaker:starglow_gem>,
        E : <arcanearchives:rivertear>,
        F : <astralsorcery:blockmarble:2>
    }
);

//辉耀谐振台
recipes.remove(<arcanearchives:radiant_resonator>);
makeAltar(<arcanearchives:radiant_resonator>, 300, 300, 
    [
        "ABA",
        "CDC",
        "C C",
    ],
    {
        A : <contenttweaker:crystal_cluster_gold>,
        B : <naturesaura:clock_hand>,
        C : <astralsorcery:blockinfusedwood>,
        D : <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000})
    }
);


//望远镜
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope");
makeAltar(<astralsorcery:itemhandtelescope>, 100, 60, 
    [
        " CD",
        "CBC",
        "AC ",
    ],
    {
        A : <astralsorcery:blockinfusedwood:1>,
        B : <actuallyadditions:item_crystal_empowered:1>,
        C : <contenttweaker:arch_stick>,
        D : <astralsorcery:itemcraftingcomponent:3>
    }
);


//光波振幅器
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay");
makeAltar(<astralsorcery:blockattunementrelay>, 200, 67, 
    [
        "  ",
        "ABA",
        "DCD",
    ],
    {
        A : <actuallyadditions:item_crystal_empowered:5>,
        B : <astralsorcery:itemcraftingcomponent:3>,
        C : <astralsorcery:blockinfusedwood:2>,
        D : <astralsorcery:blockinfusedwood:1>
    }
);


//未加工的辉耀石英块
recipes.remove(<arcanearchives:storage_raw_quartz>);
makeAltar(<arcanearchives:storage_raw_quartz>, 25, 40, 
    [
        "AAA",
        "AAA",
        "AAA",
    ],
    {
        A : <arcanearchives:raw_quartz>
    }
);

//辉耀石英块
recipes.remove(<arcanearchives:storage_shaped_quartz>);
makeAltar(<arcanearchives:storage_shaped_quartz>, 25, 40, 
    [
        "AAA",
        "AAA",
        "AAA",
    ],
    {
        A : <arcanearchives:shaped_quartz>
    }
);


//启示权杖
recipes.remove(<arcanearchives:scepter_revelation>);
makeAltar(<arcanearchives:scepter_revelation>, 25, 40, 
    [
        "  C",
        " B ",
        "A  ",
    ],
    {
        A : <contenttweaker:crystal_cluster_silver>,
        B : <contenttweaker:arch_stick>,
        C : <arcanearchives:raw_quartz>
    }
);


//玻璃安瓿
recipes.remove(<thaumcraft:phial>);
makeAltar(<thaumcraft:phial> * 4, 25, 40, 
    [
        " B ",
        "A A",
        " A ",
    ],
    {
        A : <ore:fusedGlass>,
        B : <ore:dustAstralStarmetal>
    }
);

//透镜
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
makeAltar(<astralsorcery:itemcraftingcomponent:3>, 89, 40, 
    [
        " A ",
        "ABA",
        " A ",
    ],
    {
        A : <botania:bifrostpermpane>,
        B : <ore:gemAquamarine>
    }
);

//辉光粉
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
makeAltar(<astralsorcery:itemusabledust> * 4, 89, 40, 
    [
        " A ",
        "ABA",
        " A ",
    ],
    {
        A : <randomthings:ingredient:5>,
        B : <arcanearchives:radiant_dust>
    }
);

//暗夜粉
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/nocturnalpowder");
makeAltar(<astralsorcery:itemcraftingcomponent:3> * 4, 89, 40, 
    [
        " A ",
        "DBD",
        " C ",
    ],
    {
        A : <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}),
        B : <astralsorcery:itemusabledust>,
        C : <thaumcraft:nitor_black>,
        D : <ore:dustQuartzBlack>
    }
);

//荒古木板
recipes.remove(<naturesaura:ancient_stick>);
makeAltar(<naturesaura:ancient_stick>, 20, 60, 
    [
        " A ",
        " A ",
        "   ",
    ],
    {
        A : <naturesaura:ancient_planks> | <naturesaura:ancient_bark>,
    }
);