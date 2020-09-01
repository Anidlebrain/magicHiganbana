#priority 2000
import mods.botania.Apothecary;
//植物魔法 花药台 by Anidlebrain

//水绣球
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}),
	[<ore:petalCyan>, <ore:petalCyan>, <ore:petalBlue>, <ore:petalBlue>, <skyresources:baseitemcomponent:4>, <minecraft:snowball>]);

//火红莲
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "endoflame"}),
	[<ore:petalBrown>, <ore:petalBrown>, <ore:petalLightGray>, <ore:petalRed>, <ore:dustWheat>, <minecraft:gunpowder>]);


//end file by Anidlebrain