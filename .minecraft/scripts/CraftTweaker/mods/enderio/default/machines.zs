##################################################
##          [Author]:   City & Anidlebrain      ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     末影接口 末影配方        ##
##################################################
#priority 2000
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

recipes.remove(<enderio:block_simple_stirling_generator>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_simple_stirling_generator>,
	[[<minecraft:stonebrick:0>, <minecraft:furnace>, <minecraft:stonebrick:0>],
	 [<minecraft:stonebrick:0>, SIMPLE_CHASSIS, <minecraft:stonebrick:0>],
	 [GEAR_IRON, <minecraft:piston>, GEAR_IRON]
]);

recipes.remove(<enderio:block_stirling_generator>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_stirling_generator>,
	[[<minecraft:stonebrick:0>, <minecraft:furnace>, <minecraft:stonebrick:0>],
	 [<ore:ingotDarkSteel>, CHASSIS, <ore:ingotDarkSteel>],
	 [GEAR_DARKSTEEL, <minecraft:piston>, GEAR_DARKSTEEL]
]);

recipes.remove(<enderio:block_combustion_generator>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_combustion_generator>,
	[[<ore:ingotDarkSteel>, ELECTRICAL_STEEL, <ore:ingotDarkSteel>],
	 [<enderio:block_tank:0>, CHASSIS, <enderio:block_tank:0>],
	 [GEAR_DARKSTEEL, <minecraft:piston>, GEAR_DARKSTEEL]
]);

recipes.remove(<enderio:block_enhanced_combustion_generator>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_enhanced_combustion_generator>,
	[[<ore:ingotEndSteel>, ELECTRICAL_STEEL, <ore:ingotEndSteel>],
	 [<enderio:block_tank:1>, ENHANCED_CHASSIS, <enderio:block_tank:1>],
	 [GEAR_VIBRANT, <minecraft:piston>, GEAR_VIBRANT]
]);

recipes.remove(<enderio:block_zombie_generator>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_zombie_generator>,
	[[ELECTRICAL_STEEL, ELECTRICAL_STEEL, ELECTRICAL_STEEL],
	 [FUSED_QUARTZ, ZOMBIE_ELECTRODE, FUSED_QUARTZ],
	 [FUSED_QUARTZ, FUSED_QUARTZ, FUSED_QUARTZ]
]);

recipes.remove(<enderio:block_killer_joe>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_killer_joe>,
	[[DARK_STEEL, DARK_STEEL, DARK_STEEL],
	 [FUSED_QUARTZ, FRANKEN_ZOMBIE, FUSED_QUARTZ],
	 [FUSED_QUARTZ, FUSED_QUARTZ, FUSED_QUARTZ]
]);

recipes.remove(<enderio:block_franken_zombie_generator>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_franken_zombie_generator>,
	[[SOULARIUM, SOULARIUM, SOULARIUM],
	 [FUSED_QUARTZ, FRANKEN_ZOMBIE, FUSED_QUARTZ],
	 [FUSED_QUARTZ, FUSED_QUARTZ, FUSED_QUARTZ]
]);

recipes.remove(<enderio:block_ender_generator>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_ender_generator>,
	[[END_STEEL, END_STEEL, END_STEEL],
	 [FUSED_QUARTZ, ENDER_RESONATOR, FUSED_QUARTZ],
	 [FUSED_QUARTZ, FUSED_QUARTZ, FUSED_QUARTZ]
]);

recipes.remove(<enderio:block_wired_charger>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_wired_charger>,
	[[ELECTRICAL_STEEL, ELECTRICAL_STEEL, ELECTRICAL_STEEL],
	 [ELECTRICAL_STEEL, CHASSIS, ELECTRICAL_STEEL],
	 [ELECTRICAL_STEEL, ELECTRICAL_STEEL, ELECTRICAL_STEEL]
]);

