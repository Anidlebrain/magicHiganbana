##================================================
##          [Author]:   City & Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     末影接口 末影配方
##================================================
#priority 2000
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

recipes.remove(<enderio:block_simple_sag_mill>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_simple_sag_mill>,
    [[<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>],
     [IRON, SIMPLE_CHASSIS, IRON],
     [GEAR_STONE, <minecraft:piston>, GEAR_STONE]
]);

recipes.remove(<enderio:block_sag_mill>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_sag_mill>,
    [[<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>],
     [<ore:ingotDarkSteel>, CHASSIS, <ore:ingotDarkSteel>],
     [GEAR_DARKSTEEL, <minecraft:piston>, GEAR_DARKSTEEL]
]);

recipes.remove(<enderio:block_enhanced_sag_mill>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_enhanced_sag_mill>,
    [[<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>],
     [<ore:ingotEndSteel>, ENHANCED_CHASSIS, <ore:ingotEndSteel>],
     [GEAR_VIBRANT, <minecraft:piston>, GEAR_VIBRANT]
]);

recipes.remove(<ore:dustEnderPearl>);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(<ore:dustEnderPearl>),
    [[<ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>],
     [<ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>],
     [<ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>]
]);

