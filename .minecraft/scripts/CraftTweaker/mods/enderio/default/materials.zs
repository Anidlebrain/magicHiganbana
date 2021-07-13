##################################################
##          [Author]:   City & Anidlebrain      ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     末影接口 末影配方        ##
##################################################
#priority 2000
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

recipes.remove(<minecraft:glass_pane>);
mods.extendedcrafting.EnderCrafting.addShaped(<minecraft:glass_pane> * 4,
	[[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
	 [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
	 [null, null, null]
]);

recipes.remove(BINDER_COMPOSITE);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(BINDER_COMPOSITE) * 4,
	[[<ore:gravel>, <ore:itemClay>, <ore:gravel>],
	 [<ore:sand>, <ore:gravel>, <ore:sand>],
	 [<ore:gravel>, <ore:itemClay>, <ore:gravel>]
]);

recipes.remove(<enderio:block_dark_iron_bars>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_dark_iron_bars> * 4,
	[[DARK_STEEL, DARK_STEEL, DARK_STEEL],
	 [DARK_STEEL, DARK_STEEL, DARK_STEEL],
	 [null, null, null]
]);

recipes.remove(<enderio:block_end_iron_bars>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_end_iron_bars> * 4,
	[[END_STEEL, END_STEEL, END_STEEL],
	 [END_STEEL, END_STEEL, END_STEEL],
	 [null, null, null]
]);

recipes.remove(<ore:dyeMachine>);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(<ore:dyeMachine>) * 6,
	[[<ore:dustLapis>, POWDER_QUARTZ, ORGANIC_GREEN_DYE],
	 [POWDER_QUARTZ, ORGANIC_BLACK_DYE, POWDER_QUARTZ],
	 [ORGANIC_GREEN_DYE, POWDER_QUARTZ, <ore:dustLapis>]
]);

recipes.remove(<ore:dyeEnhancedMachine>);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(<ore:dyeEnhancedMachine>) * 4,
	[[POWDER_PULSATING, POWDER_QUARTZ, POWDER_PULSATING],
	 [POWDER_QUARTZ, ORGANIC_BLACK_DYE, POWDER_QUARTZ],
	 [POWDER_PULSATING, POWDER_QUARTZ, POWDER_PULSATING]
]);

recipes.remove(<ore:dyeSoulMachine>);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(<ore:dyeSoulMachine>) * 6,
	[[<ore:dustSoularium>, POWDER_QUARTZ, ORGANIC_BROWN_DYE],
	 [POWDER_QUARTZ, ORGANIC_BLACK_DYE, POWDER_QUARTZ],
	 [ORGANIC_BROWN_DYE, POWDER_QUARTZ, <ore:dustSoularium>]
]);

recipes.remove(<enderio:block_dark_steel_ladder>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_dark_steel_ladder> * 12,
	[[null, <enderio:block_dark_iron_bars>, null],
	 [null, <enderio:block_dark_iron_bars>, null],
	 [null, <enderio:block_dark_iron_bars>, null]
]);

recipes.remove(<enderio:block_dark_steel_trapdoor>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_dark_steel_trapdoor>,
	[[DARK_STEEL, DARK_STEEL, null],
	 [DARK_STEEL, DARK_STEEL, null],
	 [null, null, null]
]);

recipes.remove(<item:enderio:block_dark_steel_door>);
mods.extendedcrafting.EnderCrafting.addShaped(<item:enderio:block_dark_steel_door> * 3,
	[[DARK_STEEL, DARK_STEEL, null],
	 [DARK_STEEL, DARK_STEEL, null],
	 [DARK_STEEL, DARK_STEEL, null]
]);

recipes.remove(CHASSIPARTS);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(CHASSIPARTS) * 4,
	[[IRON, IRON, IRON],
	 [IRON, CHASSIS, IRON],
	 [IRON, IRON, IRON]
]);

