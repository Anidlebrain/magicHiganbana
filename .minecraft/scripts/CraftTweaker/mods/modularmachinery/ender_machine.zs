##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     模块化机械 末影制造机
##================================================
#priority 2000
#norun
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

zenClass EnderMachineRecipes {
    zenConstructor() {
        m_machineName = "ender_machine";
        m_recipesNum = 0;
    }

    var m_machineName as string;
    var m_recipesNum as int;

    function addRecipesEx(recipeTime as int) as RecipePrimer {

    }

    function recipesInit() {

    }
}

if (!isInvalid)
{
    init();
}