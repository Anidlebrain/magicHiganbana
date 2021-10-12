##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     物品处理类
##=================================================
#priority 99999999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import scripts.AnildebrainUtils.BaseUtils as alg;
import scripts.AnildebrainUtils.messageUtils.getMessageKey;

zenClass ItemHelper
{
    zenConstructor()
    {

    }

    //删除物品
    function removeItem(item as IItemStack) {
        recipes.remove(item);
        furnace.remove(item);
        furnace.setFuel(item, 0);
        mods.jei.JEI.removeAndHide(item);
        item.addTooltip(getMessageKey("utils.currentlybanned"));
    }

    //删除物品
    function removeItems(items as IItemStack[]) {
        for item in items
        {
            removeItem(item);
        }

    }

    //删除物品 并且删除矿词
    function removeItemAndOre(item as IItemStack, ore as IOreDictEntry) {
        removeItem(item);
        ore.removeItems([item]);
    }

    function typeConversion(ore as IOreDictEntry) as IItemStack {
        return ore.firstItem;
    }

    function typeConversion(item as IIngredient) as IItemStack {
        var array as IItemStack[] = item.itemArray;
        if (array.length == 0) {
            return item;
        }
        return array[0];
    }

    function typeConversion(item as IItemStack) as IItemStack {
        return item;
    }


    function getItem(name as string) as IItemStack {
        var tmp as string = alg.removeBraces(name);
        return itemUtils.getItem(tmp);
    }

    function getOre(name as string) as IOreDictEntry {
        var tmp as string = alg.removeBraces(name);
        return oreDict.get(tmp);
    }

    function hasOre(name as string) as bool {
        var tmp as string = alg.removeBraces(name);
        return oreDict has tmp;
    }

    function geLiquid(name as string) as ILiquidStack {
        var tmp as string = alg.removeBraces(name);
        var tmp1 as string = alg.removeColon(tmp);
        return game.getLiquid(tmp1);
    }

    
}

static itemHelper as ItemHelper = ItemHelper();