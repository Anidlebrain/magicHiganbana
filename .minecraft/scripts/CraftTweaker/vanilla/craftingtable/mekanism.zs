##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     通用机械 工作台合成
##================================================
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init() {
    TraversalRecipe();
    recipesInit();
    itemRemove();
}

function recipesInit() {
    /*
    //控制电路加工
    recipes.remove(<mekanism:basicblock:8>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.centreCrossitem(<techreborn:plates:33>, <forestry:thermionic_tubes:5>, <techreborn:machine_casing:2>))
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<mekanism:basicblock:8>)
      .create();
    */
}

function itemRemove() {

}

function TraversalRecipe() {
    /*
    for recipe in recipes.all {
        var name as string = recipe.name;
        var ResourceName = recipe.fullResourceDomain;
        if (!isNull(recipe.output))
        {
            if(recipe.output.definition.id.contains("mekanism"))
            {
                //print("recipe for name: " ~ name ~ " and mods is " ~ recipe.output.definition.owner ~ " and outputname is " ~ recipe.output.definition.name);
                //print("mekanism recipe for name: " ~ name);
                var len as int = recipe.ingredients2D.length;
                //print("Anidlebrain recipe.ingredients2D.length " ~ len);
                if (len == 3)
                {
                    if (recipe.output.definition.name.contains("Machine"))
                    {
                        recipes.removeByRecipeName(ResourceName);
                        mods.forestry.Carpenter.addRecipe(recipe.output, recipe.ingredients2D, 40, <liquid:fluxed_electrum> * 1200, <techreborn:part:25>);
                    }
                    else if(!recipe.output.definition.name.contains("Block") &&
                            !recipe.output.definition.name.contains("Ingot") &&
                            !recipe.output.definition.name.contains("Plastic"))
                    {
                        recipes.removeByRecipeName(ResourceName);
                        mods.forestry.Carpenter.addRecipe(recipe.output, recipe.ingredients2D, 40, <liquid:lubricant> * 1200);
                    }
                }
                
            }
        }
    }
    */
}

if (!isInvalid)
{
    init();
}
