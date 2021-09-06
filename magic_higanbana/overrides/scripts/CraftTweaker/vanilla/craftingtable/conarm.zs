##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     匠魂盔甲 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass WootRecipes {
    zenConstructor() {

    }

    function init() {
        recipesInit();
        itemRemove();
    }

    function recipesInit() {
        
        
    }

    function itemRemove() {
        itemHelper.removeItem(<conarm:travel_sack>);
    }
}
