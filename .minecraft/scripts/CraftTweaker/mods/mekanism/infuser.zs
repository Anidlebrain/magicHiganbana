##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     通用机械 冶金灌注机      ##
##################################################

#priority 2000
import mods.mekanism.infuser;

//mods.mekanism.infuser.addRecipe(String infusionType, int infusionConsumed, IItemStack inputStack, IItemStack outputStack)

//基础控制电路板
infuser.removeRecipe(<mekanism:controlcircuit>);
infuser.addRecipe("REDSTONE", 80, <prodigytech:circuit_refined>, <mekanism:controlcircuit>);

//富集合金
infuser.removeRecipe(<mekanism:enrichedalloy>);
infuser.addRecipe("REDSTONE", 80, <enderio:item_alloy_endergy_ingot:6>, <mekanism:enrichedalloy>);

//
