##################################################
##          [Author]:   City & Anidlebrain      ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     末影接口 末影配方        ##
##################################################
#priority 2000
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

recipes.remove(<enderio:item_travel_staff>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_travel_staff>,
	[[null, null, ENDER_CRYSTAL],
	 [null, <ore:itemInfinityRod>, null],
	 [<ore:itemInfinityRod>, null, null]
]);

recipes.remove(<enderio:item_staff_of_levity>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_staff_of_levity>,
	[[null, null, PRECIENT_CRYSTAL],
	 [null, <ore:itemInfinityRod>, null],
	 [<ore:itemInfinityRod>, null, null]
]);

recipes.remove(<enderio:item_rod_of_return>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_rod_of_return>,
	[[null, PULSATING_CRYSTAL, ENDER_CRYSTAL],
	 [null, <ore:itemInfinityRod>, PULSATING_CRYSTAL],
	 [<ore:itemInfinityRod>, null, null]
]);

recipes.remove(<enderio:item_coord_selector>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_coord_selector>,
	[[ELECTRICAL_STEEL, <ore:enderpearl>, ELECTRICAL_STEEL],
	 [null, <minecraft:compass>, ELECTRICAL_STEEL],
	 [null, null, ELECTRICAL_STEEL]
]);

recipes.remove(<enderio:item_yeta_wrench>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_yeta_wrench>,
	[[ELECTRICAL_STEEL, null, ELECTRICAL_STEEL],
	 [null, GEAR_STONE, null],
	 [null, ELECTRICAL_STEEL, null]
]);

recipes.remove(<enderio:item_magnet>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_magnet>,
	[[CONDUCTIVE_IRON, VIBRANT_CRYSTAL, CONDUCTIVE_IRON],
	 [CONDUCTIVE_IRON, null, CONDUCTIVE_IRON],
	 [ELECTRICAL_STEEL, null, ELECTRICAL_STEEL]
]);

recipes.remove(<enderio:item_inventory_charger_simple>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_inventory_charger_simple>,
	[[DARK_STEEL_NUGGET, CONDUCTIVE_IRON, DARK_STEEL_NUGGET],
	 [CONDUCTIVE_IRON, CAPACITOR1, CONDUCTIVE_IRON],
	 [DARK_STEEL_NUGGET, CONDUCTIVE_IRON, DARK_STEEL_NUGGET]
]);

recipes.remove(<enderio:item_dark_steel_helmet>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_helmet>,
	[[DARK_STEEL, DARK_STEEL, DARK_STEEL],
	 [DARK_STEEL, null, DARK_STEEL],
	 [null, null, null]
]);

recipes.remove(<enderio:item_dark_steel_chestplate>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_chestplate>,
	[[DARK_STEEL, null, DARK_STEEL],
	 [DARK_STEEL, DARK_STEEL, DARK_STEEL],
	 [DARK_STEEL, DARK_STEEL, DARK_STEEL]
]);

recipes.remove(<enderio:item_dark_steel_leggings>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_leggings>,
	[[DARK_STEEL, DARK_STEEL, DARK_STEEL],
	 [DARK_STEEL, null, DARK_STEEL],
	 [DARK_STEEL, null, DARK_STEEL]
]);

recipes.remove(<enderio:item_dark_steel_boots>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_boots>,
	[[DARK_STEEL, null, DARK_STEEL],
	 [DARK_STEEL, null, DARK_STEEL],
	 [null, null, null]
]);

recipes.remove(<enderio:item_dark_steel_shield>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_shield>,
	[[DARK_STEEL, IRON, DARK_STEEL],
	 [DARK_STEEL, null, DARK_STEEL],
	 [null, DARK_STEEL, null]
]);

recipes.remove(<enderio:item_end_steel_helmet>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_end_steel_helmet>,
	[[END_STEEL, END_STEEL, END_STEEL],
	 [END_STEEL, GUARDIAN_DIODE, END_STEEL],
	 [null, null, null]
]);

recipes.remove(<enderio:item_end_steel_chestplate>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_end_steel_chestplate>,
	[[END_STEEL, GUARDIAN_DIODE, END_STEEL],
	 [END_STEEL, END_STEEL, END_STEEL],
	 [END_STEEL, END_STEEL, END_STEEL]
]);

