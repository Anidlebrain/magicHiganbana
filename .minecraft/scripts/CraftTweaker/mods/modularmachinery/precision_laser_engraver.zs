##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     模块化机械 激光蚀刻机
##================================================
#priority 2000
#norun
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

zenClass PrecisionLaserEngraverRecipes {
    zenConstructor() {
        m_recipesNum = 0;
        m_machineName = "precision_laser_engraver";
        m_recipeTime = 2000;
        m_block = <appliedenergistics2:quartz_block>;
        m_lens = <item:botania:lens>;
    }

    var m_recipesNum as int;
    var m_machineName as string;
    var m_recipeTime as int;
    var m_block as IItemStack;
    var m_lens as IItemStack;

    function addRecipes(output as IItemStack,
                        inputStack as IItemStack[]) as int {
        if (isNull(inputStack) | isNull(output)) {
            print("错误!!");
            return -1 as int;
        }
        var name = ("Anidlebrain/modularmachinery/" ~ m_machineName ~ "/recipe_" ~ m_recipesNum) as string;
        //print(name);
        var primer = RecipeBuilder.newBuilder(name, m_machineName, m_recipeTime) as RecipePrimer;
        primer.addItemInput(m_block);
        primer.setChance(1.0);
        primer.addItemInput(m_lens);
        primer.setChance(0.01);
        if (!isNull(inputStack)) {
            for item in inputStack {
                primer.addItemInput(item);
            }
        }
        primer.addItemOutput(output);
        primer.addManaInput(5000);
        primer.build();
        m_recipesNum = m_recipesNum + 1;
        return 0 as int;
    }

    function recipesInit() {

        //粗糙电路模板
        addRecipes(<item:prodigytech:pattern_circuit_crude>, [<item:skyresources:alchemyitemcomponent:6>]);

        //精致电路模板
        addRecipes(<item:prodigytech:pattern_circuit_refined>, [<item:skyresources:alchemyitemcomponent:8>]);

        //完美电路模板
        addRecipes(<item:prodigytech:pattern_circuit_perfected>, [<item:techreborn:plates:2>]);

        //运算压印模板
        addRecipes(<item:appliedenergistics2:material:13>, [<item:appliedenergistics2:material:10>]);

        //工程压印模板
        addRecipes(<item:appliedenergistics2:material:14>, [<item:skyresources:alchemyitemcomponent:10>]);

        //逻辑压印模板
        addRecipes(<item:appliedenergistics2:material:15>, [<item:skyresources:alchemyitemcomponent:7>]);

        //硅压印模板
        addRecipes(<item:appliedenergistics2:material:19>, [<item:appliedenergistics2:material:5>]);

        //名称压印模板
        addRecipes(<item:appliedenergistics2:material:21>, [<item:minecraft:name_tag>]);
/*
        prodigytech:pattern_circuit_crude, item.prodigytech.pattern_circuit_crude.name, 粗糙电路模板, 0
        skyresources:alchemyitemcomponent, item.skyresources.alchemyItemComponent.alchCoal.name, 赫耳墨斯煤炭, 6

        prodigytech:pattern_circuit_refined, item.prodigytech.pattern_circuit_refined.name, 精致电路模板, 0
        skyresources:alchemyitemcomponent, item.skyresources.alchemyItemComponent.alchIronIngot.name, 赫耳墨斯之铁锭, 8

        prodigytech:pattern_circuit_perfected, item.prodigytech.pattern_circuit_perfected.name, 完美电路模板, 0
        appliedenergistics2:material, item.appliedenergistics2.material.purified_nether_quartz_crystal.name, 高纯下界石英水晶, 11

        appliedenergistics2:material, item.appliedenergistics2.material.calculation_processor_press.name, 运算压印模板, 13
        appliedenergistics2:material, item.appliedenergistics2.material.purified_certus_quartz_crystal.name, 高纯赛特斯石英水晶, 10

        appliedenergistics2:material, item.appliedenergistics2.material.engineering_processor_press.name, 工程压印模板, 14
        skyresources:alchemyitemcomponent, item.skyresources.alchemyItemComponent.alchDiamond.name, 赫耳墨斯钻石, 10

        appliedenergistics2:material, item.appliedenergistics2.material.logic_processor_press.name, 逻辑压印模板, 15
        skyresources:alchemyitemcomponent, item.skyresources.alchemyItemComponent.alchGoldIngot.name, 赫耳墨斯之金锭, 7

        appliedenergistics2:material, item.appliedenergistics2.material.name_press.name, 名称压印模板, 21
        命名牌

        appliedenergistics2:material, item.appliedenergistics2.material.silicon_press.name, 硅压印模板, 19
        硅


*/
    }
}