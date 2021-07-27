##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     更多实用设备 工作台合成  ##
##################################################
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass Extrautils2Recipes{

	zenConstructor(){

	}

	function init() {
		recipesInit();
		itemRemove();
	}

	function recipesInit(){
        
        //垃圾桶
		recipes.remove(<extrautils2:trashcan>);
		recipesUtils.addRecipe(<extrautils2:trashcan>,
			["AAA",
			 "ACA",
			 "AAA"],
			{ A : <ore:cobblestone>,
			  C : <minecraft:hopper>}
		);

        //流体垃圾桶
		recipes.remove(<extrautils2:trashcanfluid>);
		recipesUtils.addRecipe(<extrautils2:trashcanfluid>,
			["AAA",
			 "ACA",
			 "AAA"],
			{ A : <ore:cobblestone>,
			  C : <flopper:flopper>}
		);
        
        //能量垃圾桶
		recipes.remove(<extrautils2:trashcanenergy>);
		recipesUtils.addRecipe(<extrautils2:trashcanenergy>,
			["AAA",
			 "ACA",
			 "AAA"],
			{ A : <ore:cobblestone>,
			  C : <techreborn:energycrystal>}
		);

		//消音器
		recipes.remove(<extrautils2:soundmuffler>);
		recipesUtils.addRecipe(<extrautils2:soundmuffler>,
			["AB ",
			 "   ",
			 "   "],
			{ A : <randomthings:sounddampener>,
			  B : <minecraft:noteblock>}
		);

/*
		//红石钟
		recipes.remove(<extrautils2:redstoneclock>);
		recipesUtils.addRecipe(<extrautils2:redstoneclock>,
			["ABA",
			 "BCB",
			 "ABA"],
			{ A : <minecraft:redstone_torch>,
			  C : <extrautils2:ingredients:1>,
			  B : <extrautils2:decorativesolid:3>}
		);
*/		
		//漆黑之门
		recipes.remove(<extrautils2:teleporter:1>);
		recipesUtils.addFull3Recipe(<extrautils2:teleporter:1>, <extrautils2:compressedcobblestone:7>);

		//机器方块
		recipes.remove(<extrautils2:machine>);
		recipesUtils.addShapelessCycle(<extrautils2:machine>, <thermalexpansion:frame>);
		
		//电炉
		recipesUtils.addSurroundRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), <techreborn:machine_casing>, <extrautils2:machine>);

		//生存者发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), [
			[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>],
			[<extrautils2:decorativesolid:3>, <extrautils2:machine>, <extrautils2:decorativesolid:3>],
			[<actuallyadditions:item_crystal_empowered>, <minecraft:furnace>, <actuallyadditions:item_crystal_empowered>]]);