recipes.remove(<enderio:item_end_steel_leggings>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_end_steel_leggings>,
	[[END_STEEL, END_STEEL, END_STEEL],
	 [END_STEEL, GUARDIAN_DIODE, END_STEEL],
	 [END_STEEL, null, END_STEEL]
]);

recipes.remove(<enderio:item_end_steel_boots>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_end_steel_boots>,
	[[END_STEEL, GUARDIAN_DIODE, END_STEEL],
	 [END_STEEL, null, END_STEEL],
	 [null, null, null]
]);

recipes.remove(<enderio:item_end_steel_shield>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_end_steel_shield>,
	[[END_STEEL, GUARDIAN_DIODE, END_STEEL],
	 [END_STEEL, null, END_STEEL],
	 [null, END_STEEL, null]
]);

recipes.remove(GLIDER_WING);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(GLIDER_WING),
	[[null, null, DARK_STEEL_NUGGET],
	 [null, DARK_STEEL_NUGGET, <ore:itemLeather>],
	 [DARK_STEEL_NUGGET, <ore:itemLeather>, <ore:itemLeather>]
]);

recipes.remove(GLIDER_WINGS);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(GLIDER_WINGS),
	[[null, DARK_STEEL, null],
	 [GLIDER_WING, DARK_STEEL, GLIDER_WING],
	 [null, null, null]
]);

recipes.remove(<enderio:item_dark_steel_shears>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_shears>,
	[[null, DARK_STEEL, null],
	 [DARK_STEEL, null, null],
	 [null, null, null]
]);

recipes.remove(<enderio:item_dark_steel_treetap>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_treetap>,
	[[null, GEAR_DARKSTEEL, null],
	 [DARK_STEEL, <techreborn:treetap>, DARK_STEEL],
	 [DARK_STEEL_NUGGET, null, DARK_STEEL_NUGGET]
]);

recipes.remove(<enderio:item_cold_fire_igniter>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:item_cold_fire_igniter>,
	[DARK_STEEL, <ore:itemFlint>
]);

recipes.remove(<enderio:item_soul_vial>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_soul_vial>,
	[[null, SOULARIUM, null],
	 [FUSED_QUARTZ, null, FUSED_QUARTZ],
	 [null, FUSED_QUARTZ, null]
]);

recipes.remove(<enderio:item_xp_transfer>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_xp_transfer>,
	[[null, null, SOULARIUM],
	 [null, ENERGETIC_ALLOY, null],
	 [SOULARIUM, null, null]
]);

recipes.remove(<enderio:item_dark_steel_sword>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_sword>,
	[[null, DARK_STEEL, null],
	 [null, DARK_STEEL, null],
	 [null, <ore:stickWood>, null]
]);

recipes.remove(<enderio:item_end_steel_sword>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_end_steel_sword>,
	[[null, END_STEEL, null],
	 [null, END_STEEL, null],
	 [null, <ore:itemInfinityRod>, null]
]);

recipes.remove(<enderio:item_dark_steel_pickaxe>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_pickaxe>,
	[[DARK_STEEL, DARK_STEEL, DARK_STEEL],
	 [null, <ore:stickWood>, null],
	 [null, <ore:stickWood>, null]
]);

recipes.remove(<enderio:item_dark_steel_axe>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_axe>,
	[[DARK_STEEL, DARK_STEEL, null],
	 [DARK_STEEL, <ore:stickWood>, null],
	 [null, <ore:stickWood>, null]
]);

recipes.remove(<enderio:item_dark_steel_crook>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_crook>,
	[[DARK_STEEL, DARK_STEEL, <ore:stickWood>],
	 [null, null, <ore:stickWood>],
	 [null, null, <ore:stickWood>]
]);

recipes.remove(<enderio:item_dark_steel_hand>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_hand>,
	[[DARK_STEEL, DARK_STEEL, DARK_STEEL],
	 [DARK_STEEL, <minecraft:diamond_hoe>, DARK_STEEL],
	 [DARK_STEEL_NUGGET, DARK_STEEL_NUGGET, DARK_STEEL_NUGGET]
]);

recipes.remove(<enderio:item_end_steel_pickaxe>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_end_steel_pickaxe>,
	[[END_STEEL, END_STEEL, END_STEEL],
	 [null, <ore:itemInfinityRod>, null],
	 [null, <ore:itemInfinityRod>, null]
]);

