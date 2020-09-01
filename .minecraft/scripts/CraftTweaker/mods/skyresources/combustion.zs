#priority 2000
import mods.skyresources.combustion;

//空岛资源 氧化器 注入 by Anidlebrain

//工程师锤
recipes.remove(<immersiveengineering:tool>);
combustion.addRecipe(<immersiveengineering:tool>, [
	<tconstruct:tool_rod>.withTag({Material: "wood"}) *2,
	<minecraft:string> * 2,
	<forestry:peat> * 4
], 100);

//焦炉砖
recipes.removeByRecipeName("immersiveengineering:stone_decoration/cokebrick");
combustion.addRecipe(<immersiveengineering:stone_decoration> * 3, [
	<minecraft:brick> * 4,
	<forestry:ash_brick> * 3,
	<forestry:peat> * 2
], 100);

//end file by Anidlebrain