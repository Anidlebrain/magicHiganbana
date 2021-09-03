##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     全局变量
##=================================================
#priority 99999999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.AnildebrainUtils.BaseUtils;

//config\enderio\recipes\aliase.pdf  
global CHASSIS as IOreDictEntry = <ore:itemMachineChassi>;
global SIMPLE_CHASSIS as IOreDictEntry = <ore:itemSimpleMachineChassi>;
global SOUL_CHASSIS as IOreDictEntry = <ore:itemSoulMachineChassi>;
global ENHANCED_CHASSIS as IOreDictEntry = <ore:itemEnhancedMachineChassi>;
global UNSOULED_CHASSIS as IOreDictEntry = <ore:itemUnsouledMachineChassi>;
global CHASSIPARTS as IOreDictEntry = <ore:itemChassiParts>;
global END_STEEL_CHASSIS as IOreDictEntry = <ore:itemEndSteelMachineChassi>;
global SIMPLE_CHASSIPARTS as IOreDictEntry = <ore:itemSimpleChassiParts>;
global ENHANCED_CHASSIPARTS as IOreDictEntry = <ore:itemEnhancedChassiParts>;
global GEAR_WOOD as IOreDictEntry = <ore:gearWood>;
global GEAR_STONE as IOreDictEntry = <ore:gearStone>;
global GEAR_IRON as IOreDictEntry = <ore:gearIronInfinity>;
global GEAR_ENERGIZED as IOreDictEntry = <ore:gearEnergized>;
global GEAR_VIBRANT as IOreDictEntry = <ore:gearVibrant>;
global GEAR_DARKSTEEL as IOreDictEntry = <ore:gearDark>;
global GLIDER_WING as IOreDictEntry = <ore:itemGliderWing>;
global GLIDER_WINGS as IOreDictEntry = <ore:itemGliderWings>;
global SILICON as IOreDictEntry = <ore:itemSilicon>;
global CONDUIT_BINDER as IOreDictEntry = <ore:itemConduitBinder>;
global BINDER_COMPOSITE as IOreDictEntry = <ore:itemBinderComposite>;
global PULSATING_CRYSTAL as IOreDictEntry = <ore:itemPulsatingCrystal>;
global VIBRANT_CRYSTAL as IOreDictEntry = <ore:itemVibrantCrystal>;
global ENDER_CRYSTAL as IOreDictEntry = <ore:itemEnderCrystal>;
global ATTRACTOR_CRYSTAL as IOreDictEntry = <ore:itemAttractorCrystal>;
global WEATHER_CRYSTAL as IOreDictEntry = <ore:itemWeatherCrystal>;
global PRECIENT_CRYSTAL as IOreDictEntry = <ore:itemPrecientCrystal>;
global PRECIENT_POWDER as IOreDictEntry = <ore:itemPrecientPowder>;
global VIBRANT_POWDER as IOreDictEntry = <ore:itemVibrantPowder>;
global ENDER_CYSTAL_POWDER as IOreDictEntry = <ore:itemEnderCrystalPowder>;
global NUTRITIOUS_STICK as IOreDictEntry = <ore:itemNutritiousStick>;
global PLANTGREEN as IOreDictEntry = <ore:itemPlantgreen>;
global PLANTBROWN as IOreDictEntry = <ore:itemPlantbrown>;
global POWDER_COAL as IOreDictEntry = <ore:dustCoal>;
global POWDER_IRON as IOreDictEntry = <ore:dustIron>;
global POWDER_GOLD as IOreDictEntry = <ore:dustGold>;
global POWDER_COPPER as IOreDictEntry = <ore:dustCopper>;
global POWDER_TIN as IOreDictEntry = <ore:dustTin>;
global POWDER_ENDER as IOreDictEntry = <ore:skullEnderpearl>;
global POWDER_OBSIDIAN as IOreDictEntry = <ore:dustObsidian>;
global POWDER_ARDITE as IOreDictEntry = <ore:dustArdite>;
global POWDER_COBALT as IOreDictEntry = <ore:dustCobalt>;
global POWDER_INFINITY as IOreDictEntry = <ore:dustBedrock>;
global POWDER_QUARTZ as IOreDictEntry = <ore:dustNetherQuartz>;
global POWDER_PULSATING as IOreDictEntry = <ore:itemPulsatingPowder>;
global INGOT_ENDERIUM_BASE as IOreDictEntry = <ore:ingotEnderiumBase>;
global FLOUR as IOreDictEntry = <ore:dustWheat>;
global ZOMBIE_ELECTRODE as IOreDictEntry = <ore:skullZombieElectrode>;
global ZOMBIE_CONTROLLER as IOreDictEntry = <ore:skullZombieController>;
global FRANKEN_ZOMBIE as IOreDictEntry = <ore:skullZombieFrankenstein>;
global ENDER_RESONATOR as IOreDictEntry = <ore:skullEnderResonator>;
global SENTIENT_ENDER as IOreDictEntry = <ore:skullSentientEnder>;
global SKELETAL_CONTRACTOR as IOreDictEntry = <ore:skullSkeletalContractor>;
global GUARDIAN_DIODE as IOreDictEntry = <ore:skullGuardianDiode>;
global CAPACITOR1 as IIngredient = <item:enderio:item_basic_capacitor>;
global CAPACITOR2 as IIngredient = <item:enderio:item_basic_capacitor:1>;
global CAPACITOR3 as IIngredient = <item:enderio:item_basic_capacitor:2>;
global FUSED_QUARTZ as IOreDictEntry = <ore:fusedQuartz>;
global FUSED_GLASS as IOreDictEntry = <ore:fusedGlass>;
global ENLIGHTED_QUARTZ as IOreDictEntry = <ore:enlightenedFusedQuartz>;
global ENLIGHTED_GLASS as IOreDictEntry = <ore:enlightenedFusedGlass>;
global DARK_QUARTZ as IOreDictEntry = <ore:darkFusedQuartz>;
global DARK_GLASS as IOreDictEntry = <ore:darkFusedGlass>;
global ELECTRICAL_STEEL_NUGGET as IOreDictEntry = <ore:skullElectricalSteel>;
global ENERGETIC_ALLOY_NUGGET as IOreDictEntry = <ore:skullEnergeticAlloy>;
global VIBRANT_ALLOY_NUGGET as IOreDictEntry = <ore:skullVibrantAlloy>;
global REDSTONE_ALLOY_NUGGET as IOreDictEntry = <ore:skullRedstoneAlloy>;
global CONDUCTIVE_IRON_NUGGET as IOreDictEntry = <ore:skullConductiveIron>;
global PULSATING_IRON_NUGGET as IOreDictEntry = <ore:skullPulsatingIron>;
global DARK_STEEL_NUGGET as IOreDictEntry = <ore:skullDarkSteel>;
global SOULARIUM_NUGGET as IOreDictEntry = <ore:skullSoularium>;
global END_STEEL_NUGGET as IOreDictEntry = <ore:skullEndSteel>;
global CONSTRUCTION_ALLOY_NUGGET as IOreDictEntry = <ore:skullConstructionAlloy>;
global ELECTRICAL_STEEL as IOreDictEntry = <ore:ingotElectricalSteel>;
global ENERGETIC_ALLOY as IOreDictEntry = <ore:ingotEnergeticAlloy>;
global VIBRANT_ALLOY as IOreDictEntry = <ore:ingotVibrantAlloy>;
global REDSTONE_ALLOY as IOreDictEntry = <ore:ingotRedstoneAlloy>;
global CONDUCTIVE_IRON as IOreDictEntry = <ore:ingotConductiveIron>;
global PULSATING_IRON as IOreDictEntry = <ore:ingotPulsatingIron>;
global DARK_STEEL as IOreDictEntry = <ore:ingotDarkSteel>;
global SOULARIUM as IOreDictEntry = <ore:ingotSoularium>;
global END_STEEL as IOreDictEntry = <ore:ingotEndSteel>;
global CONSTRUCTION_ALLOY as IOreDictEntry = <ore:ingotConstructionAlloy>;
global IRON as IOreDictEntry = <ore:ingotConstructionAlloy>;
global ELECTRICAL_STEEL_BALL as IOreDictEntry = <ore:ballElectricalSteel>;
global ENERGETIC_ALLOY_BALL as IOreDictEntry = <ore:ballEnergeticAlloy>;
global VIBRANT_ALLOY_BALL as IOreDictEntry = <ore:ballVibrantAlloy>;
global REDSTONE_ALLOY_BALL as IOreDictEntry = <ore:ballRedstoneAlloy>;
global CONDUCTIVE_IRON_BALL as IOreDictEntry = <ore:ballConductiveIron>;
global PULSATING_IRON_BALL as IOreDictEntry = <ore:ballPulsatingIron>;
global DARK_STEEL_BALL as IOreDictEntry = <ore:ballDarkSteel>;
global SOULARIUM_BALL as IOreDictEntry = <ore:ballSoularium>;
global END_STEEL_BALL as IOreDictEntry = <ore:ballEndSteel>;
global CONSTRUCTION_ALLOY_BALL as IOreDictEntry = <ore:ballConstructionAlloy>;
global ELECTRICAL_STEEL_BLOCK as IOreDictEntry = <ore:blockElectricalSteel>;
global ENERGETIC_ALLOY_BLOCK as IOreDictEntry = <ore:blockEnergeticAlloy>;
global VIBRANT_ALLOY_BLOCK as IOreDictEntry = <ore:blockVibrantAlloy>;
global REDSTONE_ALLOY_BLOCK as IOreDictEntry = <ore:blockRedstoneAlloy>;
global CONDUCTIVE_IRON_BLOCK as IOreDictEntry = <ore:blockConductiveIron>;
global PULSATING_IRON_BLOCK as IOreDictEntry = <ore:blockPulsatingIron>;
global DARK_STEEL_BLOCK as IOreDictEntry = <ore:blockDarkSteel>;
global SOULARIUM_BLOCK as IOreDictEntry = <ore:blockSoularium>;
global END_STEEL_BLOCK as IOreDictEntry = <ore:blockEndSteel>;
global CAP_BANK_1 as IIngredient = <item:enderio:block_cap_bank:1>;
global CAP_BANK_2 as IIngredient = <item:enderio:block_cap_bank:2>;
global CAP_BANK_3 as IIngredient = <item:enderio:block_cap_bank:3>;
global SOLAR_1 as IIngredient = <item:enderio:block_solar_panel>;
global SOLAR_2 as IIngredient = <item:enderio:block_solar_panel:1>;
global SOLAR_3 as IIngredient = <item:enderio:block_solar_panel:2>;
global SOLAR_4 as IIngredient = <item:enderio:block_solar_panel:3>;
global CONDUIT_PROBE as IIngredient = <item:enderio:item_conduit_probe>;
global HEAD_ENDERMAN as IIngredient = <item:enderio:block_enderman_skull>;
global HEAD_SKELETON as IIngredient = <item:minecraft:skull:0>;
global HEAD_CREEPER as IIngredient = <item:minecraft:skull:2>;
global HEAD_ZOMBIE as IIngredient = <item:minecraft:skull:4>;
global HEAD_ENDERMAN_TORMENTED as IIngredient = <item:enderio:block_enderman_skull:2>;
global LIGHT_ELECTRIC as IIngredient = <item:enderio:block_electric_light>;
global LIGHT_ELECTRIC_INV as IIngredient = <item:enderio:block_electric_light:1>;
global LIGHT_BASIC as IIngredient = <item:enderio:block_electric_light:2>;
global LIGHT_BASIC_INV as IIngredient = <item:enderio:block_electric_light:3>;
global LIGHT_WIRELESS as IIngredient = <item:enderio:block_electric_light:4>;
global LIGHT_WIRELESS_INV as IIngredient = <item:enderio:block_electric_light:5>;
global PPP_DARK_STEEL as IIngredient = <item:enderio:block_painted_pressure_plate:8>;
global PPP_SOULARIUM as IIngredient = <item:enderio:block_painted_pressure_plate:10>;
global PPP_TUNED as IIngredient = <item:enderio:block_painted_pressure_plate:12>;
global PPP_WOOD_SILENT as IIngredient = <item:enderio:block_painted_pressure_plate:1>;
global PPP_STONE_SILENT as IIngredient = <item:enderio:block_painted_pressure_plate:3>;
global PPP_IRON_SILENT as IIngredient = <item:enderio:block_painted_pressure_plate:5>;
global PPP_GOLD_SILENT as IIngredient = <item:enderio:block_painted_pressure_plate:7>;
global PPP_DARK_STEEL_SILENT as IIngredient = <item:enderio:block_painted_pressure_plate:9>;
global PPP_SOULARIUM_SILENT as IIngredient = <item:enderio:block_painted_pressure_plate:11>;
global PPP_TUNED_SILENT as IIngredient = <item:enderio:block_painted_pressure_plate:13>;
global INDUSTRIAL_INSULATION as IIngredient = <item:enderio:block_industrial_insulation>;
global SIGNALUM_BALL as IOreDictEntry = <ore:itemGrindingBallSignalum>;
global ENDERIUM_BALL as IOreDictEntry = <ore:itemGrindingBallEnderium>;
global LUMIUM_BALL as IOreDictEntry = <ore:itemGrindingBallLumium>;
global REDSTONE_FILTER_BASE as IOreDictEntry = <ore:itemRedstoneFilterBase>;
global REDSTONE_FILTER_AND as IIngredient = <item:enderio:item_redstone_and_filter>;
global REDSTONE_FILTER_OR as IIngredient = <item:enderio:item_redstone_or_filter>;
global REDSTONE_FILTER_XOR as IIngredient = <item:enderio:item_redstone_xor_filter>;
global REDSTONE_FILTER_NAND as IIngredient = <item:enderio:item_redstone_nand_filter>;
global REDSTONE_FILTER_NOR as IIngredient = <item:enderio:item_redstone_nor_filter>;
global REDSTONE_FILTER_XNOR as IIngredient = <item:enderio:item_redstone_xnor_filter>;
global REMOTE_AWARENESS_UPGRADE as IOreDictEntry = <ore:itemRemoteAwarenessUpgrade>;
global INFINITY_GOOP as IOreDictEntry = <ore:itemInfinityGoop>;

