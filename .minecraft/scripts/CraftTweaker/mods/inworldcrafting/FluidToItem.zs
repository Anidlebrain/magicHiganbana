##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     世界合成 丢入流体合成物品 ##
##################################################

#priority 2000
import mods.inworldcrafting.FluidToItem;

//一碗水
FluidToItem.transform(<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <liquid:water>, [<minecraft:bowl>], false);

//小麦种子
FluidToItem.transform(<minecraft:wheat_seeds>, <liquid:water>, [<roots:petals>, <minecraft:deadbush>, <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_growth_infusion", selectedSlot: 0, lastCooldown: 0, cooldown: 0}})], true);

//水晶体
FluidToItem.transform(<contenttweaker:crystal_water>, <liquid:water>, [<skyresources:heavysnowball>, <mechanics:bursting_powder>], true);

//烈焰网
recipes.removeByRecipeName("botania:blazeblock");
FluidToItem.transform(<botania:blazeblock>, <liquid:srcrystalfluid>, [<minecraft:blaze_powder> * 9, <tconstruct:edible:34> * 3], true);

//云朵
recipes.remove(<chisel:cloud>);
FluidToItem.transform(<chisel:cloud>, <liquid:srcrystalfluid>, [<skyresources:alchemicalglass>], false);

//生佐拉钢锭
recipes.remove(<prodigytech:zorrasteel_raw>);
FluidToItem.transform(<prodigytech:zorrasteel_raw>, <liquid:plantoil>, [<pneumaticcraft:ingot_iron_compressed>, <prodigytech:zorra_leaf> * 8], true);

//太阳晶体 空
recipes.remove(<extrautils2:suncrystal:250>);
FluidToItem.transform(<extrautils2:suncrystal:250>, <liquid:liquid_sunshine>, [<immersiveengineering:bullet:2>.withTag({bullet: "crystalwill"}), <prodigytech:aeternus_crystal>], true);

//基片
FluidToItem.transform(<mekanism:substrate>, <liquid:grignard_reagent>, [<item:contenttweaker:aluminium_chloride>], true);
