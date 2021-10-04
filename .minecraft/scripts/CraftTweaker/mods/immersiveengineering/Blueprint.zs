##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     沉浸工程 蓝图
##================================================
#priority 2000
import mods.immersiveengineering.Blueprint;

/*--------------------------------------------------------------------------------------------------------------------------------------------------*/
//制作组件

recipes.remove(<item:prodigytech:circuit_plate>);
Blueprint.addRecipe("components", <item:prodigytech:circuit_plate>, [<immersiveengineering:stone_decoration:8>, <ore:plateCopper>, <immersiveengineering:material:26>, <immersiveengineering:material:26>]);


/*--------------------------------------------------------------------------------------------------------------------------------------------------*/
//传送带



/*--------------------------------------------------------------------------------------------------------------------------------------------------*/
//发电机

//动能发电机
recipes.remove(<item:immersiveengineering:metal_device1:2>);
Blueprint.addRecipe("发电机", <item:immersiveengineering:metal_device1:2>, [<ore:alloyBasic> * 3, <ore:ingotIron> * 4, <item:immersiveengineering:metal_decoration0:0>]);

//热传导发电机
recipes.remove(<item:immersiveengineering:metal_device1:3>);
Blueprint.addRecipe("发电机", <item:immersiveengineering:metal_device1:3> * 2, [<ore:ingotSteel> * 3, <ore:plateConstantan> * 6, <item:immersiveengineering:metal_decoration0:0>]);



//熔炉发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
    [<ore:plateDenseIron> * 2, <ore:gearIron> * 3, <extrautils2:machine>, <enderio:item_alloy_ingot:3> * 2, <tp:iron_furnace_block>]);

//厨用发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}),
    [<harvestcraft:cuttingboarditem>, <harvestcraft:bakewareitem>, <harvestcraft:skilletitem>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);
    
