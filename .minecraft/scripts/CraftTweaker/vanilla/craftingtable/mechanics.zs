##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     力学合成 工作台合成      ##
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
		//晾干台
		recipes.remove(<mechanics:drying_table>);
		recipesUtils.addRecipe(<mechanics:drying_table>,
			["CBC",
			 "CBC",
			 "A A"],
			{ A : <botania:manaresource:3>,
			  C : <botania:livingwood>,
			  B : <tconstruct:rack:1>}
		);
	}
}