recipes.remove(<enderio:block_simple_wired_charger>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_simple_wired_charger>,
	[[<ore:cobblestone>, ELECTRICAL_STEEL, <ore:cobblestone>],
	 [ELECTRICAL_STEEL, SIMPLE_CHASSIS, ELECTRICAL_STEEL],
	 [<ore:cobblestone>, ELECTRICAL_STEEL, <ore:cobblestone>]
]);

recipes.remove(<enderio:block_enhanced_wired_charger>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_enhanced_wired_charger>,
	[[ELECTRICAL_STEEL, END_STEEL, ELECTRICAL_STEEL],
	 [ELECTRICAL_STEEL, ENHANCED_CHASSIS, ELECTRICAL_STEEL],
	 [GEAR_VIBRANT, ELECTRICAL_STEEL, GEAR_VIBRANT]
]);

recipes.remove(<enderio:block_wireless_charger>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_wireless_charger>,
	[[ELECTRICAL_STEEL, ELECTRICAL_STEEL, ELECTRICAL_STEEL],
	 [ELECTRICAL_STEEL, ENDER_RESONATOR, ELECTRICAL_STEEL],
	 [ELECTRICAL_STEEL, CAPACITOR1, ELECTRICAL_STEEL]
]);

recipes.remove(<enderio:block_normal_wireless_charger>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_normal_wireless_charger>,
	[[<ore:itemWirelessDish>, ENDER_RESONATOR, <ore:itemWirelessDish>],
	 [<ore:itemWirelessDish>, CHASSIS, <ore:itemWirelessDish>],
	 [null, CAPACITOR2, null]
]);

recipes.remove(<enderio:block_enhanced_wireless_charger>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_enhanced_wireless_charger>,
	[[<ore:itemWirelessDish>, ENDER_RESONATOR, <ore:itemWirelessDish>],
	 [<ore:itemWirelessDish>, ENHANCED_CHASSIS, <ore:itemWirelessDish>],
	 [null, CAPACITOR3, null]
]);

recipes.remove(<enderio:block_wireless_charger_extension>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_wireless_charger_extension>,
	[[null, <ore:itemWirelessDish>, null],
	 [<ore:itemWirelessDish>, END_STEEL, <ore:itemWirelessDish>],
	 [null, <ore:itemWirelessDish>, null]
]);

recipes.remove(<enderio:block_powered_spawner>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_powered_spawner>,
	[[ELECTRICAL_STEEL, <ore:itemSkull>, ELECTRICAL_STEEL],
	 [ELECTRICAL_STEEL, SOUL_CHASSIS, ELECTRICAL_STEEL],
	 [VIBRANT_CRYSTAL, ZOMBIE_CONTROLLER, VIBRANT_CRYSTAL]
]);

recipes.remove(<enderio:block_reservoir>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_reservoir> * 4,
	[[<ore:blockGlassHardened>, FUSED_QUARTZ, <ore:blockGlassHardened>],
	 [<ore:blockGlassHardened>, <item:minecraft:cauldron>, <ore:blockGlassHardened>],
	 [<ore:blockGlassHardened>, FUSED_QUARTZ, <ore:blockGlassHardened>]
]);

recipes.remove(<enderio:block_omni_reservoir>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_omni_reservoir> * 4,
	[[<ore:blockGlass>, FUSED_QUARTZ, <ore:blockGlass>],
	 [<ore:blockGlass>, <item:minecraft:cauldron>, <ore:blockGlass>],
	 [<ore:blockGlass>, FUSED_QUARTZ, <ore:blockGlass>]
]);

recipes.remove(<enderio:block_tank:0>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_tank:0>,
	[[IRON, <ore:barsIron>, IRON],
	 [<ore:barsIron>, <ore:blockGlass>, <ore:barsIron>],
	 [IRON, <ore:barsIron>, IRON]
]);

