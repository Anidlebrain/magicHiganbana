##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     模块化机械 工作台合成     ##
##################################################

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass ModularMachineryRecipes{
	zenConstructor() {
		
	}

	function init() {
		recipesInit();
	}

	function recipesInit() {

		//魔力输入
		recipesUtils.addRecipe(<gugu-utils:sparkmanahatch>,
			["ABA",
			 "BCB",
			 "ABA"],
			{ A : <modularmachinery : itemmodularium>,
			  B : <botania : livingrock>,
			  C : <botania : spreader : 1>});

		//魔力输出
		recipesUtils.addRecipe(<gugu-utils:sparkmanahatch:1>,
			["ABA",
			 "BCB",
			 "ABA"],
			{ B : <modularmachinery : itemmodularium>,
			  A : <botania : livingrock>,
			  C : <botania : spreader : 1>});

		recipesUtils.addShapelessCycle(<gugu-utils:sparkmanahatch>, <gugu-utils:sparkmanahatch:1>);

		//小型物品输入
		recipesUtils.addRecipe(<modularmachinery:blockinputbus>,
			[" A ",
			 " B ",
			 " C "],
			{ A : <tconstruct : wooden_hopper>,
			  B : <modularmachinery : blockcasing>,
			  C : <minecraft : chest>});

		//小型物品输出
		recipesUtils.addRecipe(<modularmachinery:blockoutputbus>,
			[" A ",
			 " B ",
			 " C "],
			{ B : <tconstruct : wooden_hopper>,
			  A : <modularmachinery : blockcasing>,
			  C : <minecraft : chest>});

		recipesUtils.addShapelessCycle(<modularmachinery:blockoutputbus>, <modularmachinery:blockinputbus>);

		//小型物品输入
		recipesUtils.addRecipe(<modularmachinery:blockinputbus:1>,
			["CAC",
			 "CBC",
			 "DCD"],
			{ A : <tconstruct : wooden_hopper>,
			  B : <modularmachinery : blockinputbus>,
			  C : <modularmachinery : itemmodularium>,
			  D : <minecraft : chest>});

		//小型物品输出
		recipesUtils.addRecipe(<modularmachinery:blockoutputbus:1>,
			["DCD",
			 "CBC",
			 "CAC"],
			{ A : <tconstruct : wooden_hopper>,
			  B : <modularmachinery : blockoutputbus>,
			  C : <modularmachinery : itemmodularium>,
			  D : <minecraft : chest>});

		recipesUtils.addShapelessCycle(<modularmachinery:blockoutputbus:1>, <modularmachinery:blockinputbus:1>);

		//强化机械外壳
		recipes.remove(<modularmachinery:blockcasing:4>);
		recipesUtils.addRecipe(<modularmachinery:blockcasing:4> * 4,
			["ABA",
			 "BAB",
			 "ABA"],
			{ A : <enderio:block_reinforced_obsidian>,
			  B : <modularmachinery:blockcasing>});

		//中型物品输入
		recipesUtils.addRecipe(<modularmachinery:blockinputbus:2>,
			["CAC",
			 "CBC",
			 "DCD"],
			{ A : <tconstruct : wooden_hopper>,
			  B : <modularmachinery : blockinputbus>,
			  C : <modularmachinery : itemmodularium>,
			  D : <minecraft : chest>});

		//中型物品输出
		recipesUtils.addRecipe(<modularmachinery:blockoutputbus:2>,
			["DCD",
			 "CBC",
			 "CAC"],
			{ A : <tconstruct : wooden_hopper>,
			  B : <modularmachinery : blockoutputbus>,
			  C : <modularmachinery : itemmodularium>,
			  D : <minecraft : chest>});

		recipesUtils.addShapelessCycle(<modularmachinery:blockoutputbus:2>, <modularmachinery:blockinputbus:2>);
		
	}
}