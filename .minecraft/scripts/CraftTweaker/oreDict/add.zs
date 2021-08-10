##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
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
        <botania:petal:15>
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
        <botania:dye:15>
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
        <botania:shinyflower:15>
    ],
    
    #荔枝
    <ore:cropLychee>: [
        <harvestcraft:lycheeitem>
    ],
    
    #菠萝蜜
    <ore:cropJackfruit>: [
        <harvestcraft:lycheeitem>
    ],
    
    #五元素晶体
    <ore:fivePhasesCrystal>: [
        <contenttweaker:crystal_water>,
        <contenttweaker:crystal_earth>,
        <contenttweaker:crystal_wood>,
        <contenttweaker:crystal_metal>,
        <contenttweaker:crystal_fire>
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
        <immersiveengineering:stone_decoration:3>
    ],

    <ore:ingotSky> : [
        <naturesaura:sky_ingot>
    ]
};


for oreDictEntry, items in oreadd {
    oreDictEntry.addItems(items);
}

