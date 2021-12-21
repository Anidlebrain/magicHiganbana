##===============================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     实用拓展 充能台
##===============================================
#modloaded higanbanautils
#priority 2000

import mods.actuallyadditions.Empowerer;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.addEmpowererRecipe;



//mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, float[] particleColourArray);

//mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, float[] particleColourArray);

Empowerer.addRecipe(<astralsorcery:blockcustomsandore>, <techreborn:ore:3>,
                    <tconstruct:materials:10>, <tconstruct:pan_head>.withTag({Material: "violium"}), <minecraft:prismarine_shard>, <roots:dewgonia>,
                    1000, 60, [0.3, 0.6, 0.9]
);

Empowerer.addRecipe(<astralsorcery:itemcraftingcomponent>, <techreborn:gem:1>,
                    <tconstruct:materials:10>, <tconstruct:pan_head>.withTag({Material: "violium"}), <minecraft:prismarine_shard>, <roots:dewgonia>,
                    1000, 60, [0.3, 0.6, 0.9]
);

Empowerer.addRecipe(<contenttweaker:stars_gem>, <actuallyadditions:item_misc:19>,
                    <actuallyadditions:item_crystal_empowered:4>, <ore:ingotManasteel>, <ore:ingotAstralStarmetal>, <actuallyadditions:item_crystal_empowered:2>,
                    1000, 60, [0.4, 0.2, 0.1]
);


addEmpowererRecipe(<actuallyadditions:item_crystal_empowered>, <actuallyadditions:block_crystal_empowered>,
    [<ore:crystalRestonia>, <actuallyadditions:block_crystal>,
     <contenttweaker:redstone_crystal>, <bloodmagic:item_demon_crystal:3>, <ore:dustRedGlowstone>, <ore:quartzRed>]);

addEmpowererRecipe(<contenttweaker:crystal_cluster_gold>, <contenttweaker:block_crystal_cluster_gold>,
    [<contenttweaker:crystal_gold>, <contenttweaker:block_crystal_gold>,
     <ore:dustGlowstone>, <mekanism:crystal:1>, <bloodmagic:item_demon_crystal:2>, <ore:quartzSunny>]);

addEmpowererRecipe(<contenttweaker:crystal_cluster_osmium>, <contenttweaker:block_crystal_cluster_osmium>,
    [<contenttweaker:crystal_osmium>, <contenttweaker:block_crystal_osmium>,
     <ore:quartzLavender>, <bloodmagic:item_demon_crystal:4>, <ore:dustBlueGlowstone>, <mekanism:crystal:2>]);

addEmpowererRecipe(<contenttweaker:crystal_cluster_copper>, <contenttweaker:block_crystal_cluster_copper>,
    [<contenttweaker:crystal_copper>, <contenttweaker:block_crystal_copper>,
     <ore:dustOrangeGlowstone>, <mekanism:crystal:3>, <bloodmagic:item_demon_crystal:3>, <ore:quartzSunny>]);

addEmpowererRecipe(<contenttweaker:crystal_cluster_tin>, <contenttweaker:block_crystal_cluster_tin>,
    [<contenttweaker:crystal_tin>, <contenttweaker:block_crystal_tin>,
     <ore:dustLightGrayGlowstone>, <mekanism:crystal:4>, <bloodmagic:item_demon_crystal:1>, <ore:quartzElven>]);

addEmpowererRecipe(<contenttweaker:crystal_cluster_silver>, <contenttweaker:block_crystal_cluster_silver>,
    [<contenttweaker:crystal_silver>, <contenttweaker:block_crystal_silver>,
     <ore:dustWhiteGlowstone>, <mekanism:crystal:5>, <bloodmagic:item_demon_crystal:4>, <ore:quartzBlaze>]);

addEmpowererRecipe(<contenttweaker:crystal_cluster_lead>, <contenttweaker:block_crystal_cluster_lead>,
    [<contenttweaker:crystal_lead>, <contenttweaker:block_crystal_lead>,
     <ore:dustBlackGlowstone>, <mekanism:crystal:6>, <bloodmagic:item_demon_crystal:2>, <ore:quartzBlaze>]);
    

addEmpowererRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:block_crystal_empowered:1>,
    [<actuallyadditions:item_crystal:1>, <actuallyadditions:block_crystal:1>,
     <ore:quartzLavender>, <bloodmagic:item_demon_crystal:3>, <contenttweaker:lapis_crystal>, <ore:dustCyanGlowstone>]);

addEmpowererRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:block_crystal_empowered:2>,
    [<actuallyadditions:item_crystal:2>, <actuallyadditions:block_crystal:2>,
     <contenttweaker:diamond_crystal>, <ore:dustLightBlueGlowstone>, <bloodmagic:item_demon_crystal:1>, <ore:quartzMana>]);

addEmpowererRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:block_crystal_empowered:3>,
    [<actuallyadditions:item_crystal:3>, <actuallyadditions:block_crystal:3>,
     <ore:quartzLavender>, <bloodmagic:item_demon_crystal:3>, <contenttweaker:coal_crystal>, <ore:dustBlackGlowstone>]);

addEmpowererRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:block_crystal_empowered:4>,
    [<actuallyadditions:item_crystal:4>, <actuallyadditions:block_crystal:4>,
     <ore:quartzElven>, <bloodmagic:item_demon_crystal:2>, <ore:dustGreenGlowstone>, <actuallyadditions:item_crystal_empowered:4>]);

addEmpowererRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:block_crystal_empowered:5>,
    [<actuallyadditions:item_crystal:5>, <actuallyadditions:block_crystal:5>,
     <botania:quartz:1>, <bloodmagic:item_demon_crystal:4>, <mekanism:crystal>, <ore:dustGrayGlowstone>]);

/*
Empowerer.removeRecipe(<actuallyadditions:block_crystal>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal:1>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal:2>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal:3>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal:4>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal:5>);

Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);

Empowerer.removeRecipe(<actuallyadditions:item_crystal>);
Empowerer.addRecipe(<actuallyadditions:item_crystal>, )

actuallyadditions:item_crystal, item.actuallyadditions.item_crystal_red.name, 红石水晶, 0
actuallyadditions:item_crystal, item.actuallyadditions.item_crystal_blue.name, 青金石水晶, 1
actuallyadditions:item_crystal, item.actuallyadditions.item_crystal_light_blue.name, 钻石水晶, 2
actuallyadditions:item_crystal, item.actuallyadditions.item_crystal_black.name, 煤晶, 3
actuallyadditions:item_crystal, item.actuallyadditions.item_crystal_green.name, 绿宝石水晶, 4
actuallyadditions:item_crystal, item.actuallyadditions.item_crystal_white.name, 铁晶, 5
actuallyadditions:item_crystal_empowered, item.actuallyadditions.item_crystal_empowered_red.name, 充能红石水晶, 0
actuallyadditions:item_crystal_empowered, item.actuallyadditions.item_crystal_empowered_blue.name, 充能青金石水晶, 1
actuallyadditions:item_crystal_empowered, item.actuallyadditions.item_crystal_empowered_light_blue.name, 充能钻石水晶, 2
actuallyadditions:item_crystal_empowered, item.actuallyadditions.item_crystal_empowered_black.name, 充能煤晶, 3
actuallyadditions:item_crystal_empowered, item.actuallyadditions.item_crystal_empowered_green.name, 充能绿宝石水晶, 4
actuallyadditions:item_crystal_empowered, item.actuallyadditions.item_crystal_empowered_white.name, 充能铁晶, 5


mekanism:crystal, item.ironCrystal.name, 铁晶体, 0
mekanism:crystal, item.goldCrystal.name, 金晶体, 1
mekanism:crystal, item.osmiumCrystal.name, 锇晶体, 2
mekanism:crystal, item.copperCrystal.name, 铜晶体, 3
mekanism:crystal, item.tinCrystal.name, 锡晶体, 4
mekanism:crystal, item.silverCrystal.name, 银晶体, 5
mekanism:crystal, item.leadCrystal.name, 铅晶体, 6
*/