recipes.remove(SIMPLE_CHASSIPARTS);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(SIMPLE_CHASSIPARTS) * 4,
	[[IRON, IRON, IRON],
	 [IRON, SIMPLE_CHASSIS, IRON],
	 [IRON, IRON, IRON]
]);

recipes.remove(ENHANCED_CHASSIPARTS);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(ENHANCED_CHASSIPARTS) * 4,
	[[IRON, IRON, IRON],
	 [IRON, ENHANCED_CHASSIS, IRON],
	 [IRON, IRON, IRON]
]);

recipes.remove(<enderio:block_decoration1:0>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:0>,
	[[null, CHASSIPARTS, null],
	 [CHASSIPARTS, null, CHASSIPARTS],
	 [null, CHASSIPARTS, null]
]);

recipes.remove(<enderio:block_decoration1:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:1>,
	[[null, <ore:ingotIron>, null],
	 [<ore:ingotIron>, <enderio:block_decoration1:0>, <ore:ingotIron>],
	 [null, <ore:ingotIron>, null]
]);

recipes.remove(<enderio:block_decoration1:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:1>,
	[[CHASSIPARTS, <ore:ingotIron>, CHASSIPARTS],
	 [<ore:ingotIron>, null, <ore:ingotIron>],
	 [CHASSIPARTS, <ore:ingotIron>, CHASSIPARTS]
]);

recipes.remove(<enderio:block_decoration1:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:1>,
	[[<ore:ingotIron>, CHASSIPARTS, <ore:ingotIron>],
	 [CHASSIPARTS, null, CHASSIPARTS],
	 [<ore:ingotIron>, CHASSIPARTS, <ore:ingotIron>]
]);

recipes.remove(<enderio:block_decoration1:1>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:1>,
	[<enderio:block_decoration1:6>
]);

recipes.remove(<enderio:block_decoration1:2>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:2>,
	[<enderio:block_decoration1:1>
]);

recipes.remove(<enderio:block_decoration1:3>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:3>,
	[<enderio:block_decoration1:2>
]);

recipes.remove(<enderio:block_decoration1:4>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:4>,
	[<enderio:block_decoration1:3>
]);

recipes.remove(<enderio:block_decoration1:5>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:5>,
	[<enderio:block_decoration1:4>
]);

recipes.remove(<enderio:block_decoration1:6>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:6>,
	[<enderio:block_decoration1:5>
]);

recipes.remove(<enderio:block_decoration1:7>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:7>,
	[[null, SOULARIUM, null],
	 [SOULARIUM, <enderio:block_decoration1:0>, SOULARIUM],
	 [null, SOULARIUM, null]
]);

recipes.remove(<enderio:block_decoration1:7>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:7>,
	[[CHASSIPARTS, SOULARIUM, CHASSIPARTS],
	 [SOULARIUM, null, SOULARIUM],
	 [CHASSIPARTS, SOULARIUM, CHASSIPARTS]
]);

recipes.remove(<enderio:block_decoration1:7>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:7>,
	[[SOULARIUM, CHASSIPARTS, SOULARIUM],
	 [CHASSIPARTS, null, CHASSIPARTS],
	 [SOULARIUM, CHASSIPARTS, SOULARIUM]
]);

recipes.remove(<enderio:block_decoration1:7>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:7>,
	[<enderio:block_decoration1:12>
]);

recipes.remove(<enderio:block_decoration1:8>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:8>,
	[<enderio:block_decoration1:7>
]);

recipes.remove(<enderio:block_decoration1:9>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:9>,
	[<enderio:block_decoration1:8>
]);

recipes.remove(<enderio:block_decoration1:10>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:10>,
	[<enderio:block_decoration1:9>
]);

recipes.remove(<enderio:block_decoration1:11>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:11>,
	[<enderio:block_decoration1:10>
]);

recipes.remove(<enderio:block_decoration1:12>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:12>,
	[<enderio:block_decoration1:11>
]);

recipes.remove(<enderio:block_decoration1:13>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:13>,
	[<enderio:block_decoration1:1>, <ore:dyeRed>
]);

