##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     末影接口 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass EnderioRecipes {
    zenConstructor() {

    }

    function init() {
        recipesInit();
    }
    
    function recipesInit() {

        //晶体管
        recipes.remove(<enderio:item_basic_capacitor>);
        RecipeBuilder.get("blacksmith")
          .setShaped([
            [null, <enderio:item_material:20>, <enderio:item_material:20>],
            [<enderio:item_material:20>, <techreborn:cable>, <enderio:item_material:20>],
            [<enderio:item_material:20>, <enderio:item_material:20>, <enderio:item_material:20>]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<extrautils2:soundmuffler>)
          .create();
    }
}



