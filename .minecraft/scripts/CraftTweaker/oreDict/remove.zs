##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     矿物词典 删除            ##
##################################################

#priority 3000

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.AnildebrainUtils.ItemHelper.itemHelper;

var oreDelete as IItemStack[][IOreDictEntry] = {
	#铜粉
	<ore:dustCopper>: [
		<mysticalworld:copper_dust>
	],

	#煤粉
	<ore:dustCoal>: [
		<enderio:item_material:23>,
		<threng:material:3>
	]

	
	
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