recipes.remove(<enderio:item_end_steel_axe>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_end_steel_axe>,
	[[END_STEEL, END_STEEL, null],
	 [END_STEEL, <ore:itemInfinityRod>, null],
	 [null, <ore:itemInfinityRod>, null]
]);

recipes.remove(<enderio:item_dark_steel_bow>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_dark_steel_bow>,
	[[null, NUTRITIOUS_STICK, <ore:string>],
	 [SKELETAL_CONTRACTOR, null, <ore:string>],
	 [null, NUTRITIOUS_STICK, <ore:string>]
]);

recipes.remove(<enderio:item_end_steel_bow>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_end_steel_bow>,
	[[null, <ore:itemInfinityRod>, <ore:string>],
	 [SKELETAL_CONTRACTOR, null, <ore:string>],
	 [null, <ore:itemInfinityRod>, <ore:string>]
]);

recipes.remove(<enderio:item_conduit_facade:0>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_conduit_facade:0>,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [CONDUIT_BINDER, null, CONDUIT_BINDER],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_conduit_facade:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_conduit_facade:1>,
	[[null, POWDER_OBSIDIAN, null],
	 [POWDER_OBSIDIAN, <enderio:item_conduit_facade:0>, POWDER_OBSIDIAN],
	 [null, POWDER_OBSIDIAN, null]
]);

recipes.remove(<enderio:item_conduit_facade:2>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_conduit_facade:2>,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [CONDUIT_BINDER, FUSED_GLASS, CONDUIT_BINDER],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_conduit_facade:2>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:item_conduit_facade:2>,
	[<enderio:item_conduit_facade:0>, FUSED_GLASS
]);

recipes.remove(<enderio:item_conduit_facade:3>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_conduit_facade:3>,
	[[null, POWDER_OBSIDIAN, null],
	 [POWDER_OBSIDIAN, <enderio:item_conduit_facade:2>, POWDER_OBSIDIAN],
	 [null, POWDER_OBSIDIAN, null]
]);

recipes.remove(<enderio:item_conduit_facade:3>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:item_conduit_facade:3>,
	[<enderio:item_conduit_facade:1>, FUSED_GLASS
]);

