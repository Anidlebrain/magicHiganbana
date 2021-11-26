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

for oreDictEntry, items in oreRemove {
    oreDictEntry.removeItems(items);
}

