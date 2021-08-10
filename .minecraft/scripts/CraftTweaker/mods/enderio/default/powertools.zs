##================================================
##          [Author]:   City & Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     末影接口 末影配方
##================================================
#priority 2000
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

recipes.remove(CAP_BANK_1);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(CAP_BANK_1),
    [[IRON, CAPACITOR1, IRON],
     [CAPACITOR1, <ore:blockRedstone>, CAPACITOR1],
     [IRON, CAPACITOR1, IRON]
]);

recipes.remove(CAP_BANK_2);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(CAP_BANK_2),
    [[ELECTRICAL_STEEL, CAPACITOR2, ELECTRICAL_STEEL],
     [CAPACITOR2, <ore:blockRedstone>, CAPACITOR2],
     [ELECTRICAL_STEEL, CAPACITOR2, ELECTRICAL_STEEL]
]);

recipes.remove(CAP_BANK_3);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(CAP_BANK_3),
    [[ELECTRICAL_STEEL, CAPACITOR3, ELECTRICAL_STEEL],
     [CAPACITOR3, VIBRANT_CRYSTAL, CAPACITOR3],
     [ELECTRICAL_STEEL, CAPACITOR3, ELECTRICAL_STEEL]
]);

recipes.remove(<enderio:item_inventory_charger_basic>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_inventory_charger_basic>,
    [[DARK_STEEL, ELECTRICAL_STEEL, DARK_STEEL],
     [<ore:itemWirelessDish>, ENDER_RESONATOR, <ore:itemWirelessDish>],
     [DARK_STEEL, CAP_BANK_1, DARK_STEEL]
]);

recipes.remove(<enderio:item_inventory_charger>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_inventory_charger>,
    [[DARK_STEEL, ELECTRICAL_STEEL, DARK_STEEL],
     [<ore:itemWirelessDish>, ENDER_RESONATOR, <ore:itemWirelessDish>],
     [DARK_STEEL, CAP_BANK_2, DARK_STEEL]
]);

recipes.remove(<enderio:item_inventory_charger_vibrant>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_inventory_charger_vibrant>,
    [[DARK_STEEL, ELECTRICAL_STEEL, DARK_STEEL],
     [<ore:itemWirelessDish>, ENDER_RESONATOR, <ore:itemWirelessDish>],
     [DARK_STEEL, CAP_BANK_3, DARK_STEEL]
]);

recipes.remove(<enderio:block_power_monitor>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_power_monitor>,
    [[ELECTRICAL_STEEL, CONDUIT_PROBE, ELECTRICAL_STEEL],
     [ELECTRICAL_STEEL, CHASSIS, ELECTRICAL_STEEL],
     [ELECTRICAL_STEEL, <enderio:item_power_conduit:0>, ELECTRICAL_STEEL]
]);

recipes.remove(<enderio:block_advanced_power_monitor>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_advanced_power_monitor>,
    [[<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>],
     [<minecraft:wool:15>, <enderio:block_power_monitor>, <minecraft:wool:15>],
     [<ore:dyeRed>, <ore:dyeYellow>, <ore:dyeGreen>]
]);

recipes.remove(<enderio:block_gauge>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_gauge>,
    [[IRON, null, IRON],
     [ELECTRICAL_STEEL, CONDUIT_PROBE, ELECTRICAL_STEEL],
     [IRON, null, IRON]
]);