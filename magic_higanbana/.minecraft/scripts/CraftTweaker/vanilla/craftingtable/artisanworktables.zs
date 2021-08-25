##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     实用拓展 工匠之作
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;


zenClass ActuallyadditionsRecipes{

    zenConstructor(){

    }

    function init() {
        recipesInit();
    }

    function recipesInit(){
        //基础工作台
        recipesUtils.addShapeless(<artisanworktables:worktable:5>, [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>]);
    }
}