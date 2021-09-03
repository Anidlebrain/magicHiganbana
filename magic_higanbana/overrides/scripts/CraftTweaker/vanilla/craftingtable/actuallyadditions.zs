##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     实用拓展 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass ActuallyadditionsRecipes{

    zenConstructor(){

    }

    function init() {
        recipesInit();
    }

    function recipesInit(){
        //煤炭发电机
        recipes.remove(<actuallyadditions:block_coal_generator>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:plateSteel>, <skyresources:alchemyitemcomponent:6>, <ore:plateSteel>],
            [<ore:plateSteel>, <immersiveengineering:metal_device1:2>, <ore:plateSteel>],
            [<ore:plateSteel>, <skyresources:alchemyitemcomponent:6>, <ore:plateSteel>]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<actuallyadditions:block_coal_generator>)
          .create();
    }
}