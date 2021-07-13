##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     通用机械 工作台合成      ##
##################################################

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass MekanismRecipes {
    zenConstructor() {

    }

	function init() {
        recipesInit();
        itemRemove();
    }
	
    function recipesInit() {
        //控制电路加工
        recipes.remove(<mekanism:basicblock:8>);

    }

    function itemRemove() {

    }
}
