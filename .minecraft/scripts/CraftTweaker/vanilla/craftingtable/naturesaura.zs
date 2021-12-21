##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     自然灵气 工作台合成
##================================================
#modloaded higanbanautils
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    recipesInit();
}

function recipesInit()
{
    //供桌 压缩合成
    recipes.remove(<naturesaura:offering_table>);
}

if (!isInvalid)
{
    init();
}