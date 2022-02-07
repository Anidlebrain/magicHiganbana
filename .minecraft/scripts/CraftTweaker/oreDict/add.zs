##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     矿物词典 增加
##================================================
#priority 3000

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var oreadd as IItemStack[][IOreDictEntry] = {

    #神秘花瓣
    <ore:mysticalPetals>: [
        <botania:petal:0>,
        <botania:petal:1>,
        <botania:petal:2>,
        <botania:petal:3>,
        <botania:petal:4>,
        <botania:petal:5>,
        <botania:petal:6>,
        <botania:petal:7>,
        <botania:petal:8>,
        <botania:petal:9>,
        <botania:petal:10>,
        <botania:petal:11>,
        <botania:petal:12>,
        <botania:petal:13>,
        <botania:petal:14>,
        <botania:petal:15>,
    ],
    
    #神秘花瓣
    <ore:mysticaldyes>: [
        <botania:dye:0>,
        <botania:dye:1>,
        <botania:dye:2>,
        <botania:dye:3>,
        <botania:dye:4>,
        <botania:dye:5>,
        <botania:dye:6>,
        <botania:dye:7>,
        <botania:dye:8>,
        <botania:dye:9>,
        <botania:dye:10>,
        <botania:dye:11>,
        <botania:dye:12>,
        <botania:dye:13>,
        <botania:dye:14>,
        <botania:dye:15>,
    ],
    
    #神秘荧光花
    <ore:mysticalshinyflower>: [
        <botania:shinyflower:0>,
        <botania:shinyflower:1>,
        <botania:shinyflower:2>,
        <botania:shinyflower:3>,
        <botania:shinyflower:4>,
        <botania:shinyflower:5>,
        <botania:shinyflower:6>,
        <botania:shinyflower:7>,
        <botania:shinyflower:8>,
        <botania:shinyflower:9>,
        <botania:shinyflower:10>,
        <botania:shinyflower:11>,
        <botania:shinyflower:12>,
        <botania:shinyflower:13>,
        <botania:shinyflower:14>,
        <botania:shinyflower:15>,
    ],
    
    #五元素晶体
    <ore:fivePhasesCrystal>: [
        <contenttweaker:crystal_water>,
        <contenttweaker:crystal_earth>,
        <contenttweaker:crystal_wood>,
        <contenttweaker:crystal_metal>,
        <contenttweaker:crystal_fire>,
    ],

    #符文尘
    <ore:randomThingsRuneDust>: [
        <randomthings:runedust:0>,
        <randomthings:runedust:1>,
        <randomthings:runedust:2>,
        <randomthings:runedust:3>,
        <randomthings:runedust:4>,
        <randomthings:runedust:5>,
        <randomthings:runedust:6>,
        <randomthings:runedust:7>,
        <randomthings:runedust:8>,
        <randomthings:runedust:9>,
        <randomthings:runedust:10>,
        <randomthings:runedust:11>,
        <randomthings:runedust:12>,
        <randomthings:runedust:13>,
        <randomthings:runedust:14>,
        <randomthings:runedust:15>,
    ],

    #焦煤块
    <ore:blockCoalCoke>: [
        <immersiveengineering:stone_decoration:3>,
    ],

    #天空锭
    <ore:ingotSky> : [
        <naturesaura:sky_ingot>,
    ],

    #铝矿石
    <ore:oreAluminum> : [
        <techreborn:ore:4>,
    ],

    #铂矿石
    <ore:orePlatinum> : [
        <techreborn:ore:9>,
    ],

    #种子
    <ore:listAllseed> : [
        <appliedenergistics2:crystal_seed>,
        <appliedenergistics2:crystal_seed:1200>,
        <appliedenergistics2:crystal_seed:600>,
        <immersiveengineering:seed>,
        <prodigytech:energion_crystal_seed>,
        <actuallyadditions:item_misc:24>,
        <actuallyadditions:item_misc:23>,
        <actuallyadditions:item_rice_seed>,
        <actuallyadditions:item_canola_seed>,
        <actuallyadditions:item_flax_seed>,
        <actuallyadditions:item_coffee_seed>,
        <roots:moonglow_seed>,
        <roots:spirit_herb_seed>,
        <roots:wildewheet_seed>,
        <roots:pereskia_bulb>,
        <tp:mycelium_seeds>,
    ],

    #零素
    <ore:oreEezo> : [
        <taiga:eezo_ore>,
    ],

    #熔晶
    <ore:oreOsram> : [
        <taiga:osram_ore>,
    ],

    #杜兰特
    <ore:oreDuranite> : [
        <taiga:duranite_ore>,
    ],

    #绯红铁
    <ore:oreKarmesine> : [
        <taiga:karmesine_ore>,
    ],

    #欧维姆
    <ore:oreOvium> : [
        <taiga:ovium_ore>,
    ],

    #阿滋勒赫石砖
    <ore:custombrick> : [
        <botania:custombrick:0>,
        <botania:custombrick:1>,
        <botania:custombrick:2>,
        <botania:custombrick:3>,
        <botania:custombrick:4>,
        <botania:custombrick:5>,
        <botania:custombrick:6>,
        <botania:custombrick:7>,
        <botania:custombrick:8>,
        <botania:custombrick:9>,
        <botania:custombrick:10>,
        <botania:custombrick:11>,
        <botania:custombrick:12>,
        <botania:custombrick:13>,
        <botania:custombrick:14>,
        <botania:custombrick:15>,
    ],

    #陨石块
    <ore:skyStoneBlock> : [
        <appliedenergistics2:smooth_sky_stone_block>,
        <appliedenergistics2:sky_stone_brick>,
        <appliedenergistics2:sky_stone_small_brick>,
    ],

    #活石
    <ore:livingrock> : [
        <botania:livingrock:1>,
        <botania:livingrock:2>,
        <botania:livingrock:3>,
        <botania:livingrock:4>,
    ],

    #活木
    <ore:livingwood> : [
        <botania:livingwood:1>,
        <botania:livingwood:2>,
        <botania:livingwood:3>,
        <botania:livingwood:4>,
        <botania:livingwood:5>,
    ],

    #面粉
    <ore:foodFlour> : [
        <appliedenergistics2:material:4>,
    ],

    #野火
    <ore:dustFire> : [
        <roots:spell_dust>.withTag({spell_storage: {s: "roots:spell_wild_fire"}}),
        <botania:manaresource:23>,
    ]
};


for oreDictEntry, items in oreadd {
    oreDictEntry.addItems(items);
}