recipes.remove(<enderio:block_tank:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_tank:1>,
	[[DARK_STEEL, <enderio:block_dark_iron_bars>, DARK_STEEL],
	 [<enderio:block_dark_iron_bars>, <ore:blockGlassHardened>, <enderio:block_dark_iron_bars>],
	 [DARK_STEEL, <enderio:block_dark_iron_bars>, DARK_STEEL]
]);

recipes.remove(<enderio:block_simple_alloy_smelter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_simple_alloy_smelter>,
	[[IRON, IRON, IRON],
	 [<minecraft:furnace>, SIMPLE_CHASSIS, <minecraft:furnace>],
	 [GEAR_STONE, <item:minecraft:bucket>, GEAR_STONE]
]);

recipes.remove(<enderio:block_simple_furnace>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_simple_furnace>,
	[[IRON, <minecraft:furnace>, IRON],
	 [<minecraft:stonebrick:0>, SIMPLE_CHASSIS, <minecraft:stonebrick:0>],
	 [GEAR_STONE, <item:minecraft:bucket>, GEAR_STONE]
]);

recipes.remove(<enderio:block_alloy_smelter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_alloy_smelter>,
	[[<ore:ingotDarkSteel>, <minecraft:furnace>, <ore:ingotDarkSteel>],
	 [<minecraft:furnace>, CHASSIS, <minecraft:furnace>],
	 [GEAR_DARKSTEEL, <item:minecraft:cauldron>, GEAR_DARKSTEEL]
]);

recipes.remove(<enderio:block_enhanced_alloy_smelter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_enhanced_alloy_smelter>,
	[[<ore:ingotEndSteel>, <minecraft:furnace>, <ore:ingotEndSteel>],
	 [<minecraft:furnace>, ENHANCED_CHASSIS, <minecraft:furnace>],
	 [GEAR_VIBRANT, <item:minecraft:cauldron>, GEAR_VIBRANT]
]);

recipes.remove(<enderio:block_vat>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_vat>,
	[[ELECTRICAL_STEEL, <item:minecraft:cauldron>, ELECTRICAL_STEEL],
	 [<enderio:block_tank:0>, CHASSIS, <enderio:block_tank:0>],
	 [<ore:ingotDarkSteel>, <minecraft:furnace>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_enhanced_vat>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_enhanced_vat>,
	[[ELECTRICAL_STEEL, <item:minecraft:cauldron>, ELECTRICAL_STEEL],
	 [<enderio:block_tank:1>, ENHANCED_CHASSIS, <enderio:block_tank:1>],
	 [<ore:ingotEndSteel>, <minecraft:furnace>, <ore:ingotEndSteel>]
]);

recipes.remove(<enderio:block_painter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_painter>,
	[[<ore:gemQuartz>, <ore:gemDiamond>, <ore:gemQuartz>],
	 [GEAR_IRON, CHASSIS, GEAR_IRON],
	 [ELECTRICAL_STEEL, ELECTRICAL_STEEL, ELECTRICAL_STEEL]
]);

recipes.remove(<enderio:block_farm_station>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_farm_station>,
	[[VIBRANT_CRYSTAL, ZOMBIE_CONTROLLER, VIBRANT_CRYSTAL],
	 [SOULARIUM, SOUL_CHASSIS, SOULARIUM],
	 [GEAR_ENERGIZED, PULSATING_CRYSTAL, GEAR_ENERGIZED]
]);

recipes.remove(<enderio:block_transceiver>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_transceiver>,
	[[ELECTRICAL_STEEL, ENDER_RESONATOR, ELECTRICAL_STEEL],
	 [FUSED_QUARTZ, ENDER_CRYSTAL, FUSED_QUARTZ],
	 [ELECTRICAL_STEEL, CAPACITOR3, ELECTRICAL_STEEL]
]);

recipes.remove(SOLAR_1);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(SOLAR_1),
	[[ELECTRICAL_STEEL, FUSED_GLASS, ELECTRICAL_STEEL],
	 [<ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>],
	 [POWDER_INFINITY, GEAR_IRON, POWDER_INFINITY]
]);

recipes.remove(SOLAR_2);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(SOLAR_2),
	[[ENERGETIC_ALLOY, FUSED_QUARTZ, ENERGETIC_ALLOY],
	 [<ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>],
	 [CAPACITOR1, <minecraft:daylight_detector>, CAPACITOR1]
]);

