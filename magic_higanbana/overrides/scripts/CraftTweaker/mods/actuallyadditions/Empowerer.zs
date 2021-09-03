##===============================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     实用拓展 充能台
##===============================================
#priority 2000

import mods.actuallyadditions.Empowerer;


//mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, float[] particleColourArray);

//mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, float[] particleColourArray);

Empowerer.addRecipe(<astralsorcery:blockcustomsandore>, <techreborn:ore:3>,
                    <tconstruct:materials:10>, <tconstruct:pan_head>.withTag({Material: "violium"}), <minecraft:prismarine_shard>, <roots:dewgonia>,
                    1000, 60, [0.3, 0.6, 0.9]
);

Empowerer.addRecipe(<astralsorcery:itemcraftingcomponent>, <techreborn:gem:1>,
                    <tconstruct:materials:10>, <tconstruct:pan_head>.withTag({Material: "violium"}), <minecraft:prismarine_shard>, <roots:dewgonia>,
                    1000, 60, [0.3, 0.6, 0.9]
);

