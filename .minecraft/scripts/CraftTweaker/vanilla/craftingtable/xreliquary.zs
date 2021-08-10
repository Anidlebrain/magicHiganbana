##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     圣遗物 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass XreliquaryRecipes {
    zenConstructor() {

    }

    function init() {
        recipesInit();
        recipesRemove();
    }
    
    function recipesInit() {
        
    }

    function recipesRemove() {
        //僵尸之心 => 金粒
        recipes.removeByRecipeName("xreliquary:items/uncrafting/gold_nugget");
        
        //酶腺 => 恶魂之泪
        recipes.removeByRecipeName("xreliquary:items/uncrafting/ghast_tear");

        //AlchemyTable 无法统一移除的配方
        recipes.removeByRecipeName("xreliquary:items/uncrafting/wither_skull");
    }
}