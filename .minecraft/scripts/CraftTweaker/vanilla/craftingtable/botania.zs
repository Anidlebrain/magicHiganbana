##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     植物魔法 工作台合成      ##
##################################################
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass BotaniaRecipes{

	zenConstructor(){

	}

	function init() {
		recipesInit();
	}

	function recipesInit(){
		//花药台
		recipes.remove(<botania:altar>);
		recipesUtils.addRecipe(<botania:altar>,
			["CBC",
			 " A ",
			 "AAA"],
			{ A : <forestry:ash_brick>,
			  B : <roots:petals>,
			  C : <prodigytech:ash_bricks>}
		);


		//杵和臼
		recipes.remove(<botania:pestleandmortar>);
		recipesUtils.addRecipe(<botania:pestleandmortar>,
			["CAC",
			 "CBC",
			 "CCC"],
			{ A : <roots:pestle>,
			  B : <roots:mortar>,
			  C : <ore:plankWood>}
		);

		//烈焰网 => 烈焰棒
		recipes.removeByRecipeName("botania:conversions/blazeblock_deconstruct");

		//魔力池
		recipes.removeByRecipeName("botania:pool_0");

		//稀释魔力池
		recipes.removeByRecipeName("botania:pool_2");
		recipesUtils.addRecipe(<botania:pool:2>,
			["   ",
			 "C C",
			 "CCC"],
			{ C : <botania:livingrock>}
		);

		//魔力发射器
		recipes.remove(<botania:spreader>);
		recipesUtils.addRecipe(<botania:spreader>,
			["CCC",
			 "ABA",
			 "CCC"],
			{ C : <botania:livingrock>,
			  A : <randomthings:runedust:12>,
			  B : <minecraft:dispenser>}
		);

		//炼金催化器
		recipes.remove(<botania:alchemycatalyst>);
		recipesUtils.addRecipe(<botania:alchemycatalyst>,
			["CDC",
			 "ABA",
			 "CDC"],
			{ C : <ore:livingrock>,
			  A : <minecraft:brewing_stand>,
			  B : <botania:manaresource:23>,
			  D : <contenttweaker:alchemical_plate>}
		);

		//符文祭坛
		recipes.remove(<botania:runealtar>);
		recipesUtils.addRecipe(<botania:runealtar>,
			["   ",
			 "CCC",
			 "CDC"],
			{ C : <botania:livingrock>,
			  D : <bloodmagic:sigil_elemental_affinity>}
		);

		//泰拉凝聚板
		recipes.remove(<botania:terraplate>);
		recipesUtils.addRecipe(<botania:terraplate>,
			["AAA",
			 "BCD",
			 "EFG"],
			{ A : <ore:blockCobalt>,
			  B : <botania:rune>,
			  C : <ore:ingotManasteel>,
			  D : <botania:rune:1>,
			  E : <botania:rune:8>,
			  F : <botania:rune:2>,
			  G : <botania:rune:3>}
		);

		//魔力透镜
		recipes.remove(<botania:lens>);
		recipesUtils.addRecipe(<botania:lens>,
			[" A ",
			 "ABA",
			 " A "],
			{ A : <botania:manaresource>,
			  B : <botania:managlasspane>}
		);

		//随想之茧
		recipes.remove(<botania:lens>);
		recipesUtils.addRecipe(<botania:lens>,
			["AAA",
			 "CBC",
			 "ADA"],
			{ A : <randomthings:ingredient:12>,
			  B : <botania:manaresource:22>,
			  C : <bloodmagic:blood_orb>,
			  D : <botania:manaresource:8>}
		);
	}
}

