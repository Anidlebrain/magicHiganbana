##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     沉浸工程 工作台合成
##================================================
#modloaded higanbana
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
    //工程师锤
    recipes.remove(<immersiveengineering:tool>);
    RecipeBuilder.get("blacksmith")
      .setShaped([
        [null, <ore:ingotSteel>, <ore:string>],
        [null, <ore:stickWood>, <ore:ingotSteel>],
        [<ore:stickWood>]])
      .addOutput(<immersiveengineering:tool>)
      .create();
    
    recipesUtils.addShapelessCycle(<immersiveengineering:material:27>, <prodigytech:circuit_plate>);
}

if (!isInvalid)
{
    init();
}