/*
		//粉碎机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}), [
			[<pneumaticcraft:compressed_iron_gear>, <appliedenergistics2:grindstone>, <pneumaticcraft:compressed_iron_gear>],
			[<pneumaticcraft:compressed_iron_gear>, <extrautils2:machine>, <pneumaticcraft:compressed_iron_gear>],
			[<pneumaticcraft:compressed_iron_gear>, <appliedenergistics2:grindstone>, <pneumaticcraft:compressed_iron_gear>]]);
*/
		//附魔器
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}), [
			[null, <ore:bookEnchanted>, null],
			[<ore:gearDiamond>, <extrautils2:machine>, <ore:gearDiamond>],
			[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
		
		//熔炉发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), [
			[<ore:plateDenseIron>, <ore:gearIron>, <ore:plateDenseIron>],
			[<ore:gearIron>, <extrautils2:machine>, <ore:gearIron>],
			[<enderio:item_alloy_ingot:3>, <minecraft:furnace>, <enderio:item_alloy_ingot:3>]]);

		//厨用发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [
			[<harvestcraft:cuttingboarditem>, <harvestcraft:mortarandpestleitem>, <harvestcraft:bakewareitem>],
			[<harvestcraft:saucepanitem>, <harvestcraft:deluxechickencurryitem>, <harvestcraft:skilletitem>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//熔岩发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), [
			[<actuallyadditions:block_lava_factory_controller>, <actuallyadditions:block_misc:7>, <actuallyadditions:block_lava_factory_controller>],
			[<actuallyadditions:block_misc:7>, <extrautils2:passivegenerator:2>, <actuallyadditions:block_misc:7>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//高热红石发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}), [
			[<mekanism:compressedredstone>, <ore:plateRutile>, <mekanism:compressedredstone>],
			[<ore:plateRutile>, <actuallyadditions:block_crystal_empowered>, <ore:plateRutile>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), <enderio:item_alloy_ingot:3>]]);

		//末影发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}), [
			[<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>],
			[<ore:ingotEnderium>, <extrautils2:ingredients:2>, <ore:ingotEnderium>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//药水发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), [
			[<bloodmagic:potion_flask>, <thermalexpansion:augment:448>, <bloodmagic:potion_flask>],
			[<bloodmagic:potion_flask>, <minecraft:brewing_stand>, <bloodmagic:potion_flask>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//粉红发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), [
			[<appliedenergistics2:paint_ball:6>, <appliedenergistics2:paint_ball:6>, <appliedenergistics2:paint_ball:6>],
			[<appliedenergistics2:paint_ball:6>, <minecraft:pink_shulker_box>, <appliedenergistics2:paint_ball:6>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//超频发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), [
			[<ore:ingotAdvancedAlloy>, <ore:ingotAdvancedAlloy>, <ore:ingotAdvancedAlloy>],
			[<ore:ingotAdvancedAlloy>, <ore:circuitExtreme>, <ore:ingotAdvancedAlloy>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//TNT发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), [
			[<extrautils2:unstableingots>, <extrautils2:unstableingots>, <extrautils2:unstableingots>],
			[<extrautils2:unstableingots>, <minecraft:tnt>, <extrautils2:unstableingots>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//下界之星发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), [
			[<woot:structure:4>, <actuallyadditions:item_misc:19>, <woot:structure:4>],
			[<actuallyadditions:item_misc:19>, <xreliquary:witherless_rose>, <actuallyadditions:item_misc:19>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//龙息发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}), [
			[<ore:dragonEgg>, <minecraft:end_rod>, <ore:dragonEgg>],
			[<minecraft:end_rod>, <actuallyadditions:item_misc:19>, <minecraft:end_rod>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//霜冻发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), [
			[<ore:dustCryotheum>, <ore:dustCryotheum>, <ore:dustCryotheum>],
			[<ore:dustCryotheum>, <techreborn:part:12>, <ore:dustCryotheum>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//死亡发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}), [
			[<actuallyadditions:item_damage_lens>, <actuallyadditions:item_damage_lens>, <actuallyadditions:item_damage_lens>],
			[<actuallyadditions:item_damage_lens>, <extrautils2:cursedearth>, <actuallyadditions:item_damage_lens>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//祛魔发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}), [
			[<actuallyadditions:item_disenchanting_lens>, <actuallyadditions:item_disenchanting_lens>, <actuallyadditions:item_disenchanting_lens>],
			[<actuallyadditions:item_disenchanting_lens>, <xreliquary:magicbane:0>, <actuallyadditions:item_disenchanting_lens>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

		//史莱姆发电机
		recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), [
			[<tconstruct:ingots:3>, <tconstruct:ingots:3>, <tconstruct:ingots:3>],
			[<tconstruct:ingots:3>, <enderio:block_alloy_endergy:4>, <tconstruct:ingots:3>],
			[<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]]);

    }

	function itemRemove()
	{
		//红石齿轮
		recipes.remove(<extrautils2:ingredients:1>);

		//月之石
		recipes.removeByRecipeName("extrautils2:moon_stone");
	}
}