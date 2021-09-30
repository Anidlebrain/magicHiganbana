##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     应用能源 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import mods.artisanworktables.builder.RecipeBuilder;

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
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotFluixSteel>, <prodigytech:circuit_refined>, <ore:ingotFluixSteel>],
            [<ore:circuitBasic>, <appliedenergistics2:chest>, <ore:circuitBasic>],
            [<ore:ingotFluixSteel>, <prodigytech:circuit_refined>, <ore:ingotFluixSteel>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:drive>)
          .create();

        //压印器
        recipes.remove(<appliedenergistics2:inscriber>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotZorrasteel>, <botania:pistonrelay>, <ore:ingotZorrasteel>],
            [<appliedenergistics2:material:12>, <prodigytech:circuit_perfected>, <ore:ingotZorrasteel>],
            [<ore:ingotZorrasteel>, <botania:pistonrelay>, <ore:ingotZorrasteel>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:inscriber>)
          .create();

        //编码样板
        recipes.remove(<appliedenergistics2:material:52>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<techreborn:cable:1>, <techreborn:cable:1>, <techreborn:cable:1>],
            [<prodigytech:circuit_refined>, <ore:circuitAdvanced>, <prodigytech:circuit_refined>],
            [<prodigytech:circuit_refined>, <prodigytech:circuit_perfected>, <prodigytech:circuit_refined>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:material:52> * 8)
          .create();

        //合成处理单元
        recipes.remove(<appliedenergistics2:crafting_unit>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotFluixSteel>, <appliedenergistics2:material:23>, <ore:ingotFluixSteel>],
            [<appliedenergistics2:part:16>, <appliedenergistics2:material:22>, <appliedenergistics2:part:16>],
            [<ore:ingotFluixSteel>, <appliedenergistics2:material:23>, <ore:ingotFluixSteel>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:crafting_unit>)
          .create();

        //分子装配室
        recipes.remove(<appliedenergistics2:molecular_assembler>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotFluixSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotFluixSteel>],
            [<appliedenergistics2:material:44>, <artisanworktables:worktable:5>, <appliedenergistics2:material:43>],
            [<ore:ingotFluixSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotFluixSteel>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:molecular_assembler>)
          .create();

        //ME成型面板
        recipes.remove(<appliedenergistics2:part:320>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>],
            [<ore:ingotFluixSteel>, <appliedenergistics2:material:43>,<ore:ingotFluixSteel>],
            [null, null, null]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:320>)
          .create();

        //ME流体成型面板 
        recipes.remove(<appliedenergistics2:part:321>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>],
            [<ore:plateLapis>, <appliedenergistics2:material:43>, <ore:plateLapis>],
            [null, null, null]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:321>)
          .create();

        //ME破坏面板
        recipes.remove(<appliedenergistics2:part:300>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>],
            [<ore:ingotFluixSteel>, <appliedenergistics2:material:44>, <ore:ingotFluixSteel>],
            [null, null, null]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:300>)
          .create();

        //ME流体破坏面板
        recipes.remove(<appliedenergistics2:part:302>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>],
            [<ore:plateLapis>, <appliedenergistics2:material:44>, <ore:plateLapis>],
            [null, null, null]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:302>)
          .create();

        //ME流体终端
        recipes.remove(<appliedenergistics2:part:520>);
        RecipeBuilder.get("engineer")
          .setShapeless([<appliedenergistics2:part:380>, <ore:plateLapis>, <appliedenergistics2:material:22>])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:520>)
          .create();

        //ME输出总线
        recipes.remove(<appliedenergistics2:part:260>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotFluixSteel>, <appliedenergistics2:material:43>, <ore:ingotFluixSteel>],
            [null, <immersiveengineering:wooden_device0:3>, null],
            [null, null, null]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:260>)
          .create();

        //ME流体输出总线
        recipes.remove(<appliedenergistics2:part:261>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:plateLapis>, <appliedenergistics2:material:43>, <ore:plateLapis>],
            [null, <immersiveengineering:wooden_device0:7>, null],
            [null, null, null]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:261>)
          .create();

        //ME输入总线
        recipes.remove(<appliedenergistics2:part:240>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [null, null, null],
            [null, <immersiveengineering:wooden_device0:3>, null],
            [<ore:ingotFluixSteel>, <appliedenergistics2:material:44>, <ore:ingotFluixSteel>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:240>)
          .create();

        //ME流体输入总线
        recipes.remove(<appliedenergistics2:part:241>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [null, null, null],
            [null, <immersiveengineering:wooden_device0:7>, null],
            [<ore:plateLapis>, <appliedenergistics2:material:44>, <ore:plateLapis>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:241>)
          .create();
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
        RecipeBuilder.get("engineer")
          .setShaped([
            [null, <ore:plateinvar>, null],
            [<ore:plateinvar>, <appliedenergistics2:material:24>, <ore:plateinvar>],
            [<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:460>)
          .create();
        
        //身份卡
        recipes.remove(<appliedenergistics2:biometric_card>);
        RecipeBuilder.get("engineer")
          .setShapeless([<appliedenergistics2:material:25>, <randomthings:idcard>])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:biometric_card>)
          .create();

        //内存卡
        recipes.remove(<appliedenergistics2:memory_card>);
        RecipeBuilder.get("engineer")
          .setShapeless([<appliedenergistics2:material:25>, <ore:circuitAdvanced>])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:memory_card>)
          .create();
            
        //基础卡
        recipes.remove(<appliedenergistics2:material:25>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<prodigytech:circuit_crude>, <ore:plateIron>, null],
            [<prodigytech:circuit_crude>, <appliedenergistics2:material:23>, <ore:plateIron>],
            [<prodigytech:circuit_crude>, <ore:plateIron>, null]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:material:25>)
          .create();

        //高级卡
        recipes.remove(<appliedenergistics2:material:28>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<prodigytech:circuit_perfected>, <ore:plateRedstone>, null],
            [<prodigytech:circuit_perfected>, <appliedenergistics2:material:23>, <ore:plateRedstone>],
            [<prodigytech:circuit_perfected>, <ore:plateRedstone>, null]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:material:28>)
          .create();
            
        //物质聚合器
        recipes.remove(<appliedenergistics2:condenser>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<threng:material:2>, <appliedenergistics2:quartz_glass>, <threng:material:2>],
            [<appliedenergistics2:quartz_glass>, <threng:material:1>, <appliedenergistics2:quartz_glass>],
            [<threng:material:2>, <appliedenergistics2:quartz_glass>, <threng:material:2>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:condenser>)
          .create();

        //无线终端
        recipes.remove(<appliedenergistics2:material:41>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [null, <botania:turntable>, null],
            [<ore:plateTitanium>, <minecraft:nether_star>, <ore:plateTitanium>],
            [null, <ore:plateTitanium>, null]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:material:41>)
          .create();

        //ME标准发信器
        recipes.remove(<appliedenergistics2:part:280>);
        RecipeBuilder.get("engineer")
          .setShapeless([<minecraft:redstone_torch>, <ore:ingotFluixSteel>, <appliedenergistics2:material:23>, <ore:stickSteel>])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:280>)
          .create();
        
        //ME流体发信器
        recipes.remove(<appliedenergistics2:part:281>);
        RecipeBuilder.get("engineer")
          .setShapeless([<minecraft:redstone_torch>, <ore:plateLapis>, <appliedenergistics2:material:23>, <ore:stickSteel>])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:281>)
          .create();

        //ME接口
        recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotFluixSteel>, <immersiveengineering:wooden_device0:3>, <ore:ingotFluixSteel>], 
            [<appliedenergistics2:material:44>, <randomthings:advancedredstoneinterface:0>, <appliedenergistics2:material:43>], 
            [<ore:ingotFluixSteel>, <ore:ingotFluixSteel>, <ore:ingotFluixSteel>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:interface>)
          .create();

        //ME流体接口
        recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:plateLapis>, <immersiveengineering:wooden_device0:7>, <ore:plateLapis>], 
            [<appliedenergistics2:material:44>, <randomthings:advancedredstoneinterface:0>, <appliedenergistics2:material:43>], 
            [<ore:plateLapis>, <ore:plateLapis>, <ore:plateLapis>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:fluid_interface>)
          .create();

        //能源接收器
        recipes.remove(<appliedenergistics2:energy_acceptor>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotFluixSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotFluixSteel>], 
            [<appliedenergistics2:quartz_glass>, <appliedenergistics2:material:0>, <appliedenergistics2:quartz_glass>], 
            [<ore:ingotFluixSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotFluixSteel>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:energy_acceptor>)
          .create();

        //ME存储外壳
        recipes.remove(<appliedenergistics2:material:39>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<appliedenergistics2:quartz_glass>, <skyresources:alchemyitemcomponent:6>, <appliedenergistics2:quartz_glass>],
            [<ore:plateRedstone>, <immersiveengineering:metal_device1:2>, <ore:plateRedstone>],
            [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:material:39>)
          .create();

        //充能器
        recipes.remove(<appliedenergistics2:charger>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:plateIron>, <appliedenergistics2:material>, <ore:plateIron>],
            [<ore:plateIron>, null, null],
            [<ore:plateIron>, <appliedenergistics2:material>,<ore:plateIron>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:charger>)
          .create();
        
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
        RecipeBuilder.get("engineer")
          .setShapeless([<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:52>])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:340>)
          .create();
            
        //ME终端
        recipes.remove(<appliedenergistics2:part:380>);
        RecipeBuilder.get("engineer")
          .setShapeless([<ore:itemIlluminatedPanel>, <ore:circuitBasic>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <appliedenergistics2:material:22>])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:part:380>)
          .create();

        //ME量子环 
        recipes.remove(<appliedenergistics2:quantum_ring>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:plateinvar>, <appliedenergistics2:material:23>, <ore:plateinvar>], 
            [<appliedenergistics2:material:24>, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:24>], 
            [<ore:plateinvar>, <appliedenergistics2:material:23>,<ore:plateinvar>]])
          .addTool(<ore:artisansCutters>, 8)
          .addOutput(<appliedenergistics2:quantum_ring>)
          .create();

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