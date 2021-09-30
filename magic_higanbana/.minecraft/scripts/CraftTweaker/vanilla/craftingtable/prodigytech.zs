##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     奇才秒械 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass ProdigytechRecipes {
    zenConstructor() {

    }

    function init() {
        itemRemove();
        recipesInit();

    }
    

    function recipesInit() {
        var ferramic_ingot = <prodigytech:ferramic_ingot>;
        var redstone = <woot:stygianironingot>;
        var l1 = <prodigytech:circuit_crude>;
        var l2 = <prodigytech:circuit_refined>;
        var l3 = <prodigytech:circuit_perfected>;

        
        //熔岩气热炉
        recipes.remove(<prodigytech:magmatic_aeroheater>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [ferramic_ingot, null, ferramic_ingot],
            [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
            [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<prodigytech:magmatic_aeroheater>)
          .create();
        
        //固体燃料气热炉
        recipes.remove(<prodigytech:solid_fuel_aeroheater>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [ferramic_ingot, null, ferramic_ingot],
            [ferramic_ingot, <ore:ingotSteel>, ferramic_ingot],
            [ferramic_ingot, ferramic_ingot, ferramic_ingot]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<prodigytech:solid_fuel_aeroheater>)
          .create();
        
        //air_funnel
        recipes.remove(<prodigytech:air_funnel>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [ferramic_ingot, null, ferramic_ingot],
            [ferramic_ingot, <flopper:flopper>, ferramic_ingot],
            [ferramic_ingot, null, ferramic_ingot]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<prodigytech:air_funnel>)
          .create();
        
        //能源气热炉
        recipes.remove(<prodigytech:energion_aeroheater>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [ferramic_ingot, null, ferramic_ingot],
            [redstone, l1, redstone],
            [ferramic_ingot, <minecraft:furnace>, ferramic_ingot]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<prodigytech:energion_aeroheater>)
          .create();

        //热容器气热炉
        recipes.remove(<prodigytech:capacitor_aeroheater>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [ferramic_ingot, null, ferramic_ingot],
            [redstone, l2, redstone],
            [ferramic_ingot, ferramic_ingot, ferramic_ingot]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<prodigytech:capacitor_aeroheater>)
          .create();
        
        //焚化炉
        recipes.remove(<prodigytech:incinerator>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [ferramic_ingot, l1, ferramic_ingot],
            [ferramic_ingot, <tcomplement:melter:8>, ferramic_ingot],
            [ferramic_ingot, l1, ferramic_ingot]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<prodigytech:incinerator>)
          .create();

        //烘烤炉
        recipes.remove(<prodigytech:blower_furnace>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [ferramic_ingot, <minecraft:iron_ingot>, ferramic_ingot],
            [ferramic_ingot, <tcomplement:melter:8>, ferramic_ingot],
            [ferramic_ingot, <minecraft:iron_ingot>, ferramic_ingot]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<prodigytech:blower_furnace>)
          .create();

        //磁力重构
        recipes.remove(<prodigytech:magnetic_reassembler>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [ferramic_ingot, <ore:gearFerramic>, ferramic_ingot],
            [<minecraft:gold_ingot>, l2, <minecraft:gold_ingot>],
            [ferramic_ingot, <ore:gearFerramic>, ferramic_ingot]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<prodigytech:magnetic_reassembler>)
          .create();

        //矿石精炼机
        recipes.remove(<prodigytech:ore_refinery>);
        RecipeBuilder.get("farmer")
          .setShaped([
            [ferramic_ingot, redstone, ferramic_ingot],
            [<ore:ingotAluminum>, l2, <ore:ingotAluminum>],
            [ferramic_ingot, redstone, ferramic_ingot]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<prodigytech:ore_refinery>)
          .create();
        
    }

    function itemRemove() {
        //碳板
        itemHelper.removeItemAndOre(<prodigytech:carbon_plate>, <ore:plateCarbon>);
    }
}