recipes.remove(SOLAR_2);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(SOLAR_2),
	[[ENERGETIC_ALLOY, FUSED_QUARTZ, ENERGETIC_ALLOY],
	 [null, SOLAR_1, null],
	 [CAPACITOR1, <minecraft:daylight_detector>, CAPACITOR1]
]);

recipes.remove(SOLAR_3);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(SOLAR_3),
	[[PULSATING_IRON, ENLIGHTED_QUARTZ, PULSATING_IRON],
	 [<ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>],
	 [CAPACITOR2, <minecraft:daylight_detector>, CAPACITOR2]
]);

recipes.remove(SOLAR_3);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(SOLAR_3),
	[[PULSATING_IRON, ENLIGHTED_QUARTZ, PULSATING_IRON],
	 [ENERGETIC_ALLOY, <ore:dustCoal>, ENERGETIC_ALLOY],
	 [CAPACITOR1, SOLAR_2, CAPACITOR1]
]);

recipes.remove(SOLAR_4);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(SOLAR_4),
	[[VIBRANT_ALLOY, DARK_QUARTZ, VIBRANT_ALLOY],
	 [<ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>],
	 [CAPACITOR3, <minecraft:daylight_detector>, CAPACITOR3]
]);

recipes.remove(SOLAR_4);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(SOLAR_4),
	[[VIBRANT_ALLOY, DARK_QUARTZ, VIBRANT_ALLOY],
	 [VIBRANT_ALLOY, <ore:glowstone>, VIBRANT_ALLOY],
	 [CAPACITOR2, SOLAR_3, CAPACITOR2]
]);

recipes.remove(<enderio:block_enchanter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_enchanter>,
	[[<ore:gemDiamond>, <minecraft:book>, <ore:gemDiamond>],
	 [DARK_STEEL, DARK_STEEL, DARK_STEEL],
	 [null, DARK_STEEL, null]
]);

recipes.remove(<enderio:block_vacuum_chest>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_vacuum_chest>,
	[[IRON, IRON, IRON],
	 [IRON, <ore:chestWood>, IRON],
	 [IRON, PULSATING_CRYSTAL, IRON]
]);

recipes.remove(<enderio:block_xp_vacuum>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_xp_vacuum>,
	[[IRON, IRON, IRON],
	 [IRON, <enderio:item_xp_transfer>, IRON],
	 [IRON, PULSATING_CRYSTAL, IRON]
]);

recipes.remove(<enderio:block_soul_binder>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_soul_binder>,
	[[SOULARIUM, HEAD_ENDERMAN, SOULARIUM],
	 [HEAD_ZOMBIE, SOUL_CHASSIS, HEAD_CREEPER],
	 [SOULARIUM, HEAD_SKELETON, SOULARIUM]
]);

recipes.remove(<enderio:block_attractor_obelisk>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_attractor_obelisk>,
	[[null, ATTRACTOR_CRYSTAL, null],
	 [ENERGETIC_ALLOY, GEAR_WOOD, ENERGETIC_ALLOY],
	 [SOULARIUM, SOUL_CHASSIS, SOULARIUM]
]);

recipes.remove(<enderio:block_aversion_obelisk>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_aversion_obelisk>,
	[[null, HEAD_ENDERMAN_TORMENTED, null],
	 [ENERGETIC_ALLOY, GEAR_ENERGIZED, ENERGETIC_ALLOY],
	 [SOULARIUM, SOUL_CHASSIS, SOULARIUM]
]);

