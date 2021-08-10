##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     启动工艺 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass PneumaticcraftRecipes{

    zenConstructor(){

    }

    function init() {
        recipesInit();
    }

    function recipesInit(){
        
        //压力室墙壁
        recipes.remove(<pneumaticcraft:pressure_chamber_wall>);
        recipesUtils.addCentreCrossRecipe(<pneumaticcraft:pressure_chamber_wall>, <ore:ingotIronCompressed>, <ore:gearIronCompressed>, <extrautils2:ingredients:9>);

        recipes.removeByRecipeName("pneumaticcraft:pressure_chamber_glass");
        recipes.removeByRecipeName("pneumaticcraft:pressure_chamber_valve");
    }
}

