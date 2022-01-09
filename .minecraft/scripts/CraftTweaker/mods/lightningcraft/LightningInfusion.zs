##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     雷电工艺 LE融合器
##================================================
#modloaded higanbana
#priority 2000

import moretweaker.lightningcraft.LightningInfusion;
/*
注1: moretweaker 里判断了 inputs.length 必须等于 4
注2: lightningcraft 里判断了 inputs 必须是 IItemStack[]
LightningInfusion.add(IItemStack output, IIngredient catalyst, int requiredLE, IIngredient[] inputs);

LightningInfusion.remove(IIngredient output);

LightningInfusion.removeAll();
*/

//天辉宝石
LightningInfusion.add(<contenttweaker:celestite_gem>, <contenttweaker:starglow_gem>, 1000, 
    [<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>, <lightningcraft:ingot:1>, <astralsorcery:itemcraftingcomponent>]);