recipes.remove(<enderio:block_relocator_obelisk>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_relocator_obelisk>,
	[[null, <ore:blockPrismarine>, null],
	 [<ore:blockPrismarine>, <enderio:block_aversion_obelisk>, <ore:blockPrismarine>],
	 [null, GEAR_VIBRANT, null]
]);

recipes.remove(<enderio:block_inhibitor_obelisk>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_inhibitor_obelisk>,
	[[null, ENDER_CRYSTAL, null],
	 [ENERGETIC_ALLOY, GEAR_IRON, ENERGETIC_ALLOY],
	 [SOULARIUM, SOUL_CHASSIS, SOULARIUM]
]);

recipes.remove(<enderio:block_experience_obelisk>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_experience_obelisk>,
	[[null, <enderio:item_xp_transfer>, null],
	 [ENERGETIC_ALLOY, <enderio:block_tank:0>, ENERGETIC_ALLOY],
	 [SOULARIUM, SOUL_CHASSIS, SOULARIUM]
]);

recipes.remove(<enderio:block_weather_obelisk>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_weather_obelisk>,
	[[null, WEATHER_CRYSTAL, null],
	 [ENERGETIC_ALLOY, CAPACITOR3, ENERGETIC_ALLOY],
	 [SOULARIUM, SOUL_CHASSIS, SOULARIUM]
]);

recipes.remove(LIGHT_BASIC);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(LIGHT_BASIC),
	[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	 [IRON, <ore:glowstone>, IRON],
	 [null, null, null]
]);

recipes.remove(LIGHT_BASIC);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(LIGHT_BASIC),
	[LIGHT_BASIC_INV, <minecraft:redstone_torch>
]);

recipes.remove(LIGHT_BASIC_INV);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(LIGHT_BASIC_INV),
	[LIGHT_BASIC, <minecraft:redstone_torch>
]);

recipes.remove(LIGHT_ELECTRIC);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(LIGHT_ELECTRIC),
	[[FUSED_QUARTZ, FUSED_QUARTZ, FUSED_QUARTZ],
	 [SILICON, <ore:dustGlowstone>, SILICON],
	 [SILICON, CAPACITOR1, SILICON]
]);

recipes.remove(LIGHT_ELECTRIC);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(LIGHT_ELECTRIC),
	[LIGHT_ELECTRIC_INV, <minecraft:redstone_torch>
]);

recipes.remove(LIGHT_ELECTRIC_INV);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(LIGHT_ELECTRIC_INV),
	[LIGHT_ELECTRIC, <minecraft:redstone_torch>
]);

recipes.remove(LIGHT_WIRELESS);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(LIGHT_WIRELESS),
	[LIGHT_ELECTRIC, ENDER_RESONATOR
]);

recipes.remove(LIGHT_WIRELESS);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(LIGHT_WIRELESS),
	[LIGHT_WIRELESS_INV, <minecraft:redstone_torch>
]);

recipes.remove(LIGHT_WIRELESS_INV);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(LIGHT_WIRELESS_INV),
	[LIGHT_ELECTRIC_INV, ENDER_RESONATOR
]);

recipes.remove(LIGHT_WIRELESS_INV);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(LIGHT_WIRELESS_INV),
	[LIGHT_WIRELESS, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_slice_and_splice>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_slice_and_splice>,
	[[SOULARIUM, <ore:itemSkull>, SOULARIUM],
	 [SOULARIUM, SOUL_CHASSIS, SOULARIUM],
	 [GEAR_ENERGIZED, <ore:barsIron>, GEAR_ENERGIZED]
]);

recipes.remove(<enderio:block_slice_and_splice>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_slice_and_splice>,
	[[SOULARIUM, <ore:itemSkull>, SOULARIUM],
	 [SOULARIUM, SOUL_CHASSIS, SOULARIUM],
	 [GEAR_ENERGIZED, <enderio:block_dark_iron_bars>, GEAR_ENERGIZED]
]);

