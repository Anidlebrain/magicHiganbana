##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     更多实用设备 工作台合成  ##
##################################################
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass Extrautils2Recipes{

	zenConstructor(){

	}

	function init() {
		recipesInit();
		itemRemove();
	}

	function recipesInit(){
        
        //垃圾桶
		recipes.remove(<extrautils2:trashcan>);
		recipesUtils.addRecipe(<extrautils2:trashcan>,
			["AAA",
			 "ACA",
			 "AAA"],
			{ A : <ore:cobblestone>,
			  C : <minecraft:hopper>}
		);

        //流体垃圾桶
		recipes.remove(<extrautils2:trashcanfluid>);
		recipesUtils.addRecipe(<extrautils2:trashcanfluid>,
			["AAA",
			 "ACA",
			 "AAA"],
			{ A : <ore:cobblestone>,
			  C : <flopper:flopper>}
		);
        
        //能量垃圾桶
		recipes.remove(<extrautils2:trashcanenergy>);
		recipesUtils.addRecipe(<extrautils2:trashcanenergy>,
			["AAA",
			 "ACA",
			 "AAA"],
			{ A : <ore:cobblestone>,
			  C : <techreborn:energycrystal>}
		);

		//消音器
		recipes.remove(<extrautils2:soundmuffler>);
		recipesUtils.addRecipe(<extrautils2:soundmuffler>,
			["AB ",
			 "   ",
			 "   "],
			{ A : <randomthings:sounddampener>,
			  B : <minecraft:noteblock>}
		);

		//消音器
		recipes.remove(<extrautils2:redstoneclock>);
		recipesUtils.addRecipe(<extrautils2:redstoneclock>,
			["ABA",
			 "BCA",
			 "ABA"],
			{ A : <randomthings:sounddampener>,
			  B : <minecraft:noteblock>}
		);
		
    }

	function itemRemove()
	{
		//红石齿轮
		recipes.remove(<extrautils2:ingredients:1>);

		//月之石
		recipes.removeByRecipeName("extrautils2:moon_stone");
	}
}