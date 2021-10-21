##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     生物工厂 工作台合成
##================================================

#priority 2000
#modloaded voidcraft
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import mods.artisanworktables.builder.RecipeBuilder;


function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{
    //虚空水晶
    recipes.remove(<voidcraft:blockvoidcrystal>);
    recipes.remove(<voidcraft:voidcrystal>);


}

function itemRemove()
{
    itemHelper.removeItem(<voidcraft:debugger>);
}

if (!isInvalid)
{
    init();
}