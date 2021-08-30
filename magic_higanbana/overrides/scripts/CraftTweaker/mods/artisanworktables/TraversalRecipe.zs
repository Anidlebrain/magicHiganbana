##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     工匠之作 工作台 遍历
##================================================

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;


function TraversalRecipe() {
    for recipe in recipes.all {
        var name as string = recipe.name;
        var ResourceName = recipe.fullResourceDomain;
        if (!isNull(recipe.output) && !isNull(recipe.ingredients1D)) {
            if (recipe.ingredients1D.length == 0)
            {
                continue;
            }
            if (recipe.output.definition.owner.contains("artisanworktables"))
            {

                RecipeBuilder.get("basic")
                  .setCopy(Copy.byName(ResourceName))
                  .create();
                recipes.removeByRecipeName(ResourceName);
                continue;
            }
            else if (recipe.output.definition.owner.contains("harvestcraft"))
            {
                var flag as bool = false; 
                for ore in recipe.output.ores
                {
                    if(ore.name.contains("food"))
                    {
                        recipes.removeByRecipeName(ResourceName);
                        RecipeBuilder.get("chef")
                          .setCopy(Copy.byName(ResourceName))
                          .addTool(<ore:artisansPan>, 1)
                          .setFluid(<liquid:water> * 250)
                          .create();
                        flag = true;
                        break;
                    }
                }
                if(flag)
                {
                    continue;
                }
            }
            else if (recipe.output.definition.owner.contains("endercore"))
            {
                recipes.removeByRecipeName(ResourceName);
                RecipeBuilder.get("potter")
                    .setCopy(Copy.byName(ResourceName))
                    .addTool(<ore:artisansBurner>, 1)
                    .create();
            }

            if(recipe.output.definition.id.contains("_sword")
                || recipe.output.definition.id.contains("_axe")
                || recipe.output.definition.id.contains("_arrow")
                || recipe.output.definition.id.contains("_hoe")
                || recipe.output.definition.id.contains("_pickaxe")
                || recipe.output.definition.id.contains("_shovel")
                || recipe.output.definition.id.contains("_armow"))
            {//工具
                recipes.removeByRecipeName(ResourceName);
                RecipeBuilder.get("blacksmith")
                    .setCopy(Copy.byName(ResourceName))
                    .addTool(<ore:artisansHammer>, 15)
                    .create();
            }
            else if(recipe.output.definition.id.contains("_helmet")
                || recipe.output.definition.id.contains("_chestplate")
                || recipe.output.definition.id.contains("_leggings")
                || recipe.output.definition.id.contains("_boots"))
            {//防具
                recipes.removeByRecipeName(ResourceName);
                RecipeBuilder.get("tailor")
                    .setCopy(Copy.byName(ResourceName))
                    .addTool(<ore:artisansShears>, 10)
                    .create();
            }
            else if(recipe.output.definition.id.contains("slab")
                || recipe.output.definition.id.contains("stairs")
                || recipe.output.definition.id.contains("fences"))
            {//楼梯
                recipes.removeByRecipeName(ResourceName);
                RecipeBuilder.get("potter")
                    .setCopy(Copy.byName(ResourceName))
                    .addTool(<ore:artisansTSquare>, 10)
                    .create();
            }
            else if(recipe.output.definition.id.contains("food"))
            {//食物
                recipes.removeByRecipeName(ResourceName);
                RecipeBuilder.get("chef")
                  .setCopy(Copy.byName(ResourceName))
                  .addTool(<ore:artisansPan>, 1)
                  .setFluid(<liquid:water> * 250)
                  .create();
            }
            else if(recipe.output.definition.id.contains("block"))
            {

            }
        }
    }
}

TraversalRecipe();

<ore:paneGlass>;
