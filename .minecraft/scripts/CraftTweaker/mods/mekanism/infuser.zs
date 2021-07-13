##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     通用机械 冶金灌注机      ##
##################################################

#priority 2000
import mods.mekanism.infuser;

//mods.mekanism.infuser.addRecipe(String infusionType, int infusionConsumed, IItemStack inputStack, IItemStack outputStack)

mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>);
infuser.addRecipe("REDSTONE", 80, <prodigytech:circuit_refined>, <mekanism:controlcircuit>);