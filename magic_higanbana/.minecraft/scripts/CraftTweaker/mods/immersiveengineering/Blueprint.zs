##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
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
Blueprint.addRecipe("工程模块", <item:immersiveengineering:metal_decoration0:7> * 2, [<item:forestry:crafting_material:5> * 5, <ore:ingotSteel> * 4, <ore:ingotCopper> * 4]);

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
