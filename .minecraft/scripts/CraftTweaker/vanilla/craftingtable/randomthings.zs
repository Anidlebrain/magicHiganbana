###################################################
##          [Author]:   Anidlebrain              ##
##          [License]:  CC BY-NC-SA 4.0          ##
##          [Info]:     随意作品 工作台合成        ##
###################################################
#norun
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass RandomthingsRecipes{

	zenConstructor(){

	}

	function init() {
		recipesInit();
	}

	function recipesInit(){
        //柴堆
		recipes.remove(<randomthings:sounddampener>);
		recipesUtils.addRecipe(<randomthings:sounddampener>,
			["ABA",
			 "BCB",
			 "ABA"],
			{ C : <ore:plankWood>,
			  B : <thermalfoundation:rockwool:15>,
			  A : <randomthings:portablesounddampener>}
        );
        
    }
}