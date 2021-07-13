##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     血魔法 工作台合成        ##
##################################################
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;


zenClass BloodmagicRecipes{

	zenConstructor(){

	}
/*
	var orb = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}).reuse() |
			  <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}).reuse() |
			  <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).reuse() |
			  <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}).reuse() |
			  <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}).reuse();
*/

	function init() {
		recipesInit();
	}

	function recipesInit(){
        //狱火熔炉
		recipes.remove(<bloodmagic:soul_forge>);
		recipesUtils.addRecipe(<bloodmagic:soul_forge>,
			["CBC",
			 "ADA",
			 "AEA"],
			{ A : <ore:bricksStone>,
			  B : <skyresources:alchemyitemcomponent:7>,
              C : <bloodmagic:monster_soul>,
              D : <minecraft:furnace>,
			  E : <ore:blockIron>}
		);

        //血之祭坛
        recipes.remove(<bloodmagic:altar>);
		recipesUtils.addRecipe(<bloodmagic:altar>,
			["A A",
			 "ADA",
			 "BCB"],
			{ A : <ore:bricksStone>,
			  B : <skyresources:alchemyitemcomponent:7>,
              C : <bloodmagic:monster_soul>,
              D : <contenttweaker:alchemical_frame>}
		);
        /*
        //符文石
        recipes.remove(<bloodmagic:blood_rune>);
		recipesUtils.addRecipe(<bloodmagic:blood_rune>,
			["AAA",
			 "BCB",
			 "AAA"],
			{ A : <roots:runestone>,
			  B : <bloodmagic:slate>,
              C : orb}
		);
		*/
        
    }
}