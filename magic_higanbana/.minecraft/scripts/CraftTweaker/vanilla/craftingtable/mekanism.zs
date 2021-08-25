##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     通用机械 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass MekanismRecipes {
    zenConstructor() {

    }

    function init() {
        TraversalRecipe();
        recipesInit();
        itemRemove();
    }
    
    function recipesInit() {
        //控制电路加工
        recipes.remove(<mekanism:basicblock:8>);
        recipesUtils.addCentreCrossRecipe(<mekanism:basicblock:8>, <techreborn:plates:33>, <forestry:thermionic_tubes:5>, <techreborn:machine_casing:2>);

    }

    function itemRemove() {

    }

    function TraversalRecipe() {
        for recipe in recipes.all {
            var name as string = recipe.name;
            var ResourceName = recipe.fullResourceDomain;
            if (!isNull(recipe.output)) {
                if(recipe.output.definition.id.contains("mekanism")) {
                    //print("recipe for name: " ~ name ~ " and mods is " ~ recipe.output.definition.owner ~ " and outputname is " ~ recipe.output.definition.name);
                    //print("mekanism recipe for name: " ~ name);
                    var len as int = recipe.ingredients2D.length;
                    //print("Anidlebrain recipe.ingredients2D.length " ~ len);
                    if (len == 3) {
                        if (recipe.output.definition.name.contains("Machine")) {
                            recipes.removeByRecipeName(ResourceName);
                            mods.forestry.Carpenter.addRecipe(recipe.output, recipe.ingredients2D, 40, <liquid:fluxed_electrum> * 1200, <techreborn:part:25>);
                        }
                        else if(!recipe.output.definition.name.contains("Block") &&
                                !recipe.output.definition.name.contains("Ingot") &&
                                !recipe.output.definition.name.contains("Plastic")) {
                            recipes.removeByRecipeName(ResourceName);
                            mods.forestry.Carpenter.addRecipe(recipe.output, recipe.ingredients2D, 40, <liquid:lubricant> * 1200);
                        }
                    }
                   
                }
            }
        }
    }
}
