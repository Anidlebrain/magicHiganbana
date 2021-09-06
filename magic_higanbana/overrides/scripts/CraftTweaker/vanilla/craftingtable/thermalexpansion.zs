##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     热力膨胀 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass ThermalexpansionRecipes {
    zenConstructor() {

    }

    function init() {
        TraversalRecipe();
        recipesInit();
        itemRemove();
    }
    
    function recipesInit() {
         //机器框架
        recipes.remove(<thermalexpansion:frame>);
        RecipeBuilder.get("engineer")
          .setShaped(recipesUtils.centreCrossitem(<ore:ingotElectricalSteel>, <ore:fusedGlass>, <thermalfoundation:material:264>))
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:frame>)
          .create();
       
        recipes.remove(<thermalexpansion:frame:64>);

         //设备框架
        recipes.remove(<thermalexpansion:frame:128>);
        RecipeBuilder.get("engineer")
          .setShaped(recipesUtils.centreCrossitem(<thermalfoundation:material:136>, <ore:fusedQuartz>, <ore:gearEnderium>))
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:frame:128>)
          .create();

        //便携储罐 (基础)
        recipes.remove(<thermalexpansion:tank>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:blockSheetmetalCopper>, <ore:blockGlassHardened>, <ore:blockSheetmetalCopper>],
            [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>],
            [<ore:blockSheetmetalCopper>, <thermalfoundation:material:512>, <ore:blockSheetmetalCopper>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:tank>)
          .create();

        //蒸汽能源炉 (基础)
        recipes.remove(<thermalexpansion:dynamo>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [null, <immersiveengineering:metal_device1:8>, null],
            [<ore:plateCopper>, <woot:factorycore:5>, <ore:plateCopper>],
            [<ore:gearRefinedIron>, <thermalfoundation:material:514>, <ore:gearRefinedIron>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:dynamo>)
          .create();

        //热力能源炉 (基础)
        recipes.remove(<thermalexpansion:dynamo:1>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [null, <immersiveengineering:metal_device1:8>, null],
            [<ore:plateZinc>, <woot:factorycore:5>, <ore:plateZinc>],
            [<actuallyadditions:block_lava_factory_controller>, <thermalfoundation:material:514>, <actuallyadditions:block_lava_factory_controller>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:dynamo:1>)
          .create();

        //反应能源炉 (基础)
        recipes.remove(<thermalexpansion:dynamo:3>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [null, <immersiveengineering:metal_device1:8>, null],
            [<ore:plateDiamond>, <woot:factorycore:5>, <ore:plateDiamond>],
            [<actuallyadditions:block_lava_factory_controller>, <thermalfoundation:material:514>, <actuallyadditions:block_lava_factory_controller>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:dynamo:1>)
          .create();

        //硬化升级套件
        recipes.remove(<thermalfoundation:upgrade>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:gearInvar>, <ore:plateInvar>, <ore:gearInvar>],
            [<ore:plateInvar>, <ore:blockAluminium>, <ore:plateInvar>],
            [<ore:gearInvar>, <ore:plateInvar>, <ore:gearInvar>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalfoundation:upgrade>)
          .create();

        //强化升级套件
        recipes.remove(<thermalfoundation:upgrade:1>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:gearElectrum>, <ore:plateElectrum>, <ore:gearElectrum>],
            [<ore:plateElectrum>, <ore:blockAlubrass>, <ore:plateElectrum>],
            [<ore:gearElectrum>, <ore:plateElectrum>, <ore:gearElectrum>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalfoundation:upgrade:1>)
          .create();
        
        //信素升级套件
        recipes.remove(<thermalfoundation:upgrade:2>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<actuallyadditions:item_crystal_empowered>, <thermalfoundation:material:357>, <actuallyadditions:item_crystal_empowered>],
            [<thermalfoundation:material:357>, <thermalfoundation:storage_alloy:5>, <thermalfoundation:material:357>],
            [<actuallyadditions:item_crystal_empowered>, <thermalfoundation:material:357>, <actuallyadditions:item_crystal_empowered>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalfoundation:upgrade:2>)
          .create();
        
        //谐振升级套件
        recipes.remove(<thermalfoundation:upgrade:3>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:27>, <thermalfoundation:material:359>, <thermalfoundation:material:27>],
            [<thermalfoundation:material:359>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:material:359>],
            [<thermalfoundation:material:27>, <thermalfoundation:material:359>, <thermalfoundation:material:27>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalfoundation:upgrade:3>)
          .create();

        //升级: 辅助传动线圈
        recipes.remove(<thermalexpansion:augment:512>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotEnergeticSilver>, <item:immersiveengineering:sheetmetal:3>, <ore:blockAluminium>],
            [<item:immersiveengineering:sheetmetal:3>, <thermalfoundation:material:514>, <item:immersiveengineering:sheetmetal:3>],
            [<ore:blockAluminium>, <item:immersiveengineering:sheetmetal:3>, <ore:ingotEnergeticSilver>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:512>)
          .create();
        
        //能量单元框架
        recipes.remove(<thermalexpansion:augment:128>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalfoundation:material:513>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:128>)
          .create();

        //硬化能量单元框架
        recipes.remove(<thermalexpansion:augment:129>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalfoundation:material:512>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:129>)
          .create();

        //强化能量单元框架
        recipes.remove(<thermalexpansion:augment:130>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <extrautils2:trashcan>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:130>)
          .create();

        //升级: 土壤肥力恢复
        recipes.remove(<thermalexpansion:augment:320>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalfoundation:fertilizer:1>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:320>)
          .create();

        //升级: 自动轮作循环
        recipes.remove(<thermalexpansion:augment:324>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalfoundation:fertilizer:2>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:324>)
          .create();

        //升级: 树苗灌注基底
        recipes.remove(<thermalexpansion:augment:323>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <ore:treeSapling>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:323>)
          .create();

        //升级: 齿轮工作模具
        recipes.remove(<thermalexpansion:augment:337>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <ore:gearDiamond>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:337>)
          .create();

        //升级: 热量对流循环
        recipes.remove(<thermalexpansion:augment:352>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <minecraft:lava_bucket>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:352>)
          .create();

        //升级: 通量链接集合
        recipes.remove(<thermalexpansion:augment:400>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <appliedenergistics2:charger>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:400>)
          .create();

        //升级: 通量维修复原
        recipes.remove(<thermalexpansion:augment:401>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <actuallyadditions:item_solidified_experience>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:401>)
          .create();

        //升级: 传输线圈管道
        recipes.remove(<thermalexpansion:augment:514>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<minecraft:iron_ingot>, <ore:plateRefinedIron>, <minecraft:iron_ingot>],
            [<ore:plateRefinedIron>, <minecraft:hopper>, <ore:plateRefinedIron>],
            [<minecraft:iron_ingot>, <ore:plateRefinedIron>, <minecraft:iron_ingot>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:514>)
          .create();

        //升级: 反应催化试剂
        recipes.remove(<thermalexpansion:augment:448>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <minecraft:dye:4>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:448>)
          .create();

        //升级: 熵增抑制容器
        recipes.remove(<thermalexpansion:augment:656>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotIridiumAlloy>,<thermalfoundation:material:1025>, <ore:ingotIridiumAlloy>],
            [<thermalfoundation:material:1025>, <thermalfoundation:material:1024>, <thermalfoundation:material:1025>],
            [<ore:ingotIridiumAlloy>, <thermalfoundation:material:1025>, <ore:ingotIridiumAlloy>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:656>)
          .create();

        //升级: 火成碎屑注入
        recipes.remove(<thermalexpansion:augment:496>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <minecraft:water_bucket>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:496>)
          .create();

        //升级: 基础反应催化
        recipes.remove(<thermalexpansion:augment:688>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>],
            [<actuallyadditions:item_crystal_empowered>, <thermalfoundation:material:1028>, <actuallyadditions:item_crystal_empowered>],
            [<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:688>)
          .create();

        //升级: 抛物通量耦合
        recipes.remove(<thermalexpansion:augment:402>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalexpansion:capacitor>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:402>)
          .create();

        //升级: 燃料催化加速
        recipes.remove(<thermalexpansion:augment:513>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotIronCompressed>, <ore:plateInvar>, <ore:ingotIronCompressed>],
            [<ore:plateInvar>, <thermalfoundation:material:515>, <ore:plateInvar>],
            [<ore:ingotIronCompressed>, <ore:plateInvar>, <ore:ingotIronCompressed>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:513>)
          .create();

        //升级: 励磁限制装置
        recipes.remove(<thermalexpansion:augment:515>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<minecraft:iron_ingot>, <ore:plateRefinedIron>, <minecraft:iron_ingot>],
            [<ore:plateRefinedIron>, <immersiveengineering:metal_device1:8>, <ore:plateRefinedIron>],
            [<minecraft:iron_ingot>, <ore:plateRefinedIron>, <minecraft:iron_ingot>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:515>)
          .create();

        //升级: 宝石印刻校准
        recipes.remove(<thermalexpansion:augment:720>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
            [<ore:plateDiamond>, <minecraft:emerald>, <ore:plateDiamond>],
            [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:720>)
          .create();

        //升级: 碎屑沉积
        recipes.remove(<thermalexpansion:augment:497>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <minecraft:cobblestone>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalexpansion:augment:497>)
          .create();

        //红石传导线圈
        recipes.remove(<thermalfoundation:material:515>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:partToolRodGold>, <minecraft:redstone>, null],
            [<minecraft:redstone>, <ore:partToolRodGold>, <minecraft:redstone>],
            [null, <minecraft:redstone>, <ore:partToolRodGold>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<thermalfoundation:material:515>)
          .create();

        //recipes.removeByRecipeName("thermalfoundation:material_122");
        
       
    }

    function itemRemove() {
        itemHelper.removeItem(<thermalexpansion:machine:3>);
        //升级: 通货铸造授权
        itemHelper.removeItem(<thermalexpansion:augment:336>);
        itemHelper.removeItem(<thermalexpansion:dynamo:5>);

        //背包
        itemHelper.removeItem(<thermalexpansion:dynamo:5>);
    }

    function TraversalRecipe() {
        for recipe in recipes.all {
            var name as string = recipe.name;
            var ResourceName = recipe.fullResourceDomain;
            if (!isNull(recipe.output)) {
                if(recipe.ingredients1D has <ore:dustPyrotheum>) {
                    print("Anidlebrain ore-recipe for name: " ~ name ~ " and mods is " ~ recipe.output.definition.owner ~ " and outputname is " ~ recipe.output.definition.name);
                    if(recipe.output.definition.name.contains("ingot") |
                       recipe.output.definition.name.contains("Ingot") |
                       recipe.output.definition.name.contains("metal") |
                       recipe.output.definition.name.contains("material")) {
                        recipes.removeByRecipeName(ResourceName);
                    }
                }
                /*
                else if(recipe.ingredients1D has <thermalfoundation:material:1024>) {
                    print("Anidlebrain item-recipe for name: " ~ name ~ " and mods is " ~ recipe.output.definition.owner ~ " and outputname is " ~ recipe.output.definition.name);
                    if(recipe.output.definition.name.contains("ingot")) {
                        recipes.removeByRecipeName(ResourceName);
                    }
                }
                */
            }
        }
    }
}
