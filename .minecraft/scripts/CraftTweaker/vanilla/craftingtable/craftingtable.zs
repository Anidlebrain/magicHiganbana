##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     初始化 工作台合成        ##
##################################################

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
    }

    // 遍历配方
    function TraversalRecipe() {
        for recipe in recipes.all {
            var name as string = recipe.name;
            var ResourceName = recipe.fullResourceDomain;
            if (!isNull(recipe.output)) {
                // 为什么会有没有输出的配方？
                // 末影接口配方无法遍历
                /*
                print("recipe for name: " ~ name ~ " and mods is " ~ recipe.output.definition.owner ~ " and outputname is " ~ recipe.output.definition.name);
                if(recipe.output.definition.id.contains("enderio")) {
                    print("enderio recipe for name: " ~ name);
                    recipes.removeByRecipeName(name);
                    mods.extendedcrafting.EnderCrafting.addShaped(recipe.output, recipe.ingredients2D);
                }
                */
            }
            else {
                /*
                print("recipe is not output name:[" ~ ResourceName ~ "] command:[" ~ recipe.commandString ~ "] Transformers:["
                    ~ toString(recipe.hasTransformers()) ~ "] RecipeAction:[" ~ toString(recipe.hasRecipeAction()) ~ "] RecipeFunction:["
                    ~ toString(recipe.hasRecipeFunction()) ~ "]");*/
                recipes.removeByRecipeName(ResourceName);
            }
            /*
            if (!isNull(recipe.output) && name.contains("enderio") 
            && recipe.output.definition.owner.contains("enderio")) {
                // 末影接口配方修改
                print("enderio recipe for name: " ~ name);
                recipes.removeByRecipeName(name);
                //recipes.remove(recipe.output);
                mods.extendedcrafting.EnderCrafting.addShaped(recipe.output, recipe.ingredients2D);
            }
            */
        }
    }
    
    function recipesInit() {
        if (!isInvalid)
        {
            vanillaRecipes();
            craftingtable.contenttweaker.ContentTweakerRecipes().init();
            craftingtable.chisel.ChiselRecipes().init();
            craftingtable.botania.BotaniaRecipes().init();
            craftingtable.harvestcraft.HarvestcraftRecipes().init();
            craftingtable.mechanics.MechanicsRecipes().init();
            craftingtable.roots.RootsRecipes().init();
            craftingtable.skyresources.SkyresourcesRecipes().init();
            craftingtable.xreliquary.XreliquaryRecipes().init();
            craftingtable.bloodmagic.BloodmagicRecipes().init();
            craftingtable.modularmachinery.ModularMachineryRecipes().init();
            craftingtable.immersiveengineering.ImmersiveengineeringRecipes().init();
            craftingtable.prodigytech.ProdigytechRecipes().init();
            craftingtable.techreborn.TechrebornRecipes().init();
            craftingtable.appliedenergistics2.Appliedenergistics2Recipes().init();
            craftingtable.woot.WootRecipes().init();
            craftingtable.thermalexpansion.ThermalexpansionRecipes().init();
            craftingtable.mekanism.MekanismRecipes().init();
            craftingtable.extrautils2.Extrautils2Recipes().init();
            TraversalRecipe();
        }

    }
}