##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     实用拓展 工作台合成
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
        //煤炭发电机
        recipes.remove(<actuallyadditions:block_coal_generator>);
        recipesUtils.addRecipe(<actuallyadditions:block_coal_generator>,
            ["ABA",
             "ADA",
             "ABA"],
            { A : <ore:plateSteel>,
              B : <skyresources:alchemyitemcomponent:6>,
              D : <immersiveengineering:metal_device1:2>
            }
        );
        
    }
}