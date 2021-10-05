##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     力学合成 工作台合成
##================================================

#priority 2000
#modloaded mechanics
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{
    
}

function itemRemove()
{
    itemHelper.removeItem(<mechanics:drying_table>);
}

if (!isInvalid)
{
    init();
}