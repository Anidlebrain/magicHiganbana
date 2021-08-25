##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     工作台合成
##================================================

#priority 1999
import scripts.CraftTweaker.vanilla.craftingtable;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass CraftingTable {
    zenConstructor() {

    }

    function vanillaRecipes() {

        //活塞
        recipes.remove(<minecraft:piston>);
        recipesUtils.addRecipe(<minecraft:piston>,
            ["BBB",
             "ADA",
             "ACA"],
            { A : <ore:stone>,
              B : <ore:plankWood>,
              C : <ore:dustRedstone>,
              D : <ore:ingotCopper>}
        );

        //熔炉
        recipes.remove(<minecraft:furnace>);
        recipesUtils.addRecipe(<minecraft:furnace>,
            ["AAA",
             "ABA",
             "AAA"],
            { A : <ore:cobblestone>,
              B : <ore:coal>}
        );
        
        recipes.remove(<minecraft:crafting_table>);
    }

    // 遍历配方
    function TraversalRecipe() {

        for recipe in recipes.all {
            var name as string = recipe.name;
            var ResourceName = recipe.fullResourceDomain;
            if (!isNull(recipe.output)) {
                if(recipe.output.definition.id.contains("mekanism")) {
                    print("recipe for name: " ~ name ~ " and mods is " ~ recipe.output.definition.owner ~ " and outputname is " ~ recipe.output.definition.name);
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
            else {
                /*
                print("recipe is not output name:[" ~ ResourceName ~ "] command:[" ~ recipe.commandString ~ "] Transformers:["
                    ~ toString(recipe.hasTransformers()) ~ "] RecipeAction:[" ~ toString(recipe.hasRecipeAction()) ~ "] RecipeFunction:["
                    ~ toString(recipe.hasRecipeFunction()) ~ "]");*/
                recipes.removeByRecipeName(ResourceName);
            }
            // 为什么会有没有输出的配方？
            // 末影接口配方无法遍历
            if (!isNull(recipe.output) && name.contains("enderio") 
            && recipe.output.definition.owner.contains("enderio")) {
                // 末影接口配方修改
                print("enderio recipe for name: " ~ name);
                recipes.removeByRecipeName(name);
                //recipes.remove(recipe.output);
                mods.extendedcrafting.EnderCrafting.addShaped(recipe.output, recipe.ingredients2D);
            }
        }
    }
    
    function recipesInit() {
        if (!isInvalid)
        {
            vanillaRecipes();
            craftingtable.appliedenergistics2.Appliedenergistics2Recipes().init();
            craftingtable.bloodmagic.BloodmagicRecipes().init();
            craftingtable.botania.BotaniaRecipes().init();
            craftingtable.chisel.ChiselRecipes().init();
            craftingtable.contenttweaker.ContentTweakerRecipes().init();
            craftingtable.enderio.EnderioRecipes().init();
            craftingtable.extendedcrafting.ExtendedcraftingRecipes().init();
            craftingtable.extrautils2.Extrautils2Recipes().init();
            craftingtable.forestry.ForestryRecipes().init();
            craftingtable.harvestcraft.HarvestcraftRecipes().init();
            craftingtable.immersiveengineering.ImmersiveengineeringRecipes().init();
            //craftingtable.mechanics.MechanicsRecipes().init();
            craftingtable.mekanism.MekanismRecipes().init();
            craftingtable.modularmachinery.ModularMachineryRecipes().init();
            craftingtable.naturesaura.NaturesauraRecipes().init();
            craftingtable.pneumaticcraft.PneumaticcraftRecipes().init();
            craftingtable.prodigytech.ProdigytechRecipes().init();
            craftingtable.randomthings.RandomthingsRecipes().init();
            craftingtable.roots.RootsRecipes().init();
            craftingtable.skyresources.SkyresourcesRecipes().init();
            craftingtable.techreborn.TechrebornRecipes().init();
            craftingtable.thermalexpansion.ThermalexpansionRecipes().init();
            craftingtable.xreliquary.XreliquaryRecipes().init();
            craftingtable.woot.WootRecipes().init();
            //TraversalRecipe();
        }

    }
}