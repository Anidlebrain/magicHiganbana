##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     奇才秒械 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

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
        recipesUtils.addRecipe(<prodigytech:magmatic_aeroheater>,
            ["A A",
             "BBB",
             "BBB"],
            { A : ferramic_ingot,
              B : <ore:ingotSteel>}
        );
        
        //固体燃料气热炉
        recipes.remove(<prodigytech:solid_fuel_aeroheater>);
        recipesUtils.addRecipe(<prodigytech:solid_fuel_aeroheater>,
            ["A A",
             "ABA",
             "AAA"],
            { A : ferramic_ingot,
              B : <skyresources:combustionheater:4>}
        );
        
        //air_funnel
        recipes.remove(<prodigytech:air_funnel>);
        recipesUtils.addRecipe(<prodigytech:air_funnel>,
            ["A A",
             "ABA",
             "A A"],
            { A : ferramic_ingot,
              B : <flopper:flopper>}
        );

        //能源气热炉
        recipes.remove(<prodigytech:energion_aeroheater>);
        recipesUtils.addRecipe(<prodigytech:energion_aeroheater>,
            ["A A",
             "CBC",
             "ADA"],
            { A : ferramic_ingot,
              B : l1,
              C : redstone,
              D : <minecraft:furnace>}
        );

        //热容器气热炉
        recipes.remove(<prodigytech:capacitor_aeroheater>);
        recipesUtils.addRecipe(<prodigytech:capacitor_aeroheater>,
            ["A A",
             "CBC",
             "AAA"],
            { A : ferramic_ingot,
              B : l2,
              C : redstone}
        );
        
        //焚化炉
        recipes.remove(<prodigytech:incinerator>);
        recipesUtils.addRecipe(<prodigytech:incinerator>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : ferramic_ingot,
              B : <tcomplement:melter:8>,
              C : l1}
        );

        //烘烤炉
        recipes.remove(<prodigytech:blower_furnace>);
        recipesUtils.addRecipe(<prodigytech:blower_furnace>,
            ["ABA",
             "ACA",
             "ABA"],
            { A : ferramic_ingot,
              B : <minecraft:iron_ingot>,
              C : <tcomplement:melter:8>}
        );

        //磁力重构
        recipes.remove(<prodigytech:magnetic_reassembler>);
        recipesUtils.addRecipe(<prodigytech:magnetic_reassembler>,
            ["ABA",
             "DCD",
             "ABA"],
            { A : ferramic_ingot,
              B : <ore:gearFerramic>,
              C : l2,
              D : <minecraft:gold_ingot>}
        );

        //矿石精炼机
        recipes.remove(<prodigytech:ore_refinery>);
        recipesUtils.addRecipe(<prodigytech:ore_refinery>,
            ["ABA",
             "DCD",
             "ABA"],
            { A : ferramic_ingot,
              B : redstone,
              C : l2,
              D : <ore:ingotAluminum>}
        );
        
    }

    function itemRemove() {
        //碳板
        itemHelper.removeItemAndOre(<prodigytech:carbon_plate>, <ore:plateCarbon>);
    }
}



