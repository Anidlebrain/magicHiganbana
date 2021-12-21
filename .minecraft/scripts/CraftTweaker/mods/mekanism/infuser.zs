##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     通用机械 冶金灌注机
##================================================
#modloaded higanbanautils
#priority 2000

import mods.mekanism.infuser;

//mods.mekanism.infuser.addRecipe(String infusionType, int infusionConsumed, IItemStack inputStack, IItemStack outputStack)

//基础控制电路板
infuser.removeRecipe(<mekanism:controlcircuit>);
infuser.addRecipe("REDSTONE", 80, <prodigytech:circuit_refined>, <mekanism:controlcircuit>);
