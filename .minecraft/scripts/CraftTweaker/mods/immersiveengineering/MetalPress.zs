##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     沉浸工程 金属冲压机
##================================================

#priority 2000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Casting;

import scripts.AnildebrainUtils.BaseUtils;
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;



MetalPress.removeAll();

for ore in oreDict {
    if (ore.name.startsWith("ingot")) {
        var oreName as string = ore.name;
        var metal as string = oreName.substring(5, oreName.length());
        var fluidname as string = metal;
        var fluid = itemHelper.getLiquid(fluidname);

        //金属板
        var plate as string = "plate" ~ metal;
        if (itemHelper.hasOre(plate)) {
            var plateOre = itemHelper.getOre(plate);
            recipesUtils.removeOreRecipes(plateOre);
            MetalPress.addRecipe(plateOre.firstItem, ore, <immersiveengineering:mold>, 2000, 1);
            if (!isNull(fluid)) {
                //Casting.addBasinRecipe(plateOre.firstItem, <item:tconstruct:cast_custom:3>, fluid, 144, false, 20000);
            }
            else {
                print("fluidname:" ~ fluidname);
            }

        }
        else {
            //print("plate:" ~ oreName);
        }

        //齿轮
        var gear as string = "gear" ~ metal;
        if (itemHelper.hasOre(gear)) {
            var gearOre = itemHelper.getOre(gear);
            recipesUtils.removeOreRecipes(gearOre);
            MetalPress.addRecipe(gearOre.firstItem, ore, <immersiveengineering:mold:1>, 2000, 4);
            if (!isNull(fluid)) {
                //Casting.addBasinRecipe(gearOre.firstItem, <item:tconstruct:cast_custom:4>, fluid, 576, false, 20000);
            }

        }
        else {
            //print("gear:" ~ oreName);
        }

        //金属棒
        var rod as string = "rod" ~ metal;
        if (itemHelper.hasOre(rod)) {
            var rodOre = itemHelper.getOre(rod);
            recipesUtils.removeOreRecipes(rodOre);
            MetalPress.addRecipe(rodOre.firstItem, ore, <immersiveengineering:mold:2>, 2000, 2);
        }
        else {
            //print("rod:" ~ oreName);
        }

        /*
        //长金属棒
        var rodLong as string = "rodLong" ~ metal;
        if (itemHelper.hasOre(rodLong)) {
            var rodLongOre = itemHelper.getOre(rodLong);
            MetalPress.addRecipe(rodLongOre.firstItem, ore, <immersiveengineering:mold:2>, 2000, 3);
            recipesUtils.removeOreRecipes(rodLongOre);
        }
        else {
            print("rodLong:" ~ ore);
        }
        */
    }
}

MetalPress.removeRecipe(<techreborn:plates:38>);