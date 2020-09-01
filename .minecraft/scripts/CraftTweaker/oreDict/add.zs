#priority 3000

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//矿物词典 增加 by Anidlebrain

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
	#荔枝
	<ore:cropLychee>: [
		<harvestcraft:lycheeitem>
	],
	#菠萝蜜
	<ore:cropJackfruit>: [
		<harvestcraft:lycheeitem>
	]
};


for oreDictEntry, items in oreadd {
	oreDictEntry.addItems(items);
}

//end file by Anidlebrain

