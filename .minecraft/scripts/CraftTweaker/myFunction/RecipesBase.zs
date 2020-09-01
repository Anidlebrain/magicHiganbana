#priority 3000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;

//合成 基础函数 by Anidlebrain

function textToIngredients(ingredients as IIngredient[][],
						   output as IItemStack,
						   recipe as string[],
						   replacements as IIngredient[string]) as IIngredient[][] {

	for i, str in recipe {
		for j in 0 .. str.length {
			var item = str[j];
			if " " != item {
				ingredients[i][j] = replacements[item];
			}
		}
	}

	return ingredients;
}

function addRecopes(output as IItemStack,
				   name as string,
				   recipe as string[],
				   replacements as IIngredient[string]){
				   
	var ingredients =
		[[null,null,null],
		 [null,null,null],
		 [null,null,null]] as IIngredient[][];
		 
	recipes.remove(output);
	recipes.addShaped(name, output, textToIngredients(ingredients, output, recipe, replacements));
}

function altarTransformation(replacements as IIngredient[],
							 level as int) as IIngredient[] {
	
	var ingredients =
		[null,null,null,null,null,
		 null,null,null,null,null,
		 null,null,null,null,null,
		 null,null,null,null,null,
		 null,null,null,null,null,
		 null,null,null,null,null] as IIngredient[];
	
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

function makeAltarRecopes0(output as IItemStack,
						   name as string,
						   starLight as int,
						   craftTickTime as int,
						   input as IIngredient[]) {
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe(name, output, starLight, craftTickTime, input);
}

function makeAltarRecopes1(output as IItemStack,
						   name as string,
						   starLight as int,
						   craftTickTime as int,
						   input as IIngredient[]) {
	mods.astralsorcery.Altar.addAttunmentAltarRecipe(name, output, starLight, craftTickTime, input);
}

function makeAltarRecopes2(output as IItemStack,
						   name as string,
						   starLight as int,
						   craftTickTime as int,
						   input as IIngredient[]) {
	mods.astralsorcery.Altar.addConstellationAltarRecipe(name, output, starLight, craftTickTime, altarTransformation(input, 2));
}

function makeAltarRecopes3(output as IItemStack,
						   name as string,
						   starLight as int,
						   craftTickTime as int,
						   input as IIngredient[],
						   iRequiredConstellationFocusName as string) {
	mods.astralsorcery.Altar.addTraitAltarRecipe(name, output, starLight, craftTickTime, altarTransformation(input, 3), iRequiredConstellationFocusName);
}

function makeExtendedTable3(output as IItemStack,
				   recipe as string[],
				   replacements as IIngredient[string]){
	
	var ingredients =
		[[null,null,null],
		 [null,null,null],
		 [null,null,null]] as IIngredient[][];
	
	mods.extendedcrafting.TableCrafting.addShaped(output,
		textToIngredients(ingredients, output, recipe, replacements));
}

function makeExtendedTable5(output as IItemStack,
				   recipe as string[],
				   replacements as IIngredient[string]){
	
	var ingredients =
		[[null,null,null,null,null],
		 [null,null,null,null,null],
		 [null,null,null,null,null],
		 [null,null,null,null,null],
		 [null,null,null,null,null]] as IIngredient[][];
	
	mods.extendedcrafting.TableCrafting.addShaped(output,
		textToIngredients(ingredients, output, recipe, replacements));
}

function makeExtendedTable7(output as IItemStack,
				   recipe as string[],
				   replacements as IIngredient[string]){
	
	var ingredients =
		[[null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null]] as IIngredient[][];
	
	mods.extendedcrafting.TableCrafting.addShaped(output,
		textToIngredients(ingredients, output, recipe, replacements));
}

function makeExtendedTable9(output as IItemStack,
				   recipe as string[],
				   replacements as IIngredient[string]){
	
	var ingredients =
		[[null,null,null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null,null,null],
		 [null,null,null,null,null,null,null,null,null]] as IIngredient[][];
	
	mods.extendedcrafting.TableCrafting.addShaped(output,
		textToIngredients(ingredients, output, recipe, replacements));
}

//end file by Anidlebrain