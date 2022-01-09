##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     科技复兴 化学加工机
##================================================
#modloaded higanbana
#priority 2000

import mods.techreborn.chemicalReactor;

//mods.techreborn.chemicalReactor.addRecipe(IItemStack output1, IIngredient input1, IIngredient input2, int ticktime, int euTick);

//氢氧化钠
chemicalReactor.addRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "sodium_hydroxide", Amount: 1000}}),
    <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),
    <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "liquidsodium", Amount: 1000}}), 
    200, 1000);

//氢氧化钠
chemicalReactor.addRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "sodium_hydroxide", Amount: 1000}}),
    <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),
    <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsodium", Amount: 1000}}), 
    200, 1000);

