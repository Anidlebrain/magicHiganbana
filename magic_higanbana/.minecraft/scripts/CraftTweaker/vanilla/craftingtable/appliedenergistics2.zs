##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     应用能源 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

zenClass Appliedenergistics2Recipes{

    zenConstructor(){

    }

       function init() {
        recipesInit();
        removeItem();
    }

    function recipesInit() {

        //ME 驱动器
        recipes.remove(<appliedenergistics2:drive>);
        recipesUtils.addRecipe(<appliedenergistics2:drive>,
            ["ADA",
             "BCB",
             "ADA"],
            { A : <ore:ingotFluixSteel>,
              B : <ore:circuitBasic>,
              C : <appliedenergistics2:chest>,
              D : <prodigytech:circuit_refined>}
        );

        //压印器
        recipes.remove(<appliedenergistics2:inscriber>);
        recipesUtils.addRecipe(<appliedenergistics2:inscriber>,
            ["ADA",
             "BCA",
             "ADA"],
            { A : <ore:ingotZorrasteel>,
              B : <appliedenergistics2:material:12>,
              C : <prodigytech:circuit_perfected>,
              D : <botania:pistonrelay>}
        );
           
        //编码样板
        recipes.remove(<appliedenergistics2:material:52>);
        recipesUtils.addRecipe(<appliedenergistics2:material:52> * 8,
            ["AAA",
             "BCB",
             "BDB"],
            { A : <techreborn:cable:1>,
              B : <prodigytech:circuit_refined>,
              D : <prodigytech:circuit_perfected>,
              C : <ore:circuitAdvanced>}
        );

        //合成处理单元
        recipes.remove(<appliedenergistics2:crafting_unit>);
        recipesUtils.addRecipe(<appliedenergistics2:crafting_unit>,
            ["ADA",
             "BCB",
             "ADA"],
            { A : <ore:ingotFluixSteel>,
              B : <appliedenergistics2:part:16>,
              D : <appliedenergistics2:material:23>,
              C : <appliedenergistics2:material:22>}
        );

        //分子装配室
        recipes.remove(<appliedenergistics2:molecular_assembler>);
        recipesUtils.addRecipe(<appliedenergistics2:molecular_assembler>,
            ["ADA",
             "BCE",
             "ADA"],
            { A : <ore:ingotFluixSteel>,
              B : <appliedenergistics2:material:44>,
              D : <appliedenergistics2:quartz_glass>,
              C : <extendedcrafting:table_basic>,
              E : <appliedenergistics2:material:43>}
        );

        //ME成型面板
        recipes.remove(<appliedenergistics2:part:320>);    
        recipesUtils.addRecipe(<appliedenergistics2:part:320>,
            ["AAA",
             "BCB",
             "   "],
            { A : <appliedenergistics2:quartz_glass>,
              B : <ore:ingotFluixSteel>,
              C : <appliedenergistics2:material:43>}
        );

        //ME流体成型面板 
        recipes.remove(<appliedenergistics2:part:321>);    
        recipesUtils.addRecipe(<appliedenergistics2:part:321>,
            ["AAA",
             "BCB",
             "   "],
            { A : <appliedenergistics2:quartz_glass>,
              B : <ore:plateLapis>,
              C : <appliedenergistics2:material:43>}
        );

        //ME破坏面板
        recipes.remove(<appliedenergistics2:part:300>);    
        recipesUtils.addRecipe(<appliedenergistics2:part:300>,
            ["AAA",
             "BCB",
             "   "],
            { A : <appliedenergistics2:quartz_glass>,
              B : <ore:ingotFluixSteel>,
              C : <appliedenergistics2:material:44>}
        );

        //ME流体破坏面板
        recipes.remove(<appliedenergistics2:part:302>);    
        recipesUtils.addRecipe(<appliedenergistics2:part:302>,
            ["AAA",
             "BCB",
             "   "],
            { A : <appliedenergistics2:quartz_glass>,
              B : <ore:plateLapis>,
              C : <appliedenergistics2:material:44>}
        );

        //ME流体终端
        recipes.remove(<appliedenergistics2:part:520>);    
        recipesUtils.addShapeless(<appliedenergistics2:part:520>, [<appliedenergistics2:part:380>, <ore:plateLapis>, <appliedenergistics2:material:22>]);

        //ME输出总线
        recipes.remove(<appliedenergistics2:part:260>);    
        recipesUtils.addRecipe(<appliedenergistics2:part:260>,
            ["ABA",
             " C ",
             "   "],
            { A : <ore:ingotFluixSteel>,
              B : <appliedenergistics2:material:43>,
              C : <immersiveengineering:wooden_device0:3>}
        );

        //ME流体输出总线
        recipes.remove(<appliedenergistics2:part:261>);
        recipesUtils.addRecipe(<appliedenergistics2:part:261>,
            ["ABA",
             " C ",
             "   "],
            { A : <ore:plateLapis>,
              B : <appliedenergistics2:material:43>,
              C : <immersiveengineering:wooden_device0:7>}
        );

        //ME输入总线
        recipes.remove(<appliedenergistics2:part:240>);    
        recipesUtils.addRecipe(<appliedenergistics2:part:240>,
            ["   ",
             " C ",
             "ABA"],
            { A : <ore:ingotFluixSteel>,
              B : <appliedenergistics2:material:44>,
              C : <immersiveengineering:wooden_device0:3>}
        );

        //ME流体输入总线
        recipes.remove(<appliedenergistics2:part:241>);    
        recipesUtils.addRecipe(<appliedenergistics2:part:241>,
            ["   ",
             " C ",
             "ABA"],
            { A : <ore:plateLapis>,
              B : <appliedenergistics2:material:44>,
              C : <immersiveengineering:wooden_device0:7>}
        );
/*
        //ME存储总线
        recipes.remove(<appliedenergistics2:part:220>);    
        recipesUtils.addShapeless(<appliedenergistics2:part:220>, [<immersiveengineering:wooden_device0:3>, <appliedenergistics2:interface>]);
            
        //ME流体储存总线
        recipes.remove(<appliedenergistics2:part:221>);    
        recipesUtils.addShapeless(<appliedenergistics2:part:221>, [<immersiveengineering:wooden_device0:7>, <appliedenergistics2:fluid_interface>]);    
*/
        //P2P通道
        recipes.remove(<appliedenergistics2:part:460>);    
        recipesUtils.addRecipe(<appliedenergistics2:part:460>,
            [" B ",
             "BCB",
             "AAA"],
            { A : <appliedenergistics2:quartz_glass>,
              B : <ore:plateinvar>,
              C : <appliedenergistics2:material:24>}
        );
        
        //身份卡
        recipes.remove(<appliedenergistics2:biometric_card>);    
        recipesUtils.addShapeless(<appliedenergistics2:biometric_card>, [<appliedenergistics2:material:25>, <randomthings:idcard>]);        

        //内存卡
        recipes.remove(<appliedenergistics2:memory_card>);    
        recipesUtils.addShapeless(<appliedenergistics2:memory_card>, [<appliedenergistics2:material:25>, <ore:circuitAdvanced>]);
            
        //基础卡
        recipes.remove(<appliedenergistics2:material:25>);
        recipesUtils.addRecipe(<appliedenergistics2:material:25>,
            ["AB ",
             "ACB",
             "AB "],
            { A : <prodigytech:circuit_crude>,
              B : <ore:plateIron>,
              C : <appliedenergistics2:material:23>}
        );


        //高级卡
        recipes.remove(<appliedenergistics2:material:28>);
        recipesUtils.addRecipe(<appliedenergistics2:material:28>,
            ["AB ",
             "ACB",
             "AB "],
            { A : <prodigytech:circuit_perfected>,
              B : <ore:plateRedstone>,
              C : <appliedenergistics2:material:23>}
        );
            
        //物质聚合器
        recipes.remove(<appliedenergistics2:condenser>);    
        recipesUtils.addRecipe(<appliedenergistics2:condenser>,
            ["ACA",
             "CBC",
             "ACA"],
            { A : <threng:material:2>,
              B : <threng:material:1>,
              C : <appliedenergistics2:quartz_glass>}
        );

        //无线终端
        recipes.remove(<appliedenergistics2:material:41>);
        recipesUtils.addRecipe(<appliedenergistics2:material:41>,
            [" C ",
             "ABA",
             " A "],
            { A : <ore:plateTitanium>,
              B : <minecraft:nether_star>,
              C : <botania:turntable>}
        );


        //ME标准发信器
        recipes.remove(<appliedenergistics2:part:280>);
        recipesUtils.addShapeless(<appliedenergistics2:part:280>, [<minecraft:redstone_torch>, <ore:ingotFluixSteel>, <appliedenergistics2:material:23>, <ore:stickSteel>]);
        recipes.remove(<appliedenergistics2:part:281>);    
        recipesUtils.addShapeless(<appliedenergistics2:part:281>, [<minecraft:redstone_torch>, <ore:plateLapis>, <appliedenergistics2:material:23>,<ore:stickSteel>]);    

        //ME接口
        recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
        recipesUtils.addRecipe(<appliedenergistics2:interface>, [
            [<ore:ingotFluixSteel>, <immersiveengineering:wooden_device0:3>, <ore:ingotFluixSteel>], 
            [<appliedenergistics2:material:44>, <randomthings:advancedredstoneinterface:0>, <appliedenergistics2:material:43>], 
            [<ore:ingotFluixSteel>, <ore:ingotFluixSteel>, <ore:ingotFluixSteel>]]);
            
        //ME流体接口
        recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
        recipesUtils.addRecipe(<appliedenergistics2:fluid_interface>, [
            [<ore:plateLapis>, <immersiveengineering:wooden_device0:7>, <ore:plateLapis>], 
            [<appliedenergistics2:material:44>, <randomthings:advancedredstoneinterface:0>, <appliedenergistics2:material:43>], 
            [<ore:plateLapis>, <ore:plateLapis>, <ore:plateLapis>]]);
            
        //能源接收器
        recipes.remove(<appliedenergistics2:energy_acceptor>);
        recipesUtils.addRecipe(<appliedenergistics2:energy_acceptor>, [
            [<ore:ingotFluixSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotFluixSteel>], 
            [<appliedenergistics2:quartz_glass>, <appliedenergistics2:material:0>, <appliedenergistics2:quartz_glass>], 
            [<ore:ingotFluixSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotFluixSteel>]]);
            
        //ME存储外壳
        recipes.remove(<appliedenergistics2:material:39>);
        recipesUtils.addRecipe(<appliedenergistics2:material:39>,
            ["BCB",
             "C C",
             "AAA"],
            { A : <ore:plateIron>,
              B : <appliedenergistics2:quartz_glass>,
              C : <ore:plateRedstone>}
        );

        //充能器
        recipes.remove(<appliedenergistics2:charger>);
        recipesUtils.addRecipe(<appliedenergistics2:charger>,
            ["ABA",
             "A  ",
             "ABA"],
            { A : <ore:plateIron>,
              B : <appliedenergistics2:material>}
        );
        
 /*           
        //照明面板
        recipes.removeByRecipeName("appliedenergistics2:network/parts/panels_semi_dark_monitor");
        recipesUtils.addRecipe(<appliedenergistics2:part:180>, []);

        //充能器 
        recipes.remove(<appliedenergistics2:charger>);

        //ME箱子
        recipes.remove(<appliedenergistics2:chest>);
*/
        //ME样板终端
        recipes.remove(<appliedenergistics2:part:340>);
        recipesUtils.addShapeless(<appliedenergistics2:part:340>, [<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:52>]);
            
        //ME终端
        recipes.remove(<appliedenergistics2:part:380>);
        recipesUtils.addShapeless(<appliedenergistics2:part:380>, [<ore:itemIlluminatedPanel>, <ore:circuitBasic>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <appliedenergistics2:material:22>]);

        //ME量子环 
        recipes.remove(<appliedenergistics2:quantum_ring>);
        recipesUtils.addRecipe(<appliedenergistics2:quantum_ring>, [
        [<ore:plateinvar>, <appliedenergistics2:material:23>, <ore:plateinvar>], 
        [<appliedenergistics2:material:24>, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:24>], 
        [<ore:plateinvar>, <appliedenergistics2:material:23>,<ore:plateinvar>]]);


        recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_1k");
        recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_4k");
        recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_16k");
        recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_64k");
        recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_1k");
        recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_4k");
        recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_16k");
        recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_64k");
/*          
        // 1k 存储
        recipes.remove(<appliedenergistics2:material:35>);    
        recipesUtils.addRecipe(<appliedenergistics2:material:35>, [
            [<minecraft:glass>, <gregtech:meta_item_1:12237>, <minecraft:glass>], 
            [<gregtech:meta_item_1:12237>, <ore:circuitBasic>, <gregtech:meta_item_1:12237>], 
            [<minecraft:glass>, <gregtech:meta_item_1:12237>, <minecraft:glass>]]);
            
        // 4k 存储
        recipes.remove(<appliedenergistics2:material:36>);    
        recipesUtils.addRecipe(<appliedenergistics2:material:36>, [
            [<minecraft:glass>, <appliedenergistics2:material:22>, <minecraft:glass>],
            [<appliedenergistics2:material:35>, <ore:circuitGood>, <appliedenergistics2:material:35>],
            [<minecraft:glass>, <appliedenergistics2:material:35>, <minecraft:glass>]]);
            
        // 16k 存储
        recipes.remove(<appliedenergistics2:material:37>);
        recipesUtils.addRecipe(<appliedenergistics2:material:37>, [
            [<minecraft:glass>, <appliedenergistics2:material:24>, <minecraft:glass>],
            [<appliedenergistics2:material:36>, <ore:circuitAdvanced>, <appliedenergistics2:material:36>],
            [<minecraft:glass>, <appliedenergistics2:material:36>, <minecraft:glass>]]);
            
        // 64k 存储
        recipes.remove(<appliedenergistics2:material:38>);
        recipesUtils.addRecipe(<appliedenergistics2:material:38>, [
            [<appliedenergistics2:material:22>, <appliedenergistics2:material:24>, <appliedenergistics2:material:22>],
            [<appliedenergistics2:material:37>, <ore:circuitExtreme>, <appliedenergistics2:material:37>],
            [<appliedenergistics2:material:22>, <appliedenergistics2:material:37>, <appliedenergistics2:material:22>]]);
*/
    }

    function removeItem() {
        var items = [
            
        ] as crafttweaker.item.IItemStack[];
        
        itemHelper.removeItems(items);
    }
}