##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     力学合成 工作台合成      ##
##################################################

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

zenClass MechanicsRecipes {
	zenConstructor() {

	}

	function init() {
        recipesInit();
		itemRemove();
    }
	
	function recipesInit() {
		
	}

	function itemRemove() {
		itemHelper.removeItem(<mechanics:drying_table>);
	}
}



