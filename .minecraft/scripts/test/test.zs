#norun
#priority 4000
//#modloaded etutil
#loader contenttweaker

//导包
	import mods.contenttweaker.VanillaFactory;
	import mods.contenttweaker.Item;
	import mods.contenttweaker.IItemRightClick;
	import mods.contenttweaker.Commands;
	import mods.contenttweaker.Fluid;
	import mods.contenttweaker.Color;
	import mods.contenttweaker.MaterialSystem;
	import mods.contenttweaker.Material;

//钕 铬 镍铬合金 钼 钼钢 钨 硬化钨钢 虚空金属的注册
	var nd = MaterialSystem.getMaterialBuilder().setName("Neodymium").setColor(16761035).build();
	var cr = MaterialSystem.getMaterialBuilder().setName("Chromium").setColor(16744192).build();
	var nicr = MaterialSystem.getMaterialBuilder().setName("Nichrome").setColor(15787660).build();
	var mo = MaterialSystem.getMaterialBuilder().setName("Molybdenum").setColor(13883557).build();
	var mofe = MaterialSystem.getMaterialBuilder().setName("MolybdenumSteel").setColor(12844972).build();
	var w = MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(10664123).build();
	var wfe = MaterialSystem.getMaterialBuilder().setName("TungstenSteel").setColor(4610158).build();
	var voidmetal = MaterialSystem.getMaterialBuilder().setName("VoidMetal").setColor(10198472).build();

//材料列表和类型列表
	var metal_list = [nd,cr,nicr,w,wfe,voidmetal,mo,mofe] as Material[];
	var part_names = ["dust", "gear", "plate", "nugget", "ingot", "rod", "beam", "bolt", "casing", "centrifuged_ore", "chipped_gem", "clump", "cluster", "cluster_overlay", "crushed_ore", "crystal", "dense_plate", "dirty_dust", "flawed_gem", "flawless_gem", "large_spring", "record_color", "ring", "round", "shard", "small_dust", "small_spring", "tiny_dust", "molten"] as string[];

//注册类型，矿石及金属块
	for i, metal in metal_list {
		metal.registerParts(part_names);
		var blockData = metal.registerPart("block").getData();
		blockData.addDataValue("hardness", "5");
		blockData.addDataValue("resistance", "30");
		blockData.addDataValue("harvestTool", "pickaxe");
		blockData.addDataValue("harvestLevel", "2");

		var oreData = metal.registerPart("ore").getData();
		oreData.addDataValue("hardness", "5");
		oreData.addDataValue("resistance", "30");
		oreData.addDataValue("harvestTool", "pickaxe");
		oreData.addDataValue("harvestLevel", "3");
	}

var antiIceBlock = VanillaFactory.createBlock("anti_ice", <blockmaterial:ice>);
antiIceBlock.setLightOpacity(3);
antiIceBlock.setLightValue(0);
antiIceBlock.setBlockHardness(5.0);
antiIceBlock.setBlockResistance(5.0);
antiIceBlock.setToolClass("pickaxe");
antiIceBlock.setToolLevel(0);
antiIceBlock.setBlockSoundType(<soundtype:snow>);
antiIceBlock.setSlipperiness(0.3);
antiIceBlock.register();