recipes.remove(<enderio:block_decoration1:1>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration1:1>,
	[<enderio:block_decoration1:13>, <minecraft:water_bucket>
]);

recipes.remove(<enderio:block_decoration1:14>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:14>,
	[[null, <ore:barsIron>, null],
	 [<ore:barsIron>, <enderio:block_decoration1:0>, <ore:barsIron>],
	 [null, <ore:barsIron>, null]
]);

recipes.remove(<enderio:block_decoration1:14>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:14>,
	[[CHASSIPARTS, <ore:barsIron>, CHASSIPARTS],
	 [<ore:barsIron>, null, <ore:barsIron>],
	 [CHASSIPARTS, <ore:barsIron>, CHASSIPARTS]
]);

recipes.remove(<enderio:block_decoration1:14>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:14>,
	[[<ore:barsIron>, CHASSIPARTS, <ore:barsIron>],
	 [CHASSIPARTS, null, CHASSIPARTS],
	 [<ore:barsIron>, CHASSIPARTS, <ore:barsIron>]
]);

recipes.remove(<enderio:block_decoration1:15>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:15>,
	[[null, FUSED_GLASS, null],
	 [FUSED_GLASS, <enderio:block_decoration1:0>, FUSED_GLASS],
	 [null, FUSED_GLASS, null]
]);

recipes.remove(<enderio:block_decoration1:15>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:15>,
	[[CHASSIPARTS, FUSED_GLASS, CHASSIPARTS],
	 [FUSED_GLASS, null, FUSED_GLASS],
	 [CHASSIPARTS, FUSED_GLASS, CHASSIPARTS]
]);

recipes.remove(<enderio:block_decoration1:15>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_decoration1:15>,
	[[FUSED_GLASS, CHASSIPARTS, FUSED_GLASS],
	 [CHASSIPARTS, null, CHASSIPARTS],
	 [FUSED_GLASS, CHASSIPARTS, FUSED_GLASS]
]);

recipes.remove(<enderio:block_decoration2:0>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:0>,
	[<enderio:block_decoration1:1>, <minecraft:furnace>, <minecraft:furnace>
]);

recipes.remove(<enderio:block_decoration2:1>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:1>,
	[<enderio:block_decoration1:1>, <ore:chestWood>
]);

recipes.remove(<enderio:block_decoration2:2>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:2>,
	[<enderio:block_decoration1:1>, CHASSIS
]);

recipes.remove(<enderio:block_decoration2:3>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:3> * 2,
	[<enderio:block_decoration2:1>, <enderio:block_decoration2:2>
]);

recipes.remove(<enderio:block_decoration2:4>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:4>,
	[<enderio:block_decoration2:3>, <ore:netherStar>
]);

recipes.remove(<enderio:block_decoration2:5>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:5>,
	[<enderio:block_decoration1:1>, <ore:workbench>
]);

recipes.remove(<enderio:block_decoration2:6>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:6>,
	[<enderio:block_decoration1:1>, <ore:gemDiamond>
]);

recipes.remove(<enderio:block_decoration2:7>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:7>,
	[<enderio:block_decoration1:1>, POWDER_INFINITY
]);

recipes.remove(<enderio:block_decoration2:8>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:8>,
	[<enderio:block_decoration1:1>, <ore:itemFlint>, <ore:itemFlint>
]);

recipes.remove(<enderio:block_decoration2:9>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:9>,
	[<enderio:block_decoration1:7>, <minecraft:iron_axe>
]);

recipes.remove(<enderio:block_decoration2:10>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:10>,
	[<enderio:block_decoration1:1>, GEAR_ENERGIZED
]);

recipes.remove(<enderio:block_decoration2:11>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:11>,
	[<enderio:block_decoration1:15>, <ore:barsIron>
]);

recipes.remove(<enderio:block_decoration2:12>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:12>,
	[<enderio:block_decoration1:15>, <enderio:block_dark_iron_bars>
]);

