##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 祭坛
##================================================
#priority 2000
import mods.astralsorcery.Altar;
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

/*
1 1000
2 2000
3 4000
4 8000
*/

//星辉祭坛
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
recipesUtils.makeAltar1(<astralsorcery:blockaltar:1>, 488, 600, 
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
recipesUtils.makeAltar1(<arcanearchives:radiant_resonator>, 300, 300, 
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
recipesUtils.makeAltar1(<astralsorcery:itemhandtelescope>, 100, 60, 
    [
        " CD",
        "CBC",
        "AC ",
    ],
    {
        A : <astralsorcery:blockinfusedwood:1>,
        B : <actuallyadditions:item_crystal_empowered:1>,
        C : <naturesaura:ancient_stick>,
        D : <astralsorcery:itemcraftingcomponent:3>
    }
);


//光波振幅器
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay");
recipesUtils.makeAltar1(<astralsorcery:blockattunementrelay>, 200, 67, 
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
recipesUtils.makeAltar1(<arcanearchives:storage_raw_quartz>, 25, 40, 
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
recipesUtils.makeAltar1(<arcanearchives:storage_shaped_quartz>, 25, 40, 
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
recipesUtils.makeAltar1(<arcanearchives:scepter_revelation>, 25, 40, 
    [
        "  C",
        " B ",
        "A  ",
    ],
    {
        A : <contenttweaker:crystal_cluster_silver>,
        B : <naturesaura:ancient_stick>,
        C : <arcanearchives:raw_quartz>
    }
);

