##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     甜蜜魔法 工作台合成
##================================================
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;


function init()
{
    recipeRemove();
    recipesInit();
}

function recipesInit()
{
}

function itemRemove()
{

}

function recipeRemove()
{
    recipes.removeByMod("sweetmagic");
    //玻璃瓶
    //recipes.removeByRecipeName("sweetmagic:bottle");
}

if (!isInvalid)
{
    init();
}