recipes.remove(<enderio:block_decoration2:13>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:13>,
	[<enderio:block_decoration1:1>, CONDUIT_BINDER
]);

recipes.remove(<enderio:block_decoration2:14>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:14>,
	[<enderio:block_decoration1:1>, <ore:ingotIron>
]);

recipes.remove(<enderio:block_decoration2:15>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration2:15>,
	[<enderio:block_decoration1:1>, CAPACITOR1, CAPACITOR1
]);

recipes.remove(<enderio:block_decoration3:0>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration3:0>,
	[<enderio:block_decoration1:1>, <minecraft:bucket>
]);

recipes.remove(<enderio:block_decoration3:1>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration3:1>,
	[<enderio:block_decoration1:1>, <minecraft:furnace>
]);

recipes.remove(<enderio:block_decoration3:2>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration3:2>,
	[<enderio:block_decoration1:1>, GEAR_IRON
]);

recipes.remove(<enderio:block_decoration3:3>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration3:3>,
	[<enderio:block_decoration1:1>, CAPACITOR1
]);

recipes.remove(<enderio:block_decoration3:4>);
mods.extendedcrafting.EnderCrafting.addShapeless(<enderio:block_decoration3:4>,
	[<enderio:block_decoration1:1>, <ore:itemFlint>
]);

recipes.remove(<enderio:block_confusion_charge>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_confusion_charge>,
	[[<ore:itemConfusingDust>, <ore:sand>, <ore:itemConfusingDust>],
	 [<ore:sand>, <ore:gunpowder>, <ore:sand>],
	 [<ore:itemConfusingDust>, <ore:sand>, <ore:itemConfusingDust>]
]);

recipes.remove(<enderio:block_concussion_charge>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_concussion_charge>,
	[[<ore:itemEnderFragment>, <ore:itemEnderFragment>, <ore:itemEnderFragment>],
	 [<ore:sand>, <ore:gunpowder>, <ore:sand>],
	 [<ore:itemConfusingDust>, <ore:itemConfusingDust>, <ore:itemConfusingDust>]
]);

recipes.remove(<enderio:block_ender_charge>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_ender_charge>,
	[[<ore:itemEnderFragment>, <ore:sand>, <ore:itemEnderFragment>],
	 [<ore:sand>, <ore:gunpowder>, <ore:sand>],
	 [<ore:itemEnderFragment>, <ore:sand>, <ore:itemEnderFragment>]
]);

recipes.remove(<ore:enderpearl>);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(<ore:enderpearl>),
	[[null, <ore:itemEnderFragment>, null],
	 [<ore:itemEnderFragment>, <ore:itemEnderFragment>, <ore:itemEnderFragment>],
	 [null, <ore:itemEnderFragment>, null]
]);

recipes.remove(REMOTE_AWARENESS_UPGRADE);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(REMOTE_AWARENESS_UPGRADE) * 3,
	[[CONDUIT_BINDER, SILICON, CONDUIT_BINDER],
	 [SILICON, <ore:pearlEnderEye>, SILICON],
	 [CONDUIT_BINDER, ELECTRICAL_STEEL, CONDUIT_BINDER]
]);

/*
recipes.remove(<ore:dustBedrock>);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(<ore:dustBedrock>) * 9,
	[[null, null, null],
	 [null, null, null],
	 [null, null, null]
]);


recipes.remove(<ore:compressed1xDustBedrock>);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(<ore:compressed1xDustBedrock>) * 9,
	[<ore:compressed2xDustBedrock>]);

recipes.remove(<ore:compressed2xDustBedrock>);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(<ore:compressed2xDustBedrock>) * 9,
	[
]);
compressed1xDustBedrock
*/

recipes.remove(<ore:paperBlack>);
mods.extendedcrafting.EnderCrafting.addShapeless(itemHelper.typeConversion(<ore:paperBlack>),
	[<ore:paper>, <ore:dyeBlack>
]);