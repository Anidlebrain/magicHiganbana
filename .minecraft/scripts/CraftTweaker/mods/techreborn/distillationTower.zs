##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     科技复兴 蒸馏塔          ##
##################################################
#priority 2000
import mods.techreborn.distillationTower;

//mods.techreborn.distillationTower.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient input1, IIngredient input2, int ticktime, int euTick);

//无水乙醚
distillationTower.addRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),
<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "anhydrous_ether", Amount: 1000}}),
null, null, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "ether", Amount: 1000}}) * 2, null, 90, 5500);


