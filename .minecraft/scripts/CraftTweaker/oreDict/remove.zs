##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     矿物词典 删除
##================================================
#priority 3000

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.AnildebrainUtils.ItemHelper.itemHelper;

var oreDelete as IItemStack[][IOreDictEntry] = {
    #铜粉
    <ore:dustCopper> : [
        <mysticalworld:copper_dust>
    ],

    #煤粉
    <ore:dustCoal> : [
        <enderio:item_material:23>,
        <threng:material:3>
    ],
    
    #烈焰石英块
    <ore:blockQuartzBlaze> : [
        <botania:quartztypeblaze:3>,
        <botania:quartztypeblaze:4>,
    ],

    #烟熏石英块
    <ore:blockQuartzDark> : [
        <botania:quartztypedark:3>,
        <botania:quartztypedark:4>,
    ],

    #精灵石英块
    <ore:blockQuartzElven> : [
        <botania:quartztypeelf:3>,
        <botania:quartztypeelf:4>,
    ],

    #熏香石英块
    <ore:blockQuartzLavender> : [
        <botania:quartztypelavender:3>,
        <botania:quartztypelavender:4>,
    ],

    #魔力石英块
    <ore:blockQuartzMana> : [
        <botania:quartztypemana:3>,
        <botania:quartztypemana:4>,
    ],

    #红色石英块
    <ore:blockQuartzRed> : [
        <botania:quartztypered:3>,
        <botania:quartztypered:4>,
    ],

    #金黄石英块
    <ore:blockQuartzSunny> : [
        <botania:quartztypesunny:3>,
        <botania:quartztypesunny:4>,
    ],
};

var oreRemove as IItemStack[][IOreDictEntry] = {

    #银粉
    <ore:dustSilver>: [
        <mysticalworld:silver_dust>
    ],

    #煤粉
    <ore:dustCoal>: [
        <bloodmagic:component:21>
    ]
};


for oreDictEntry, items in oreDelete {
    for item in items {
        itemHelper.removeItemAndOre(item, oreDictEntry);
    }
    oreDictEntry.removeItems(items);

}

for oreDictEntry, items in oreRemove {
    oreDictEntry.removeItems(items);
}

