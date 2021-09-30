##================================================
##          [Author]:   City & Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     末影接口 末影配方
##================================================
#priority 2000
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

//脉冲水晶
recipes.remove(PULSATING_CRYSTAL);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(PULSATING_CRYSTAL),
    [[VIBRANT_ALLOY, CAPACITOR2, VIBRANT_ALLOY],
     [VIBRANT_ALLOY, <minecraft:end_crystal>, VIBRANT_ALLOY],
     [VIBRANT_ALLOY, VIBRANT_ALLOY, VIBRANT_ALLOY]
]);

