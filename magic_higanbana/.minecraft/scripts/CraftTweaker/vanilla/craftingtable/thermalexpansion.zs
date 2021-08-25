##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     热力膨胀 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

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
        recipesUtils.addRecipe(<thermalexpansion:frame>,
            ["ACA",
             "CBC",
             "ACA"],
            { A : <ore:ingotElectricalSteel>,
              B : <thermalfoundation:material:264>,
              C : <ore:fusedGlass>});

       
        recipes.remove(<thermalexpansion:frame:64>);

         //设备框架
        recipes.remove(<thermalexpansion:frame:128>);
        recipesUtils.addRecipe(<thermalexpansion:frame:128>,
            ["ACA",
             "CBC",
             "ACA"],
            { A : <thermalfoundation:material:136>,
              B : <ore:gearEnderium>,
              C : <ore:fusedQuartz>});
        

        //便携储罐 (基础)
        recipes.remove(<thermalexpansion:tank>);
        recipesUtils.addRecipe(<thermalexpansion:tank>, [
            [<ore:blockSheetmetalCopper>, <ore:blockGlassHardened>, <ore:blockSheetmetalCopper>],
            [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>],
            [<ore:blockSheetmetalCopper>, <thermalfoundation:material:512>, <ore:blockSheetmetalCopper>]]);

        //蒸汽能源炉 (基础)
        recipes.remove(<thermalexpansion:dynamo>);
        recipesUtils.addRecipe(<thermalexpansion:dynamo>, [
            [null, <immersiveengineering:metal_device1:8>, null],
            [<ore:plateCopper>, <woot:factorycore:5>, <ore:plateCopper>],
            [<ore:gearRefinedIron>, <thermalfoundation:material:514>, <ore:gearRefinedIron>]]);

        //热力能源炉 (基础)
        recipes.remove(<thermalexpansion:dynamo:1>);
        recipesUtils.addRecipe(<thermalexpansion:dynamo:1>, [
            [null, <immersiveengineering:metal_device1:8>, null],
            [<ore:plateZinc>, <woot:factorycore:5>, <ore:plateZinc>],
            [<actuallyadditions:block_lava_factory_controller>, <thermalfoundation:material:514>, <actuallyadditions:block_lava_factory_controller>]]);

        //反应能源炉 (基础)
        recipes.remove(<thermalexpansion:dynamo:3>);
        recipesUtils.addRecipe(<thermalexpansion:dynamo:3>, [
            [null, <immersiveengineering:metal_device1:8>, null],
            [<ore:plateDiamond>, <woot:factorycore:5>, <ore:plateDiamond>],
            [<actuallyadditions:block_lava_factory_controller>, <thermalfoundation:material:514>, <actuallyadditions:block_lava_factory_controller>]]);
        
        //硬化升级套件
        recipes.remove(<thermalfoundation:upgrade>);
        recipesUtils.addRecipe(<thermalfoundation:upgrade>, [
            [<ore:gearInvar>, <ore:plateInvar>, <ore:gearInvar>],
            [<ore:plateInvar>, <ore:blockAluminium>, <ore:plateInvar>],
            [<ore:gearInvar>, <ore:plateInvar>, <ore:gearInvar>]]);

        //强化升级套件
        recipes.remove(<thermalfoundation:upgrade:1>);
        recipesUtils.addRecipe(<thermalfoundation:upgrade:1>, [
            [<ore:gearElectrum>, <ore:plateElectrum>, <ore:gearElectrum>],
            [<ore:plateElectrum>, <ore:blockAlubrass>, <ore:plateElectrum>],
            [<ore:gearElectrum>, <ore:plateElectrum>, <ore:gearElectrum>]]);

        //信素升级套件
        recipes.remove(<thermalfoundation:upgrade:2>);
        recipesUtils.addRecipe(<thermalfoundation:upgrade:2>, [
            [<actuallyadditions:item_crystal_empowered>, <thermalfoundation:material:357>, <actuallyadditions:item_crystal_empowered>],
            [<thermalfoundation:material:357>, <thermalfoundation:storage_alloy:5>, <thermalfoundation:material:357>],
            [<actuallyadditions:item_crystal_empowered>, <thermalfoundation:material:357>, <actuallyadditions:item_crystal_empowered>]]);

        //谐振升级套件
        recipes.remove(<thermalfoundation:upgrade:3>);
        recipesUtils.addRecipe(<thermalfoundation:upgrade:3>, [
            [<thermalfoundation:material:27>, <thermalfoundation:material:359>, <thermalfoundation:material:27>],
            [<thermalfoundation:material:359>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:material:359>],
            [<thermalfoundation:material:27>, <thermalfoundation:material:359>, <thermalfoundation:material:27>]]);

        //升级: 辅助传动线圈
        recipes.remove(<thermalexpansion:augment:512>);
        recipesUtils.addRecipe(<thermalexpansion:augment:512>, [
            [<ore:ingotEnergeticSilver>, <item:immersiveengineering:sheetmetal:3>, <ore:blockAluminium>],
            [<item:immersiveengineering:sheetmetal:3>, <thermalfoundation:material:514>, <item:immersiveengineering:sheetmetal:3>],
            [<ore:blockAluminium>, <item:immersiveengineering:sheetmetal:3>, <ore:ingotEnergeticSilver>]]);

        //能量单元框架
        recipes.remove(<thermalexpansion:augment:128>);
        recipesUtils.addRecipe(<thermalexpansion:augment:128>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalfoundation:material:513>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //硬化能量单元框架
        recipes.remove(<thermalexpansion:augment:129>);
        recipesUtils.addRecipe(<thermalexpansion:augment:129>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalfoundation:material:512>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //强化能量单元框架
        recipes.remove(<thermalexpansion:augment:130>);
        recipesUtils.addRecipe(<thermalexpansion:augment:130>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <extrautils2:trashcan>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 土壤肥力恢复
        recipes.remove(<thermalexpansion:augment:320>);
        recipesUtils.addRecipe(<thermalexpansion:augment:320>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalfoundation:fertilizer:1>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 自动轮作循环
        recipes.remove(<thermalexpansion:augment:324>);
        recipesUtils.addRecipe(<thermalexpansion:augment:324>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalfoundation:fertilizer:2>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 树苗灌注基底
        recipes.remove(<thermalexpansion:augment:323>);
        recipesUtils.addRecipe(<thermalexpansion:augment:323>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <ore:treeSapling>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 齿轮工作模具
        recipes.remove(<thermalexpansion:augment:337>);
        recipesUtils.addRecipe(<thermalexpansion:augment:337>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <ore:gearDiamond>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);


        //升级: 热量对流循环
        recipes.remove(<thermalexpansion:augment:352>);
        recipesUtils.addRecipe(<thermalexpansion:augment:352>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <minecraft:lava_bucket>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 通量链接集合
        recipes.remove(<thermalexpansion:augment:400>);
        recipesUtils.addRecipe(<thermalexpansion:augment:400>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <appliedenergistics2:charger>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 通量维修复原
        recipes.remove(<thermalexpansion:augment:401>);
        recipesUtils.addRecipe(<thermalexpansion:augment:401>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <actuallyadditions:item_solidified_experience>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 传输线圈管道
        recipes.remove(<thermalexpansion:augment:514>);
        recipesUtils.addRecipe(<thermalexpansion:augment:514>, [
            [<minecraft:iron_ingot>, <ore:plateRefinedIron>, <minecraft:iron_ingot>],
            [<ore:plateRefinedIron>, <minecraft:hopper>, <ore:plateRefinedIron>],
            [<minecraft:iron_ingot>, <ore:plateRefinedIron>, <minecraft:iron_ingot>]]);

        //升级: 反应催化试剂
        recipes.remove(<thermalexpansion:augment:448>);
        recipesUtils.addRecipe(<thermalexpansion:augment:448>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <minecraft:dye:4>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 熵增抑制容器
        recipes.remove(<thermalexpansion:augment:656>);
        recipesUtils.addRecipe(<thermalexpansion:augment:656>, [
            [<ore:ingotIridiumAlloy>,<thermalfoundation:material:1025>, <ore:ingotIridiumAlloy>],
            [<thermalfoundation:material:1025>, <thermalfoundation:material:1024>, <thermalfoundation:material:1025>],
            [<ore:ingotIridiumAlloy>, <thermalfoundation:material:1025>, <ore:ingotIridiumAlloy>]]);

        //升级: 火成碎屑注入
        recipes.remove(<thermalexpansion:augment:496>);
        recipesUtils.addRecipe(<thermalexpansion:augment:496>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <minecraft:water_bucket>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 基础反应催化
        recipes.remove(<thermalexpansion:augment:688>);
        recipesUtils.addRecipe(<thermalexpansion:augment:688>, [
            [<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>],
            [<actuallyadditions:item_crystal_empowered>, <thermalfoundation:material:1028>, <actuallyadditions:item_crystal_empowered>],
            [<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>]]);

        //升级: 抛物通量耦合
        recipes.remove(<thermalexpansion:augment:402>);
        recipesUtils.addRecipe(<thermalexpansion:augment:402>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <thermalexpansion:capacitor>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //升级: 燃料催化加速
        recipes.remove(<thermalexpansion:augment:513>);
        recipesUtils.addRecipe(<thermalexpansion:augment:513>, [
            [<ore:ingotIronCompressed>, <ore:plateInvar>, <ore:ingotIronCompressed>],
            [<ore:plateInvar>, <thermalfoundation:material:515>, <ore:plateInvar>],
            [<ore:ingotIronCompressed>, <ore:plateInvar>, <ore:ingotIronCompressed>]]);

        //升级: 励磁限制装置
        recipes.remove(<thermalexpansion:augment:515>);
        recipesUtils.addRecipe(<thermalexpansion:augment:515>, [
            [<minecraft:iron_ingot>, <ore:plateRefinedIron>, <minecraft:iron_ingot>],
            [<ore:plateRefinedIron>, <immersiveengineering:metal_device1:8>, <ore:plateRefinedIron>],
            [<minecraft:iron_ingot>, <ore:plateRefinedIron>, <minecraft:iron_ingot>]]);

        //升级: 宝石印刻校准
        recipes.remove(<thermalexpansion:augment:720>);
        recipesUtils.addRecipe(<thermalexpansion:augment:720>, [
            [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
            [<ore:plateDiamond>, <minecraft:emerald>, <ore:plateDiamond>],
            [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]]);

        //升级: 碎屑沉积
        recipes.remove(<thermalexpansion:augment:497>);
        recipesUtils.addRecipe(<thermalexpansion:augment:497>, [
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
            [<thermalfoundation:material:328>, <minecraft:cobblestone>, <thermalfoundation:material:328>],
            [<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

        //红石传导线圈
        recipes.remove(<thermalfoundation:material:515>);
        recipesUtils.addRecipe(<thermalfoundation:material:515>, [
            [<ore:partToolRodGold>, <minecraft:redstone>, null],
            [<minecraft:redstone>, <ore:partToolRodGold>, <minecraft:redstone>],
            [null, <minecraft:redstone>, <ore:partToolRodGold>]]);
        
        //recipes.removeByRecipeName("thermalfoundation:material_122");
        
       
    }

    function itemRemove() {
        itemHelper.removeItem(<thermalexpansion:machine:3>);
        //升级: 通货铸造授权
        itemHelper.removeItem(<thermalexpansion:augment:336>);
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
