##################################################
##          [Author]:   City & Anidlebrain      ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     末影接口 末影配方        ##
##################################################
#priority 2000
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

recipes.remove(PPP_DARK_STEEL);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(PPP_DARK_STEEL),
	[[DARK_STEEL, DARK_STEEL, null],
	 [null, null, null],
	 [null, null, null]
]);

recipes.remove(PPP_SOULARIUM);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(PPP_SOULARIUM),
	[[SOULARIUM, SOULARIUM, null],
	 [null, null, null],
	 [null, null, null]
]);

recipes.remove(PPP_WOOD_SILENT);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(PPP_WOOD_SILENT),
	[[<minecraft:wooden_pressure_plate>, null, null],
	 [<minecraft:wool>, null, null],
	 [null, null, null]
]);
recipes.remove(PPP_STONE_SILENT);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(PPP_STONE_SILENT),
	[[<minecraft:stone_pressure_plate>, null, null],
	 [<minecraft:wool>, null, null],
	 [null, null, null]
]);

recipes.remove(PPP_IRON_SILENT);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(PPP_IRON_SILENT),
	[[<minecraft:heavy_weighted_pressure_plate>, null, null],
	 [<minecraft:wool>, null, null],
	 [null, null, null]
]);

recipes.remove(PPP_GOLD_SILENT);
mods.extendedcrafting.EnderCrafting.addShaped(itemHelper.typeConversion(PPP_GOLD_SILENT),
	[[<minecraft:light_weighted_pressure_plate>, null, null],
	 [<minecraft:wool>, null, null],
	 [null, null, null]
]);

recipes.remove(<enderio:block_exit_rail>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_exit_rail> * 6,
	[[IRON, <minecraft:piston>, IRON],
	 [IRON, <minecraft:stone_pressure_plate>, IRON],
	 [IRON, <ore:dustRedstone>, IRON]
]);

recipes.remove(<enderio:block_detector_block>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_detector_block>,
	[[<ore:itemChassiParts>, PPP_DARK_STEEL, <ore:itemChassiParts>],
	 [<ore:itemChassiParts>, <ore:piston>, <ore:itemChassiParts>],
	 [<ore:itemChassiParts>, <ore:redstone_block>, <ore:itemChassiParts>]
]);

recipes.remove(<enderio:block_detector_block_silent>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:block_detector_block_silent>,
	[[<ore:itemChassiParts>, PPP_DARK_STEEL_SILENT, <ore:itemChassiParts>],
	 [<ore:itemChassiParts>, <ore:piston>, <ore:itemChassiParts>],
	 [<ore:itemChassiParts>, <ore:redstone_block>, <ore:itemChassiParts>]
]);

recipes.remove(<item:minecraft:cake>);
mods.extendedcrafting.EnderCrafting.addShaped(<item:minecraft:cake>,
	[[<minecraft:milk_bucket>, <minecraft:milk_bucket>, <minecraft:milk_bucket>],
	 [<minecraft:sugar>, <ore:itemCakeBase>, <minecraft:sugar>],
	 [null, null, null]
]);