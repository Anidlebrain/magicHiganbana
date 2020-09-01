#priority 3000

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//矿物词典 删除 by Anidlebrain

var oreDelete as IItemStack[][IOreDictEntry] = {
	#铜粉
	<ore:dustCopper>: [
		<mysticalworld:copper_dust>
	]
};

var oreRemove as IItemStack[][IOreDictEntry] = {

	#银粉
	<ore:dustSilver>: [
		<mysticalworld:silver_dust>
	]
};


for oreDictEntry, items in oreDelete {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

for oreDictEntry, items in oreRemove {
	oreDictEntry.removeItems(items);
}


//end file by Anidlebrain

