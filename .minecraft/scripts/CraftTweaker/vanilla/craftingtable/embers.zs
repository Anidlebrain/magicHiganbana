##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     余烬 工作台合成
##================================================
#modloaded higanbanautils
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
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
    itemHelper.removeItem(<embers:block_furnace>);
}

if (!isInvalid)
{
    init();
}
