##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     林业 工作台合成
##================================================
#modloaded forestry
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
    /*
    //晾干台
    recipes.remove(<enderio:item_basic_capacitor>);
    recipesUtils.addRecipe(<enderio:item_basic_capacitor>,
        ["CBC",
            "CBC",
            "A A"],
        { A : <botania:manaresource:3>,
            C : <botania:livingwood>,
            B : <tconstruct:rack:1>}
    );
    */
}

if (!isInvalid)
{
    init();
}


