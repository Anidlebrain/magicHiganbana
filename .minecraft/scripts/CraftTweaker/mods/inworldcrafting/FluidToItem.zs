##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     世界合成 丢入流体合成物品
##================================================
#modloaded higanbana
#priority 2000

import mods.inworldcrafting.FluidToItem;

//一碗水
FluidToItem.transform(<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <liquid:water>, [<minecraft:bowl>], false);

//小麦种子
//FluidToItem.transform(<minecraft:wheat_seeds>, <liquid:water>, [<roots:petals>, <minecraft:deadbush>, <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_growth_infusion", selectedSlot: 0, lastCooldown: 0, cooldown: 0}})], true);

//水晶体
FluidToItem.transform(<contenttweaker:crystal_water>, <liquid:water>, [<skyresources:heavysnowball>, <contenttweaker:explosive_dust>], true);

//烈焰网
recipes.removeByRecipeName("botania:blazeblock");
FluidToItem.transform(<botania:blazeblock>, <liquid:srcrystalfluid>, [<minecraft:blaze_powder> * 9, <tconstruct:edible:34> * 3], true);

//生佐拉钢锭
recipes.remove(<prodigytech:zorrasteel_raw>);
FluidToItem.transform(<prodigytech:zorrasteel_raw>, <liquid:plantoil>, [<pneumaticcraft:ingot_iron_compressed>, <prodigytech:zorra_leaf> * 8], true);