recipes.remove(<enderio:block_self_resetting_lever5>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever5>,
	[<minecraft:lever>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever10>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever10>,
	[<minecraft:lever>, <ore:dustRedstone>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever10>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever10>,
	[<enderio:block_self_resetting_lever5>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever30>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever30>,
	[<minecraft:lever>, <ore:dustRedstone>, <ore:dustRedstone>,
	 <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever30>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever30>,
	[<enderio:block_self_resetting_lever10>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever60>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever60>,
	[<minecraft:lever>, <ore:dustRedstone>, <ore:dustRedstone>,
	 <ore:dustRedstone>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever60>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever60>,
	[<enderio:block_self_resetting_lever30>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever300>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever300>,
	[<minecraft:lever>, <ore:dustRedstone>, <ore:dustRedstone>,
	 <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever300>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever300>,
	[<enderio:block_self_resetting_lever60>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever5i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever5i>,
	[<minecraft:lever>, <ore:dustRedstone>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever5i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever5i>,
	[<enderio:block_self_resetting_lever5>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever5>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever5>,
	[<enderio:block_self_resetting_lever5i>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever10i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever10i>,
	[<minecraft:lever>, <ore:dustRedstone>, <ore:dustRedstone>,
	 <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever10i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever10i>,
	[<enderio:block_self_resetting_lever5i>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever10i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever10i>,
	[<enderio:block_self_resetting_lever10>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever10>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever10>,
	[<enderio:block_self_resetting_lever10i>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever30i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever30i>,
	[<minecraft:lever>, <ore:dustRedstone>, <ore:dustRedstone>,
	 <ore:dustRedstone>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever30i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever30i>,
	[<enderio:block_self_resetting_lever10i>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever30i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever30i>,
	[<enderio:block_self_resetting_lever30>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever30>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever30>,
	[<enderio:block_self_resetting_lever30i>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever60i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever60i>,
	[<minecraft:lever>, <ore:dustRedstone>, <ore:dustRedstone>,
	 <ore:dustRedstone>, <ore:dustRedstone>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever60i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever60i>,
	[<enderio:block_self_resetting_lever30i>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever60i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever60i>,
	[<enderio:block_self_resetting_lever60>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever60>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever60>,
	[<enderio:block_self_resetting_lever60i>, <minecraft:redstone_torch>
]);

recipes.remove(<enderio:block_self_resetting_lever300i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever300i>,
	[<minecraft:lever>, <ore:dustRedstone>, <ore:dustRedstone>,
	 <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>
]);

recipes.remove(<enderio:block_self_resetting_lever300i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever300i>,
	[<enderio:block_self_resetting_lever60i>, <ore:dustRedstone>,
]);

recipes.remove(<enderio:block_self_resetting_lever300i>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever300i>,
	[<enderio:block_self_resetting_lever300>, <minecraft:redstone_torch>,
]);

recipes.remove(<enderio:block_self_resetting_lever300>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_self_resetting_lever300>,
	[<enderio:block_self_resetting_lever300i>, <minecraft:redstone_torch>
]);

recipes.remove(CONDUIT_PROBE);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(CONDUIT_PROBE),
	[[ELECTRICAL_STEEL_NUGGET, null, ELECTRICAL_STEEL_NUGGET],
	 [IRON, <enderio:item_yeta_wrench>, IRON],
	 [IRON, POWDER_INFINITY, IRON]
]);

recipes.remove(<enderio:item_basic_item_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_basic_item_filter>,
	[[null, <ore:paper> | <ore:paperBlack>, null],
	 [<ore:paper> | <ore:paperBlack>, <ore:blockHopper>, <ore:paper> | <ore:paperBlack>],
	 [null, <ore:paper> | <ore:paperBlack>, null]
]);

recipes.remove(<enderio:item_enchantment_filter_normal>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:item_enchantment_filter_normal>,
	[<enderio:item_basic_item_filter>, <minecraft:enchanted_book>
]);

recipes.remove(<enderio:item_advanced_item_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_advanced_item_filter>,
	[[<ore:dustRedstone>, <ore:paper> | <ore:paperBlack>, <ore:dustRedstone>],
	 [<ore:paper> | <ore:paperBlack>, ZOMBIE_CONTROLLER, <ore:paper> | <ore:paperBlack>],
	 [<ore:dustRedstone>, <ore:paper> | <ore:paperBlack>, <ore:dustRedstone>]
]);

recipes.remove(<enderio:item_limited_item_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_limited_item_filter>,
	[[null, null, null],
	 [<minecraft:comparator>, <enderio:item_advanced_item_filter>, <minecraft:comparator>],
	 [null, null, null]
]);

recipes.remove(<enderio:item_mod_item_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_mod_item_filter>,
	[[null, <ore:paper> | <ore:paperBlack>, null],
	 [<ore:paper> | <ore:paperBlack>, <enderio:item_yeta_wrench>, <ore:paper> | <ore:paperBlack>],
	 [null, <ore:paper> | <ore:paperBlack>, null]
]);

recipes.remove(<enderio:item_existing_item_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_existing_item_filter>,
	[[null, <ore:dustRedstone>, null],
	 [<ore:dustRedstone>, <enderio:item_advanced_item_filter>, <ore:dustRedstone>],
	 [null, <minecraft:comparator>, null]
]);

recipes.remove(<enderio:item_power_item_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_power_item_filter>,
	[[null, <ore:paper> | <ore:paperBlack>, null],
	 [<ore:paper> | <ore:paperBlack>, CONDUIT_PROBE, <ore:paper> | <ore:paperBlack>],
	 [null, <ore:paper> | <ore:paperBlack>, null]
]);

recipes.remove(<enderio:item_big_item_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_big_item_filter>,
	[[POWDER_OBSIDIAN, <minecraft:paper> | <ore:paperBlack>, POWDER_OBSIDIAN],
	 [<minecraft:paper> | <ore:paperBlack>, SKELETAL_CONTRACTOR, <minecraft:paper> | <ore:paperBlack>],
	 [POWDER_OBSIDIAN, <minecraft:paper> | <ore:paperBlack>, POWDER_OBSIDIAN]
]);

recipes.remove(<enderio:item_enchantment_filter_big>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:item_enchantment_filter_big>,
	[<enderio:item_big_item_filter>, <minecraft:enchanted_book>
]);

recipes.remove(<enderio:item_big_advanced_item_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_big_advanced_item_filter>,
	[[null, <minecraft:shulker_shell>, null],
	 [null, <enderio:item_advanced_item_filter>, null],
	 [null, <minecraft:shulker_shell>, null]
]);

recipes.remove(<enderio:item_fluid_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_fluid_filter>,
	[[null, <ore:paper> | <ore:paperBlack>, null],
	 [<ore:paper> | <ore:paperBlack>, <minecraft:bucket>, <ore:paper> | <ore:paperBlack>],
	 [null, <ore:paper> | <ore:paperBlack>, null]
]);

recipes.remove(REDSTONE_FILTER_BASE);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(REDSTONE_FILTER_BASE),
	[[REDSTONE_ALLOY, <ore:paper> | <ore:paperBlack>, REDSTONE_ALLOY],
	 [<ore:paper> | <ore:paperBlack>, IRON, <ore:paper> | <ore:paperBlack>],
	 [REDSTONE_ALLOY, <ore:paper> | <ore:paperBlack>, REDSTONE_ALLOY]
]);

recipes.remove(<enderio:item_redstone_not_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_redstone_not_filter>,
	[[null, null, null],
	 [<minecraft:redstone_torch>, REDSTONE_FILTER_BASE, REDSTONE_ALLOY],
	 [null, null, null]
]);

recipes.remove(REDSTONE_FILTER_OR);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(REDSTONE_FILTER_OR),
	[[null, REDSTONE_ALLOY, null],
	 [null, REDSTONE_FILTER_BASE, null],
	 [null, REDSTONE_ALLOY, null]
]);

recipes.remove(REDSTONE_FILTER_AND);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(REDSTONE_FILTER_AND),
	[[null, <minecraft:redstone_torch>, null],
	 [null, REDSTONE_FILTER_BASE, null],
	 [null, <minecraft:redstone_torch>, null]
]);

recipes.remove(REDSTONE_FILTER_XOR);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(REDSTONE_FILTER_XOR),
	[[null, <minecraft:redstone_torch>, null],
	 [REDSTONE_ALLOY, REDSTONE_FILTER_BASE, REDSTONE_ALLOY],
	 [null, <minecraft:redstone_torch>, null]
]);

recipes.remove(REDSTONE_FILTER_NAND);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(REDSTONE_FILTER_NAND),
	[<minecraft:redstone_torch>, REDSTONE_FILTER_AND
]);

recipes.remove(REDSTONE_FILTER_AND);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(REDSTONE_FILTER_AND),
	[<minecraft:redstone_torch>, REDSTONE_FILTER_NAND
]);

recipes.remove(REDSTONE_FILTER_NOR);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(REDSTONE_FILTER_NOR),
	[<minecraft:redstone_torch>, REDSTONE_FILTER_OR
]);

recipes.remove(REDSTONE_FILTER_OR);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(REDSTONE_FILTER_OR),
	[<minecraft:redstone_torch>, REDSTONE_FILTER_NOR
]);

recipes.remove(REDSTONE_FILTER_XNOR);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(REDSTONE_FILTER_XNOR),
	[<minecraft:redstone_torch>, REDSTONE_FILTER_XOR
]);

recipes.remove(REDSTONE_FILTER_XOR);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(REDSTONE_FILTER_XOR),
	[<minecraft:redstone_torch>, REDSTONE_FILTER_XNOR
]);

recipes.remove(<enderio:item_redstone_toggle_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_redstone_toggle_filter>,
	[[null, null, null],
	 [<minecraft:lever>, REDSTONE_FILTER_BASE, REDSTONE_ALLOY],
	 [null, null, null]
]);

recipes.remove(<enderio:item_redstone_sensor_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_redstone_sensor_filter>,
	[[null, null, null],
	 [<minecraft:comparator>, REDSTONE_FILTER_BASE, REDSTONE_ALLOY],
	 [null, null, null]
]);

recipes.remove(<enderio:item_redstone_timer_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_redstone_timer_filter>,
	[[null, null, null],
	 [REDSTONE_ALLOY, REDSTONE_FILTER_BASE, <minecraft:clock>],
	 [null, null, null]
]);

recipes.remove(<enderio:item_redstone_counting_filter>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_redstone_counting_filter>,
	[[REDSTONE_ALLOY, null, null],
	 [REDSTONE_ALLOY, REDSTONE_FILTER_BASE, REDSTONE_ALLOY],
	 [REDSTONE_ALLOY, null, null]
]);