//熔岩发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),
    [<actuallyadditions:block_lava_factory_controller> * 2, <actuallyadditions:block_misc:7> * 3, <extrautils2:passivegenerator:2>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//高热红石发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}),
    [<mekanism:compressedredstone> * 2, <ore:ingotDemonicMetal> * 3, <extrautils2:machine>, <actuallyadditions:block_crystal_empowered> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"})]);

//末影发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}),
    [<ore:plateEnderium> * 2, <ore:ingotEnderium> * 3, <extrautils2:ingredients:2>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//药水发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}),
    [<bloodmagic:potion_flask> * 4, <thermalexpansion:augment:448>, <minecraft:brewing_stand>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//粉红发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}),
    [<appliedenergistics2:paint_ball:6> * 6, <minecraft:pink_shulker_box>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//超频发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),
    [<ore:ingotAdvancedAlloy> * 6, <techreborn:upgrades>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//TNT发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}),
    [<extrautils2:unstableingots> * 6, <minecraft:tnt>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//下界之星发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}),
    [<woot:structure:4> * 2, <actuallyadditions:item_misc:19> * 3, <xreliquary:witherless_rose>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//龙息发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}),
    [<ore:dragonEgg> * 4, <minecraft:end_rod> * 3, <actuallyadditions:item_misc:19>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//霜冻发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}),
    [<ore:dustCryotheum> * 5, <techreborn:part:12>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//死亡发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),
    [<actuallyadditions:item_damage_lens> * 6, <extrautils2:cursedearth>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//祛魔发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),
    [<actuallyadditions:item_disenchanting_lens> * 6, <xreliquary:magicbane:0>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);

//史莱姆发电机
Blueprint.addRecipe("发电机", <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    [<tconstruct:ingots:3> * 6, <enderio:block_alloy_endergy:4>, <enderio:item_alloy_ingot:3> * 2, <extrautils2:machine>.withTag({Type: "extrautils2:generator"})]);


/*--------------------------------------------------------------------------------------------------------------------------------------------------*/
//工程模块

//红石工程块
recipes.remove(<item:immersiveengineering:metal_decoration0:3>);
Blueprint.addRecipe("工程模块", <item:immersiveengineering:metal_decoration0:3> * 2, [<ore:alloyBasic> * 4, <ore:ingotIron> * 4, <ore:ingotCopper>]);

//轻型工程块
recipes.remove(<item:immersiveengineering:metal_decoration0:4>);
Blueprint.addRecipe("工程模块", <item:immersiveengineering:metal_decoration0:4> * 2, [<item:immersiveengineering:material:8> * 2, <ore:ingotIron> * 4, <ore:ingotCopper> * 3]);

//重型工程块
recipes.remove(<item:immersiveengineering:metal_decoration0:5>);
Blueprint.addRecipe("工程模块", <item:immersiveengineering:metal_decoration0:5> * 2, 
    [<item:immersiveengineering:material:9> * 2, <ore:ingotSteel> * 4, <ore:ingotElectrum>, <item:minecraft:piston>]);

//发电机模块
recipes.remove(<item:immersiveengineering:metal_decoration0:6>);
Blueprint.addRecipe("工程模块", <item:immersiveengineering:metal_decoration0:6> * 2, [<item:immersiveengineering:metal_device1:2>, <ore:ingotSteel> * 6, <ore:ingotElectrum> * 2]);

//散热模块
recipes.remove(<item:immersiveengineering:metal_decoration0:7>);
Blueprint.addRecipe("工程模块", <item:immersiveengineering:metal_decoration0:7> * 2, [<contenttweaker:ice_shard> * 5, <ore:ingotSteel> * 4, <ore:ingotCopper> * 4]);

//强化高炉砖 
recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick_reinfoced");
Blueprint.addRecipe("工程模块", <item:immersiveengineering:stone_decoration:2>, [<item:immersiveengineering:stone_decoration:1>, <ore:plateSteel>]);

//强化高炉砖 
//recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick_reinfoced");
//Blueprint.addRecipe("工程模块", <item:immersiveengineering:stone_decoration:2>, [<item:forestry:stone_decoration:1>, <ore:plateSteel>]);

/*--------------------------------------------------------------------------------------------------------------------------------------------------*/
//脚手架

//栅栏
recipes.remove(<item:immersiveengineering:metal_decoration1:0>);
Blueprint.addRecipe("脚手架", <item:immersiveengineering:metal_decoration1:0> * 3, [<ore:ingotSteel> * 4, <ore:stickSteel> * 2]);
//钢脚手架
recipes.removeByRecipeName("immersiveengineering:metal_decoration/steel_scaffolding");
//Blueprint.addRecipe("components", <immersiveengineering:metal_decoration1:1>, [<ore:ingotSteel> * 2, <ore:stickSteel> * 3]);
Blueprint.addRecipe("脚手架", <item:immersiveengineering:metal_decoration1:1> * 4, [<ore:ingotSteel> * 2, <ore:stickSteel> * 3]);

//栅栏
recipes.remove(<item:immersiveengineering:metal_decoration1:4>);
Blueprint.addRecipe("脚手架", <item:immersiveengineering:metal_decoration1:4> * 3, [<ore:ingotAluminum> * 4, <ore:stickAluminum> * 2]);
//铝脚手架
recipes.removeByRecipeName("immersiveengineering:metal_decoration/aluminum_scaffolding");
Blueprint.addRecipe("脚手架", <item:immersiveengineering:metal_decoration1:5> * 4, [<ore:ingotAluminum> * 2, <ore:stickAluminum> * 3]);

//栅栏
//recipes.remove(<item:immersiveengineering:wooden_decoration:0>);
Blueprint.addRecipe("脚手架", <item:immersiveengineering:wooden_decoration:0> * 3, [<ore:stickTreatedWood> * 2, <ore:plankTreatedWood> * 4]);
//防腐木脚手架
//recipes.remove(<item:immersiveengineering:wooden_decoration:1>);
Blueprint.addRecipe("脚手架", <item:immersiveengineering:wooden_decoration:1> * 4, [<ore:stickTreatedWood> * 3, <ore:plankTreatedWood> * 2]);

//脚手架
recipes.remove(<item:randomthings:blockofsticks>);
Blueprint.addRecipe("脚手架", <item:randomthings:blockofsticks>, [<ore:stickWood> * 8]);

//强化脚手架
recipes.remove(<item:randomthings:blockofsticks:1>);
Blueprint.addRecipe("脚手架", <item:randomthings:blockofsticks:1> * 8, [<item:randomthings:blockofsticks> * 8, <item:minecraft:ender_pearl>]);

/*--------------------------------------------------------------------------------------------------------------------------------------------------*/
