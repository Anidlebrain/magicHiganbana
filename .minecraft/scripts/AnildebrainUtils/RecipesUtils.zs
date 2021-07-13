##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     基础合成函数             ##
##################################################

#priority 99999999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.AnildebrainUtils.BaseUtils as alg;
import scripts.AnildebrainUtils.modLoader.isInvalid;

zenClass RecipesUtils
{
	zenConstructor()
	{

	}

	var m_recipesNum as int = 0;

	function textToIngredients1(ingredients as IIngredient[],
							recipe as string[],
							replacements as IIngredient[string]) as IIngredient[] {
	// 转成一维数组
	var len = 0;
	for i, str in recipe {
		for j in 0 .. str.length {
				var item = str[j];
				if (" " != item) {
					ingredients[len + j] = replacements[item];
				}
				len = len + str.length;
			}
		}
		return ingredients;
	}

	function textToIngredients2(ingredients as IIngredient[][],
							recipe as string[],
							replacements as IIngredient[string]) as IIngredient[][] {
		// 转成二维数组
		for i, str in recipe {
			for j in 0 .. str.length {
				var item = str[j];
				if (" " != item) {
					ingredients[i][j] = replacements[item];
				}
			}
		}
		return ingredients;
	}

	//工作台配方添加
	function addRecipe(output as IItemStack,
					recipe as string[],
					replacements as IIngredient[string]){
					
		var ingredients =
			[[null, null, null],
				[null, null, null],
				[null, null, null]] as IIngredient[][];
		
		val type as string[] = output.definition.id.split(":");
		m_recipesNum = m_recipesNum + 1;
		var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;
		//print(name);
		recipes.addShaped(name, output, textToIngredients2(ingredients, recipe, replacements));
	}

	function addRecipe(output as IItemStack,
					recipe as string[],
					replacements as IIngredient[string],
					fun as IRecipeFunction){
					
		var ingredients =
			[[null, null, null],
				[null, null, null],
				[null, null, null]] as IIngredient[][];
		
		val type as string[] = output.definition.id.split(":");
		m_recipesNum = m_recipesNum + 1;
		var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;
		recipes.addShaped(name, output, textToIngredients2(ingredients, recipe, replacements), fun);
	}

	function addRecipe(output as IItemStack,
					recipe as string[],
					replacements as IIngredient[string],
					fun as IRecipeFunction,
					action as IRecipeAction){
					
		var ingredients =
			[[null, null, null],
				[null, null, null],
				[null, null, null]] as IIngredient[][];
		
		val type as string[] = output.definition.id.split(":");
		m_recipesNum = m_recipesNum + 1;
		var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;
		recipes.addShaped(name, output, textToIngredients2(ingredients, recipe, replacements), fun, action);
	}

	function addSurroundRecipe(output as IItemStack, centre as IIngredient, surrounded as IIngredient)
	{
		addRecipe(output,[
			"AAA",
			"ABA",
			"AAA"],{
				A : surrounded,
				B : centre
			});
	}

	function addFull3Recipe(output as IItemStack, Full as IIngredient)
	{
		addRecipe(output,[
			"AAA",
			"AAA",
			"AAA"],{
				A : Full
			});
	}

	function addFull2Recipe(output as IItemStack, Full as IIngredient)
	{
		addRecipe(output,[
			"AA ",
			"AA ",
			"   "],{
				A : Full
			});
	}


	function addCrossRecipe(output as IItemStack, five as IIngredient, four as IIngredient)
	{
		addRecipe(output,[
			"BAB",
			"ABA",
			"BAB"],{
				A : four,
				B : five
			});
	}

	function addCentreCrossRecipe(output as IItemStack, a as IIngredient, b as IIngredient, centre as IIngredient)
	{
		addRecipe(output,[
			"BAB",
			"ACA",
			"BAB"],{
				A : a,
				B : b,
				C : centre
			});
	}

	function addShapeless(output as IItemStack,
							input as IIngredient[]) {

		val type as string[] = output.definition.id.split(":");
		m_recipesNum = m_recipesNum + 1;
		var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;
		//print(name);
		recipes.addShapeless(name, output, input);
	}

	function addShapelessCycle(item1 as IItemStack, item2 as IItemStack) {

		m_recipesNum = m_recipesNum + 1;
		var name = ("/Anidlebrain/autoaddShapeless/cycle_" ~ m_recipesNum) as string;
		recipes.addShapeless(name, item1, [item2]);
		
		m_recipesNum = m_recipesNum + 1;
		name = ("/Anidlebrain/autoaddShapeless/cycle_" ~ m_recipesNum) as string;
		recipes.addShapeless(name, item2, [item1]);
		
	}

	function altarTransformation(replacements as IIngredient[],
									level as int) as IIngredient[] {

		var ingredients =
			[null, null, null, null, null,
				null, null, null, null, null,
				null, null, null, null, null,
				null, null, null, null, null,
				null, null, null, null, null,
				null, null, null, null, null] as IIngredient[];

		ingredients[0] = replacements[6];
		ingredients[1] = replacements[7];
		ingredients[2] = replacements[8];
		ingredients[3] = replacements[11];
		ingredients[4] = replacements[12];
		ingredients[5] = replacements[13];
		ingredients[6] = replacements[16];
		ingredients[7] = replacements[17];
		ingredients[8] = replacements[18];
		ingredients[9] = replacements[0];
		ingredients[10] = replacements[4];
		ingredients[11] = replacements[20];
		ingredients[12] = replacements[24];
		ingredients[13] = replacements[1];
		ingredients[14] = replacements[3];
		ingredients[15] = replacements[5];
		ingredients[16] = replacements[9];
		ingredients[17] = replacements[15];
		ingredients[18] = replacements[19];
		ingredients[19] = replacements[21];
		ingredients[20] = replacements[23];

		if (2 == level) {
			
		}
		else if (3 == level) {
			
			ingredients[21] = replacements[2];
			ingredients[22] = replacements[10];
			ingredients[23] = replacements[14];
			ingredients[24] = replacements[22];
			
			//25 额外的物品
			ingredients[25] = replacements[25];
			ingredients[26] = replacements[26];
			ingredients[27] = replacements[27];
			ingredients[28] = replacements[28];
			ingredients[29] = replacements[29];
		}

		return ingredients;
	}

	//星辉魔法 星辉合成台
	function makeAltarRecopes1(output as IItemStack,
								starLight as int,
								craftTickTime as int,
								input as IIngredient[]) {
		m_recipesNum = m_recipesNum + 1;
		var name = "addDiscoveryAltarRecipe_" ~ m_recipesNum;
		mods.astralsorcery.Altar.addDiscoveryAltarRecipe(name, output, starLight, craftTickTime, input);
	}

	//星辉魔法 星辉祭坛
	function makeAltarRecopes2(output as IItemStack,
								starLight as int,
								craftTickTime as int,
								input as IIngredient[]) {
		m_recipesNum = m_recipesNum + 1;
		var name = "addAttunmentAltarRecipe_" ~ m_recipesNum;
		mods.astralsorcery.Altar.addAttunmentAltarRecipe(name, output, starLight, craftTickTime, input);
	}

	//星辉魔法 天辉祭坛
	function makeAltarRecopes3(output as IItemStack,
								starLight as int,
								craftTickTime as int,
								input as IIngredient[]) {
		m_recipesNum = m_recipesNum + 1;
		var name = "addConstellationAltarRecipe_" ~ m_recipesNum;
		mods.astralsorcery.Altar.addConstellationAltarRecipe(name, output, starLight, craftTickTime, altarTransformation(input, 2));
	}

	//星辉魔法 五彩祭坛
	function makeAltarRecopes4(output as IItemStack,
								starLight as int,
								craftTickTime as int,
								input as IIngredient[],
								iRequiredConstellationFocusName as string) {
		m_recipesNum = m_recipesNum + 1;
		var name = "addTraitAltarRecipe_" ~ m_recipesNum;
		mods.astralsorcery.Altar.addTraitAltarRecipe(name, output, starLight, craftTickTime, altarTransformation(input, 3), iRequiredConstellationFocusName);
	}

	//星辉魔法 星辉合成台
	function makeAltar1(output as IItemStack,
						starLight as int,
						craftTickTime as int,
						recipe as string[],
						replacements as IIngredient[string]) {
		var ingredients = [null, null, null, null, null, null, null, null, null] as IIngredient[];

		makeAltarRecopes1(output, starLight, craftTickTime,
			textToIngredients1(ingredients, recipe, replacements));
	}

	//星辉魔法 星辉祭坛
	function makeAltar2(output as IItemStack,
						starLight as int,
						craftTickTime as int,
						recipe as string[],
						replacements as IIngredient[string]) {
	var ingredients = [null, null, null, null, null, null, null, null, null,
						null, null, null, null] as IIngredient[];

	makeAltarRecopes2(output, starLight, craftTickTime,
		textToIngredients1(ingredients, recipe, replacements));
	}

	//星辉魔法 天辉祭坛
	function makeAltar3(output as IItemStack,
						starLight as int,
						craftTickTime as int,
						recipe as string[],
						replacements as IIngredient[string]) {
		var ingredients = [null, null, null, null, null, null, null, null, null,
							null, null, null, null,
							null, null, null, null, null, null, null, null, null] as IIngredient[];

	makeAltarRecopes3(output, starLight, craftTickTime,
		textToIngredients1(ingredients, recipe, replacements));
	}

	//星辉魔法 五彩祭坛
	function makeAltar4(output as IItemStack,
						starLight as int,
						craftTickTime as int,
						recipe as string[],
						replacements as IIngredient[string],
						iRequiredConstellationFocusName as string) {
	var ingredients = [null, null, null, null, null, null, null, null, null,
						null, null, null, null,
						null, null, null, null, null, null, null, null, null,
						null, null, null, null, null, null, null, null, null] as IIngredient[];

	makeAltarRecopes4(output, starLight, craftTickTime,
		textToIngredients1(ingredients, recipe, replacements), iRequiredConstellationFocusName);
	}

	//合成拓展 3*3
	function makeExtendedTable3(output as IItemStack,
								recipe as string[],
								replacements as IIngredient[string]) {

	var ingredients =
		[[null, null, null],
			[null, null, null],
			[null, null, null]] as IIngredient[][];

	mods.extendedcrafting.TableCrafting.addShaped(output,
		textToIngredients2(ingredients, recipe, replacements));
	}

	//合成拓展 5*5
	function makeExtendedTable5(output as IItemStack,
								recipe as string[],
								replacements as IIngredient[string]) {

		var ingredients =
			[[null, null, null, null, null],
				[null, null, null, null, null],
				[null, null, null, null, null],
				[null, null, null, null, null],
				[null, null, null, null, null]] as IIngredient[][];

		mods.extendedcrafting.TableCrafting.addShaped(output,
			textToIngredients2(ingredients, recipe, replacements));
	}

	//合成拓展 7*7
	function makeExtendedTable7(output as IItemStack,
								recipe as string[],
								replacements as IIngredient[string]) {

			var ingredients =
			[[null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null]] as IIngredient[][];

		mods.extendedcrafting.TableCrafting.addShaped(output,
			textToIngredients2(ingredients, recipe, replacements));
	}

	//合成拓展 7*7
	function makeExtendedTable9(output as IItemStack,
								recipe as string[],
								replacements as IIngredient[string]) {

		var ingredients =
			[[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null]] as IIngredient[][];

		mods.extendedcrafting.TableCrafting.addShaped(output,
			textToIngredients2(ingredients, recipe, replacements));
	}

	//无尽贪婪 终极工作台
	function makeAvaritiaCrafting(output as IItemStack,
								recipe as string[],
								replacements as IIngredient[string]) {
		var ingredients =
			[[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null],
				[null, null, null, null, null, null, null, null, null]] as IIngredient[][];

		m_recipesNum = m_recipesNum + 1;
		var name = "addConstellationAltarRecipe_" ~ m_recipesNum;
		mods.avaritia.ExtremeCrafting.addShaped(name, output,
			textToIngredients2(ingredients, recipe, replacements));
	}

	//移除矿词的配方
	function removeOreRecipes(ore as IOreDictEntry) {
		for item in ore.items {
			recipes.remove(item);
		}
	}

	function removeRecipesbyMod(modid as string) {
		if (loadedMods in modid) {
			recipes.removeAll();
		}
	}


	//熔炉 根据矿词移除配方
	function removeOreFurnace(ore as IOreDictEntry) {
		for item in ore.items {
			furnace.remove(item);
		}
	}
}

static recipesUtils as RecipesUtils = RecipesUtils();