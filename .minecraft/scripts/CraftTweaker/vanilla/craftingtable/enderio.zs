##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     末影接口 工作台合成      ##
##################################################

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass MechanicsRecipes {
	zenConstructor() {

	}

	function init() {
        recipesInit();
    }
	
	function recipesInit() {

		//晶体管
		recipes.remove(<enderio:item_basic_capacitor>);
		recipesUtils.addRecipe(<enderio:item_basic_capacitor>,
			[" CA",
			 "CBC",
			 "ACA"],
			{ A : <enderio:item_material:20>,
			  C : <techreborn:cable>,
			  B : <ore:circuitMaster>}
		);
	}
}



