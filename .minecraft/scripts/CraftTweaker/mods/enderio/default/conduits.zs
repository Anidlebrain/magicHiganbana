##################################################
##          [Author]:   City & Anidlebrain      ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     末影接口 末影配方        ##
##################################################
#priority 2000
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

recipes.remove(<enderio:item_liquid_conduit:0>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_liquid_conduit:0> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [FUSED_GLASS, FUSED_GLASS, FUSED_GLASS],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_liquid_conduit:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_liquid_conduit:1> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [FUSED_QUARTZ, FUSED_QUARTZ, FUSED_QUARTZ],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_liquid_conduit:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_liquid_conduit:1> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [FUSED_QUARTZ, <enderio:item_liquid_conduit:0>, FUSED_QUARTZ],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_liquid_conduit:2>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_liquid_conduit:2> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [VIBRANT_ALLOY, FUSED_QUARTZ, VIBRANT_ALLOY],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_liquid_conduit:2>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_liquid_conduit:2> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [VIBRANT_ALLOY, <enderio:item_liquid_conduit:1>, VIBRANT_ALLOY],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_power_conduit:0>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_power_conduit:0> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [CONDUCTIVE_IRON, CONDUCTIVE_IRON, CONDUCTIVE_IRON],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_power_conduit:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_power_conduit:1> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [ENERGETIC_ALLOY, ENERGETIC_ALLOY, ENERGETIC_ALLOY],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_power_conduit:1>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_power_conduit:1> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [ENERGETIC_ALLOY, <enderio:item_power_conduit:0>, ENERGETIC_ALLOY],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_power_conduit:2>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_power_conduit:2> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [VIBRANT_ALLOY, VIBRANT_ALLOY, VIBRANT_ALLOY],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_power_conduit:2>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_power_conduit:2> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [VIBRANT_ALLOY, <enderio:item_power_conduit:1>, VIBRANT_ALLOY],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_redstone_conduit:0>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_redstone_conduit:0> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [REDSTONE_ALLOY, REDSTONE_ALLOY, REDSTONE_ALLOY],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_item_conduit:0>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_item_conduit:0> * 4,
	[[CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER],
	 [PULSATING_IRON_NUGGET, PULSATING_IRON_NUGGET, PULSATING_IRON_NUGGET],
	 [CONDUIT_BINDER, CONDUIT_BINDER, CONDUIT_BINDER]
]);

recipes.remove(<enderio:item_extract_speed_upgrade>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_extract_speed_upgrade>,
	[[IRON, IRON, IRON],
	 [ELECTRICAL_STEEL, <minecraft:piston>, ELECTRICAL_STEEL],
	 [ELECTRICAL_STEEL, <minecraft:redstone_torch>, ELECTRICAL_STEEL]
]);

recipes.remove(<enderio:item_extract_speed_downgrade>);
mods.extendedcrafting.EnderCrafting.addShaped(<enderio:item_extract_speed_downgrade>,
	[[IRON, IRON, IRON],
	 [ELECTRICAL_STEEL, <ore:slimeball>, ELECTRICAL_STEEL],
	 [ELECTRICAL_STEEL, <ore:stickWood>, ELECTRICAL_STEEL]
]);

