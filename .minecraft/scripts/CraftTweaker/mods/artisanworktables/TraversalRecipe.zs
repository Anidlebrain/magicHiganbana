##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 工作台 遍历
##================================================
#modloaded higanbana
#priority 2000

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;


function TraversalRecipe() {
    for recipe in recipes.all {
        var name as string = recipe.name;
        var resourceName = recipe.fullResourceDomain;
        if (!isNull(recipe.output) && !isNull(recipe.ingredients1D)) {
            if (recipe.ingredients1D.length == 0)
            {
                continue;
            }
            var outItemId = recipe.output.definition.id;
            if (recipe.output.definition.owner.contains("artisanworktables"))
            {
                RecipeBuilder.get("basic")
                  .setCopy(Copy.byName(resourceName))
                  .create();
                recipes.removeByRecipeName(resourceName);
                continue;
            }
            else if (recipe.output.definition.owner.contains("harvestcraft"))
            {
                var flag as bool = false; 
                for ore in recipe.output.ores
                {
                    if(ore.name.contains("food"))
                    {
                        recipes.removeByRecipeName(resourceName);
                        RecipeBuilder.get("chef")
                          .setCopy(Copy.byName(resourceName))
                          .addTool(<ore:artisansPan>, 2)
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

            if (resourceName.contains("endercore"))
            {
                recipes.removeByRecipeName(resourceName);
                RecipeBuilder.get("potter")
                    .setCopy(Copy.byName(resourceName))
                    .addTool(<ore:artisansBurner>, 2)
                    .addTool(<ore:artisansSolderer>, 3)
                    .setFluid(<liquid:lava> * 50)
                    .create();
                continue;
            }
            else if (resourceName.contains("compressed"))
            {
                recipes.removeByRecipeName(resourceName);
                RecipeBuilder.get("potter")
                    .setCopy(Copy.byName(resourceName))
                    .addTool(<ore:artisansBurner>, 1)
                    .create();
                continue;
            }

            if(outItemId.contains("_sword")
                || outItemId.contains("_axe")
                || outItemId.contains("_arrow")
                || outItemId.contains("_hoe")
                || outItemId.contains("_pickaxe")
                || outItemId.contains("_shovel")
                || outItemId.contains("_armow"))
            {//工具
                recipes.removeByRecipeName(resourceName);
                RecipeBuilder.get("blacksmith")
                    .setCopy(Copy.byName(resourceName))
                    .addTool(<ore:artisansHammer>, 8)
                    .create();
            }
            else if(outItemId.contains("_helmet")
                || outItemId.contains("_chestplate")
                || outItemId.contains("_leggings")
                || outItemId.contains("_boots"))
            {//防具
                recipes.removeByRecipeName(resourceName);
                RecipeBuilder.get("tailor")
                    .setCopy(Copy.byName(resourceName))
                    .addTool(<ore:artisansShears>, 6)
                    .create();
            }
            else if(outItemId.contains("slab")
                || outItemId.contains("stairs")
                || outItemId.contains("fence"))
            {//楼梯
                recipes.removeByRecipeName(resourceName);
                RecipeBuilder.get("potter")
                    .setCopy(Copy.byName(resourceName))
                    .addTool(<ore:artisansTSquare>, 5)
                    .create();
            }
            else if(outItemId.contains("food"))
            {//食物 厨师
                recipes.removeByRecipeName(resourceName);
                RecipeBuilder.get("chef")
                  .setCopy(Copy.byName(resourceName))
                  .addTool(<ore:artisansPan>, 4)
                  .setFluid(<liquid:water> * 250)
                  .create();
            }
            else if(outItemId.contains("block")
                || outItemId.contains("glass"))
            {//玻璃 瓷
                if(outItemId.contains("pane"))
                {
                    print("pane - id : " ~ outItemId ~ " - name : " ~ resourceName);
                    recipes.removeByRecipeName(resourceName);
                    RecipeBuilder.get("potter")
                      .setCopy(Copy.byName(resourceName))
                      .addTool(<ore:artisansBurner>, 3)
                      .create();
                    continue;
                }
                var flag as bool = false; 
                for ore in recipe.output.ores
                {
                    if(ore.name.contains("blockGlass"))
                    {
                        recipes.removeByRecipeName(resourceName);
                        RecipeBuilder.get("potter")
                          .setCopy(Copy.byName(resourceName))
                          .addTool(<ore:artisansBurner>, 1)
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
            else if(outItemId.contains("terracotta")
                || outItemId.contains("concrete")
                || outItemId.contains("clay")
                || outItemId.contains("wall"))
            {//陶瓷
                recipes.removeByRecipeName(resourceName);
                RecipeBuilder.get("potter")
                  .setCopy(Copy.byName(resourceName))
                  .addTool(<ore:artisansBurner>, 3)
                  .create();
            }
            else if(outItemId.contains("wool"))
            {//羊毛 农夫
                if (recipe.ingredients1D.length > 4)
                {
                    recipes.removeByRecipeName(resourceName);
                }
                RecipeBuilder.get("farmer")
                  .setCopy(Copy.byName(resourceName))
                  .create();
            }
            else if(outItemId.contains("banner"))
            {//旗帜 皮革
                recipes.removeByRecipeName(resourceName);
                RecipeBuilder.get("tanner")
                  .setCopy(Copy.byName(resourceName))
                  .create();
            }
            else
            {
                print("id : " ~ outItemId ~ " - name : " ~ resourceName);
            }
            
        }
    }
}

TraversalRecipe();
