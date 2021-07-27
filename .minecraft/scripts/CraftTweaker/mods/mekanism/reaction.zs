##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     通用机械 加压反应室       ##
##################################################

#priority 2000
import mods.mekanism.reaction;

//mods.mekanism.reaction.addRecipe(IIngredient itemInput, ILiquidStack liquidInput, IGasStack gasInput, IItemStack itemOutput, IGasStack gasOutput, double energy, int duration);

//基片 乙烯
reaction.removeRecipe(<mekanism:substrate>, <gas:ethene>);
//
//reaction.removeRecipe(<mekanism:substrate>, <gas:oxygen>);

//乙烯
reaction.addRecipe(<mekanism:biofuel>, <liquid:ethanol>, <gas:sulfuricacid>, null, <gas:ethene>, 98765, 2000);