##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 工作台合成
##================================================
#modloaded embersconstruct
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.ICraftingInventory;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.Copy;

function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{
    //冲模加工台
    recipes.remove(<embersconstruct:stamptable>);
    RecipeBuilder.get("basic")
      .setShaped([
        [null, <embers:plate_caminite>],
        [<embers:plate_caminite>, <artisanworktables:worktable:5>, <embers:plate_caminite>],
        [null, <embers:plate_caminite>]])
      .addTool(<artisanworktables:artisans_driver_wood>, 1)
      .addOutput(<embersconstruct:stamptable>)
      .create();
}

function itemRemove()
{

}

if (!isInvalid)
{
    init();
}