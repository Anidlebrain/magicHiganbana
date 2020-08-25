#priority 3000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;

//工作台合成 基础函数 by Anidlebrain

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

//end file by Anidlebrain