##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     沉浸工程 工作台合成
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

/*
    //工程师装配台
    recipes.remove(<immersiveengineering:wooden_device0:2>);
    recipesUtils.addRecipe(<immersiveengineering:wooden_device0:2>,
        ["   ",
            "DDD",
            "ABC"],
        { A : <minecraft:crafting_table>,
            C : <ore:fenceTreatedWood>,
            B : <contenttweaker:inheritance_stone>.reuse(),
            D : <ore:plankTreatedWood>}
    );
*/

    recipesUtils.addShapelessCycle(<immersiveengineering:material:27>, <prodigytech:circuit_plate>);
}

if (!isInvalid)
{
    init();
}



