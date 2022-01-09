##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 工作台合成
##================================================
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
    recipes.remove(<tconstruct:rack:1>);
    RecipeBuilder.get("basic")
      .setCopy(Copy.byOutput([<tconstruct:rack:1>]))
      .addTool(<ore:artisansDriver>, 1)
      .create();
    /*
    
    RecipeBuilder.get("basic")
      .setShaped([
        [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]])
      .addTool(<ore:artisansToolWood>, 1)
      .addOutput(<tconstruct:rack:1>)
      .setRecipeFunction(
        function(out, ins, info)
        {
            var craftinfo as ICraftingInventory = info.inventory;
            var items as IItemStack[][] = craftinfo.items;

            if (items.length != 3)   
            {
                print("tconstruct " ~ items[1].length);
                return null;
            }

            if (items[1].length != 3)
            {
                print("tconstruct[1] " ~ items[1].length);
                return null;
            }

            if (!(items[1][0].definition.id == items[1][1].definition.id && items[1][1].definition.id == items[1][2].definition.id))
            {
                print("items" ~ items[1][0].definition.id ~ items[1][1].definition.id ~ items[1][1].definition.id ~ items[1][2].definition.id);
                return null;
            }
            var name as string = items[1][0].definition.id;
            return out.updateTag({"id" : name});
        })
      .create();
    */
    //冲模加工台
    recipes.remove(<embersconstruct:stamptable>);
    RecipeBuilder.get("basic")
      .setShaped([
        [null, <embers:plate_caminite>, null],
        [<embers:plate_caminite>, <artisanworktables:worktable:5>, <embers:plate_caminite>],
        [null, <embers:plate_caminite>, null]])
      .addTool(<artisanworktables:artisans_driver_wood>, 1)
      .addOutput(<embersconstruct:stamptable>)
      .create();
}

function itemRemove()
{
    //合成站
    itemHelper.removeItem(<tconstruct:tooltables>);
}

if (!isInvalid)
{
    init();
}