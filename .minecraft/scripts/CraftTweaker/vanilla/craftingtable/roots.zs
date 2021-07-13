##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     根源魔法 工作台合成      ##
##################################################

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass RootsRecipes {
	zenConstructor() {

	}

	function init() {
        recipesInit();
    }
	
	function recipesInit() {

		//研钵
		recipes.remove(<roots:mortar>);
		recipesUtils.addRecipe(<roots:mortar>,
			["A A",
			 "A A",
			 " C "],
			{ C : <forestry:ash_brick>,
			  B : <minecraft:coal:1>,
			  A : <prodigytech:ash_bricks> });

		//研杵
		recipes.remove(<roots:pestle>);
		recipesUtils.addRecipe(<roots:pestle>,
			["  C",
			 "AA ",
			 "AA "],
			{ C : <forestry:ash_brick>,
			  A : <prodigytech:ash_bricks> });

		//柴堆
		recipes.remove(<roots:bonfire>);
		recipesUtils.addRecipe(<roots:bonfire>,
			[" C ",
			 "CBC",
			 "ADA"],
			{ C : <botania:livingwood>,
			  B : <ore:powderMana>,
			  D : <roots:terra_moss>,
			  A : <minecraft:stonebrick:2> });
		
		//柴堆
		recipes.remove(<roots:imbuer>);
		recipesUtils.addRecipe(<roots:imbuer>,
			["ABA",
			 "BCB",
			 "ABA"],
			{ C : <ore:bricksStone>,
			  B : <ore:wildroot>,
			  A : <ore:stickWood>});
	}
}



//end file by Anidlebrain