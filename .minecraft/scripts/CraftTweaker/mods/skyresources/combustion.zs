##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     空岛资源 氧化器
##================================================
#modloaded higanbanautils
#priority 2000

import mods.skyresources.combustion;
import mods.skyresources.fusion;

//木制 200
//石制 1000

//工程师锤
recipes.remove(<immersiveengineering:tool>);
combustion.addRecipe(<immersiveengineering:tool>, [
    <tconstruct:tool_rod>.withTag({Material: "wood"}) *2,
    <minecraft:string> * 2,
    <embers:brick_caminite> * 4
], 200);

//焦炉砖
recipes.removeByRecipeName("immersiveengineering:stone_decoration/cokebrick");
combustion.addRecipe(<immersiveengineering:stone_decoration> * 3, [
    <minecraft:brick> * 4,
    <embers:plate_caminite> * 3,
    <embers:brick_caminite> * 2
], 150);

//窑砖
recipes.removeByRecipeName("immersiveengineering:stone_decoration/alloybrick");
combustion.addRecipe(<immersiveengineering:stone_decoration:10> * 2, [
    <botania:dye>,
    <minecraft:stained_hardened_clay> * 2,
    <minecraft:brick> * 2
], 150);

//小麦种子
combustion.removeRecipe(<minecraft:wheat_seeds>);
combustion.addRecipe(<minecraft:wheat_seeds>, [
    <minecraft:deadbush>,
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_growth_infusion", selectedSlot: 0, lastCooldown: 0, cooldown: 0}})
], 50);

//赫耳墨斯煤炭块
fusion.removeRecipe(<skyresources:alchemyitemcomponent:6>);
combustion.addRecipe(<skyresources:coalinfusedblock>, [
    <minecraft:coal_block>,
    <skyresources:alchemyitemcomponent:2> * 2,
    <contenttweaker:explosive_dust> * 3
], 1000);

//水泥
recipes.remove(<tconstruct:soil>);
combustion.addRecipe(<tconstruct:soil> * 8, [
    <minecraft:gravel> * 4,
    <minecraft:sand> * 4,
    <minecraft:clay>
], 1500);
combustion.addRecipe(<tconstruct:soil> * 2, [
    <minecraft:gravel>,
    <minecraft:sand>,
    <minecraft:clay_ball>
], 1200);

//烈焰粉
combustion.removeRecipe(<minecraft:blaze_powder>);
combustion.addRecipe(<minecraft:blaze_powder> * 2, [
    <minecraft:gunpowder> * 2,
    <skyresources:baseitemcomponent>
], 75);

//炼金框架
combustion.addRecipe(<contenttweaker:alchemical_frame>, [
    <skyresources:casing>,
    <skyresources:alchemyitemcomponent:2> * 3
], 300);

//炼金框架
combustion.addRecipe(<contenttweaker:alchemical_frame>, [
    <skyresources:casing:1>,
    <skyresources:alchemyitemcomponent:2>
], 800);

//钻石
combustion.removeRecipe(<minecraft:diamond>);
combustion.addRecipe(<minecraft:diamond>, [
    <skyresources:compressedcoalblock>
], 5564);

//亮物质
combustion.removeRecipe(<skyresources:baseitemcomponent:7>);
combustion.addRecipe(<skyresources:baseitemcomponent:7>, [
    <skyresources:heavysnow> * 5,
    <minecraft:end_stone> * 4,
    <botania:storage:4> * 3,
    <astralsorcery:itemcraftingcomponent:2> * 2,
    <naturesaura:infused_iron_block>
], 6038);

//暗物质
combustion.removeRecipe(<skyresources:baseitemcomponent:3>);
combustion.addRecipe(<skyresources:baseitemcomponent:3>, [
    <minecraft:soul_sand> * 5,
    <skyresources:compressedcoalblock> * 3,
    <mekanism:ingot> * 2,
    <techreborn:ingot:17>
], 5976);

//地狱岩
combustion.addRecipe(<minecraft:netherrack> * 8, [
    <minecraft:cobblestone> * 8,
    <minecraft:blaze_powder> * 5
], 1688);

//高炉
recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick");
combustion.addRecipe(<immersiveengineering:stone_decoration:1> * 3, [
    <minecraft:brick> * 4,
    <minecraft:netherbrick> * 4,
    <minecraft:blaze_powder> * 2
], 2349);

//粘性树脂
combustion.removeRecipe(<techreborn:part:31>);

//陨石
combustion.addRecipe(<appliedenergistics2:sky_stone_block>, [
    <minecraft:obsidian>,
    <skyresources:alchemyitemcomponent:6> * 5
], 2200);