recipes.remove(<enderio:block_slice_and_splice>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_slice_and_splice>,
	[[SOULARIUM, <ore:itemSkull>, SOULARIUM],
	 [<minecraft:shears>, SOUL_CHASSIS, <minecraft:iron_axe>],
	 [SOULARIUM, SOULARIUM, SOULARIUM]
]);

recipes.remove(<enderio:block_buffer:0>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_buffer:0>,
	[[IRON, ELECTRICAL_STEEL, IRON],
	 [ELECTRICAL_STEEL, <ore:chestWood>, ELECTRICAL_STEEL],
	 [IRON, ELECTRICAL_STEEL, IRON]
]);

recipes.remove(<enderio:block_buffer:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_buffer:1>,
	[[IRON, ELECTRICAL_STEEL, IRON],
	 [ELECTRICAL_STEEL, CHASSIS, ELECTRICAL_STEEL],
	 [IRON, ELECTRICAL_STEEL, IRON]
]);

recipes.remove(<enderio:block_buffer:2>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_buffer:2>,
	[<enderio:block_buffer:0>, <enderio:block_buffer:1>
]);

recipes.remove(<enderio:block_travel_anchor>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_travel_anchor>,
	[[IRON, CONDUIT_BINDER, IRON],
	 [CONDUIT_BINDER, PULSATING_CRYSTAL, CONDUIT_BINDER],
	 [IRON, CONDUIT_BINDER, IRON]
]);

recipes.remove(<enderio:block_tele_pad>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_tele_pad>,
	[[FUSED_QUARTZ, VIBRANT_ALLOY, FUSED_QUARTZ],
	 [DARK_STEEL, <enderio:block_travel_anchor>, DARK_STEEL],
	 [DARK_STEEL, CAPACITOR1, DARK_STEEL]
]);

recipes.remove(<enderio:block_dialing_device>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_dialing_device>,
	[[null, ELECTRICAL_STEEL, null],
	 [null, ENDER_RESONATOR, null],
	 [DARK_STEEL, CAPACITOR3, DARK_STEEL]
]);

recipes.remove(<enderio:block_impulse_hopper>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_impulse_hopper>,
	[[ELECTRICAL_STEEL, <minecraft:hopper>, ELECTRICAL_STEEL],
	 [GEAR_ENERGIZED, CHASSIS, GEAR_ENERGIZED],
	 [ELECTRICAL_STEEL, REDSTONE_ALLOY, ELECTRICAL_STEEL]
]);

recipes.remove(<enderio:block_crafter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_crafter>,
	[[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>],
	 [IRON, CHASSIS, IRON],
	 [GEAR_IRON, <ore:workbench>, GEAR_IRON]
]);

recipes.remove(<enderio:block_simple_crafter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_simple_crafter>,
	[[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>],
	 [IRON, SIMPLE_CHASSIS, IRON],
	 [GEAR_STONE, <ore:workbench>, GEAR_STONE]
]);

recipes.remove(<enderio:block_crafter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_crafter>,
	[[null, <enderio:block_simple_crafter>, null],
	 [GEAR_IRON, CHASSIS, GEAR_IRON],
	 [null, null, null]
]);

recipes.remove(<enderio:block_lava_generator>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_lava_generator>,
	[[<ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>],
	 [<ore:ingotBrickNetherGlazed>, CHASSIS, <ore:ingotBrickNetherGlazed>],
	 [<ore:ingotBrickNetherGlazed>, <enderio:block_tank:0>, <ore:ingotBrickNetherGlazed>]
]);

recipes.remove(<enderio:block_niard>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_niard>,
	[[<item:minecraft:bucket>, <enderio:block_tank:0>, <item:minecraft:bucket>],
	 [<minecraft:piston>, CHASSIS, <minecraft:piston>],
	 [ELECTRICAL_STEEL, <enderio:block_dark_iron_bars>, ELECTRICAL_STEEL]
]);
