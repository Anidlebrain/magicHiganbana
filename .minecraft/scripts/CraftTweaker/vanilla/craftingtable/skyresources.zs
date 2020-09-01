#priority 2000
import scripts.CraftTweaker.myFunction.RecipesBase.addRecopes as addRecopes;

//空岛资源 工作台合成物品 by Anidlebrain

//木制加热组件
addRecopes(<skyresources:heat>, "skyresources/add/heat",
	["AAA",
	 "ABA",
	 "AAA"],
	{ A : <tconstruct:pattern>,
	  B : <botania:specialflower>.withTag({type: "endoflame"})});
	  
//木制加热组件
addRecopes(<skyresources:combustionheater>, "skyresources/add/combustionheater",
	["ACA",
	 "ABA",
	 "ACA"],
	{ A : <ore:logWood>,
	  B : <roots:petals>,
	  C : <skyresources:heat>});

//end file by Anidlebrain