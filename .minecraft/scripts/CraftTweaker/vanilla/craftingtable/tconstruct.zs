##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     匠魂 工作台合成
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
import crafttweaker.data.IData;

function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{
    //晾干架
    recipes.remove(<tconstruct:rack:1>);
    RecipeBuilder.get("carpenter")
      .setShaped([[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]])
      .addTool(<ore:artisansHandsaw>, 4)
      .addOutput(<tconstruct:rack:1>)
      .setRecipeFunction(
        function(out, ins, info)
        {
            var craftinfo as ICraftingInventory = info.inventory;
            var items as IItemStack[][] = craftinfo.items;
            if (items.length != 3)   

            
            {
                //print("tconstruct " ~ items[1].length);
                return null;
            }
            if (items[1].length != 3)
            {
                //print("tconstruct[1] " ~ items[1].length);
                return null;
            }
            if (!(items[1][0].definition.id == items[1][1].definition.id && items[1][1].definition.id == items[1][2].definition.id))
            {
                //print("items" ~ items[1][0].definition.id ~ items[1][1].definition.id ~ items[1][1].definition.id ~ items[1][2].definition.id);
                return null;
            }
            var name as string = items[1][0].definition.id;
            //print(name);
            var data as IData = {"textureBlock" : {"id" : name, Count : 1 as int, Damage : items[1][0].metadata}};
            return out.updateTag(data);
        })
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