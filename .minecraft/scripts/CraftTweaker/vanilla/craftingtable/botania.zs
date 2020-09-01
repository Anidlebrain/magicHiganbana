#priority 2000
import scripts.CraftTweaker.myFunction.RecipesBase.addRecopes as addRecopes;

//植物魔法 工作台合成物品 by Anidlebrain

//花药台
addRecopes(<botania:altar>, "botania/add/altar",
	["CBC",
	 " A ",
	 "AAA"],
	{ A : <forestry:ash_brick>,
	  B : <roots:petals>,
	  C : <prodigytech:ash_bricks>
	});


//杵和臼
addRecopes(<botania:pestleandmortar>, "botania/add/pestleandmortar",
	["CAC",
	 "CBC",
	 "CCC"],
	{ A : <roots:pestle>,
	  B : <roots:mortar>,
	  C : <ore:plankWood>
	});

//end file by Anidlebrain