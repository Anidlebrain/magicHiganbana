##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     随意作品 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass RandomthingsRecipes{

    zenConstructor(){

    }

    function init() {
        recipesInit();
    }

    function recipesInit(){
        //隔音器
        recipes.remove(<randomthings:sounddampener>);
        RecipeBuilder.get("farmer")
          .setShaped(recipesUtils.centreCrossitem(<randomthings:portablesounddampener>, <thermalfoundation:rockwool:15>, <ore:plankWood>))
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<roots:imbuer>)
          .create();
        
    }
}