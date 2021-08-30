##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     根源魔法 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass RootsRecipes {
    zenConstructor() {

    }

    function init() {
        recipesInit();
    }
    
    function recipesInit() {

        //研钵
        recipes.remove(<roots:mortar>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [<prodigytech:ash_bricks>, null, <prodigytech:ash_bricks>],
            [<prodigytech:ash_bricks>, null, <prodigytech:ash_bricks>],
            [null, <forestry:ash_brick>, null]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<roots:mortar>)
          .create();
        
        //研杵
        recipes.remove(<roots:pestle>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [null, null, <forestry:ash_brick>],
            [<prodigytech:ash_bricks>, <prodigytech:ash_bricks>, null],
            [<prodigytech:ash_bricks>, <prodigytech:ash_bricks>, null]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<roots:pestle>)
          .create();

        //柴堆
        recipes.remove(<roots:pyre>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [null, <botania:livingwood>, null],
            [<botania:livingwood>, <ore:powderMana>, <botania:livingwood>],
            [<minecraft:stonebrick:2>, <roots:terra_moss>, <minecraft:stonebrick:2>]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<roots:pyre>)
          .create();
        
        //注造器
        recipes.remove(<roots:imbuer>);
        RecipeBuilder.get("farmer")
          .setShaped(recipesUtils.centreCrossitem(<ore:stickWood>, <ore:wildroot>, <ore:bricksStone>))
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<roots:imbuer>)
          .create();
    }
}