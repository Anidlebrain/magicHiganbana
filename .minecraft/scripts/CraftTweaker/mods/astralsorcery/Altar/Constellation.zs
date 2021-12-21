##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 天辉祭坛
##================================================
#modloaded higanbanautils
#priority 2000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.Altar;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.addAltarRecipe;

function makeAltar(output as IItemStack,
                   starLight as int,
                   craftTickTime as int,
                   recipe as string[],
                   replacements as IIngredient[string])
{
    if(starLight > 4000)
    {
        addAltarRecipe(output, 3, 4000, craftTickTime, recipe, replacements, "");
    }
    else
    {
        addAltarRecipe(output, 3, starLight, craftTickTime, recipe, replacements, "");
    }
}