global ORGANIC_GREEN_DYE as IOreDictEntry = <ore:dyeGreen>;
global ORGANIC_BROWN_DYE as IOreDictEntry = <ore:dyeBrown>;
global ORGANIC_BLACK_DYE as IOreDictEntry = <ore:dyeBlack>;

global BLOOD_ORB as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}) | 
                  <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"});

//阶段名称
global stageTheNetherName as string = BaseUtils.cleanName("TheNether");
global stageTheEndName as string = BaseUtils.cleanName("TheEnd");
global stageTwilightForestName as string = BaseUtils.cleanName("TwilightForest");
global stageDeepDarkName as string = BaseUtils.cleanName("DeepDark");
global stageSpectreName as string = BaseUtils.cleanName("Spectre");

global stageZeroName as string = BaseUtils.cleanName("initial");
global stageOneName as string = BaseUtils.cleanName("alchemy beginning");
global stageTwoName as string = BaseUtils.cleanName("Vitality appears");
global stageThreeName as string = BaseUtils.cleanName("life Sacrifice");
global stageFourName as string = BaseUtils.cleanName("industrial revolution");
global stageFiveName as string = BaseUtils.cleanName("Natural blessing");
global stageSixName as string = BaseUtils.cleanName("The age of mechanization");
global stageSevenName as string = BaseUtils.cleanName("Ender technology");
global stageEightName as string = BaseUtils.cleanName("Intelligent machinery");
global stageNineName as string = BaseUtils.cleanName("Looking at the starsc");
global stageTenName as string = BaseUtils.cleanName("The profound mystery of the world");
global stageElevenName as string = BaseUtils.cleanName("The sea of stars");
global stageTwelveName as string = BaseUtils.cleanName("Flowers bloom on the other side");

global stageDefaultName as string = BaseUtils.cleanName("Default");

//管道
global stagePipeName as string = BaseUtils.cleanName("Pipeline Science");

//环境科技
global ETName as string = BaseUtils.cleanName("Environmental Tech");