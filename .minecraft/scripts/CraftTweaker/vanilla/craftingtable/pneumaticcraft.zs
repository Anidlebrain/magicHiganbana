##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     启动工艺 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    recipesInit();
}

function recipesInit()
{
    recipes.removeByRecipeName("pneumaticcraft:pressure_chamber_glass");
    recipes.removeByRecipeName("pneumaticcraft:pressure_chamber_valve");
}

if (!isInvalid)
{
    init();
}

