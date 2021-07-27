##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     沉浸工程 混合机          ##
##################################################

#priority 2000
import mods.immersiveengineering.Mixer;


/*mods.immersiveengineering.Mixer.addRecipe(ILiquidStack output, ILiquidStack fluidInput, IIngredient[] itemInputs, int energy);
*/
Mixer.addRecipe(<liquid:grignard_reagent>, <liquid:anhydrous_ether>,
	[<item:contenttweaker:iodine_crystal>, <ore:dustMagnesium>, <forestry:apatite>], 10000);

