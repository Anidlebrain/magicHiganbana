##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     cot 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass ContentTweakerRecipes {
    zenConstructor() {

    }

    function init() {
        recipesInit();
    }
    
    function recipesInit() {

        //火柴
        RecipeBuilder.get("basic")
          .setShaped([
            [null, <minecraft:coal:1>],
            [<ore:stickWood>, null]])
          .addOutput(<contenttweaker:match_stick>)
          .create();
    }
}



