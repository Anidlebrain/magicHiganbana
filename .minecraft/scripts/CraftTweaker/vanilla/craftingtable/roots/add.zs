#priority 2000
import scripts.CraftTweaker.myFunction.RecipesBase.addRecopes as addRecopes;

//根源魔法 工作台合成物品 by Anidlebrain

//研钵
addRecopes(<roots:mortar>, "roots/add/mortar",
	["A A",
	 "ABA",
	 " C "],
	{ C : <forestry:ash_brick>,
	  B : <minecraft:coal:1>,
	  A : <prodigytech:ash_bricks> });

//研钵
addRecopes(<roots:pestle>, "roots/add/pestle",
	["  C",
	 "AA ",
	 "AA "],
	{ C : <forestry:ash_brick>,
	  A : <prodigytech:ash_bricks> });

//end file by Anidlebrain