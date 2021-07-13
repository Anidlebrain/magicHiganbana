##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     科技复兴 工作台合成      ##
##################################################

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

zenClass TechrebornRecipes {
    zenConstructor() {

    }

	function init() {
        recipesInit();
        itemRemove();
    }
	
    function recipesInit() {

        //铜制导线
        recipes.remove(<techreborn:cable>);
        recipesUtils.addShapeless(<techreborn:cable:0>,[<immersiveengineering:metal_decoration0:0>]);

        //锡制导线
        recipes.remove(<techreborn:cable:1>);
        recipesUtils.addShapeless(<techreborn:cable:1>,[<contenttweaker:tin_wire>]);

        //金制导线
        recipes.remove(<techreborn:cable:2>);
		recipesUtils.addShapeless(<techreborn:cable:2>,[<immersiveengineering:metal_decoration0:1>]);

        //高压导线
        recipes.remove(<techreborn:cable:3>);
		recipesUtils.addShapeless(<techreborn:cable:3>,[<immersiveengineering:metal_decoration0:2>]);

        //电路板
        recipes.remove(<techreborn:part:29>);
        recipesUtils.addRecipe(<techreborn:part:29>,
			["AAA",
			 "CBC",
			 "AAA"],
			{ A : <techreborn:cable:5>,
			  B : <techreborn:plates:35>,
              C : <prodigytech:circuit_refined>}
		);

        //高级电路板
        recipes.remove(<techreborn:part:30>);
        recipesUtils.addRecipe(<techreborn:part:30>,
			["ADA",
			 "CBC",
			 "ADA"],
			{ A : <ore:plateRedstone>,
			  B : <techreborn:part:29>,
              C : <ore:plateelectrum>,
              D : <techreborn:cable:5>}
		);

        //控制电路加工
        recipes.remove(<techreborn:assembling_machine>);
        recipesUtils.addRecipe(<techreborn:assembling_machine>,
			["ADA",
			 "CBC",
			 "ACA"],
			{ A : <techreborn:part:30>,
			  B : <techreborn:machine_casing:1>,
              C : <techreborn:plates:17>,
              D : <minecraft:piston>}
		);

        //铱强化石
        recipes.remove(<techreborn:storage2:2>);
        recipesUtils.addRecipe(<techreborn:storage2:2>,
			["ACA",
			 "CBC",
			 "ACA"],
			{ A : <techreborn:plates:38>,
			  B : <naturesaura:infused_stone>,
              C : <techreborn:plates:2>}
		);

        //强化铱钨钢混合块
        recipes.remove(<techreborn:storage2:1>);
        recipesUtils.addRecipe(<techreborn:storage2:1> * 4,
			["ACA",
			 "CAC",
			 "ACA"],
			{ A : <techreborn:ingot:17>,
              C : <techreborn:storage2:2>}
		);
        
    }

    function itemRemove() {
        //导线
        recipes.removeByRecipeName("techreborn:cable_6");
        recipes.removeByRecipeName("techreborn:cable_7");
        recipes.removeByRecipeName("techreborn:cable_9");
        recipes.removeByRecipeName("techreborn:cable_11");
        recipes.removeByRecipeName("techreborn:cable");

        //能量水晶
        recipes.removeByRecipeName("techreborn:energycrystal");
        
        //线缆加工机
        itemHelper.removeItem(<techreborn:wire_mill>);

        //合金炉
        itemHelper.removeItem(<techreborn:iron_alloy_furnace>);
        itemHelper.removeItem(<techreborn:alloy_smelter>);

    }
}
