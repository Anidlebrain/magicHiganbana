##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     生物工厂 地狱铁砧 
##================================================
#modloaded higanbanautils
#priority 2000

import mods.Higanbana.Woot.AnvilRecipe;

/*
AnvilRecipe.removeAll();
AnvilRecipe.removeRecipe(IItemStack output)
AnvilRecipe.addRecipe(IItemStack output, IItemStack base, boolean preserveBase, IItemStack[] inputs)
*/

//地狱铁粉
AnvilRecipe.removeRecipe(<woot:stygianirondust>);
AnvilRecipe.addRecipe(<woot:stygianirondust>, <woot:die>, false, [<woot:stygianironingot>]);


//灵魂粉
recipes.remove(<woot:soulsanddust>);
AnvilRecipe.removeRecipe(<woot:soulsanddust>);
AnvilRecipe.addRecipe(<woot:soulsanddust>, <woot:die>, false, [<roots:spirit_herb>]);

