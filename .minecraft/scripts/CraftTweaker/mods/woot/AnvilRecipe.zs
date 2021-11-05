##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     生物工厂 地狱铁砧 
##================================================
#priority 2000
import mods.magichiganbana.Woot.AnvilRecipe;

/*
AnvilRecipe.removeAll();
AnvilRecipe.removeRecipe(IItemStack output)
AnvilRecipe.addRecipe(IItemStack output, IItemStack base, boolean preserveBase, IItemStack[] inputs)
*/

//地狱铁粉
AnvilRecipe.removeRecipe(<woot:stygianirondust>);
AnvilRecipe.addRecipe(<woot:stygianirondust>, <woot:die>, false, [<woot:stygianironingot>]);
AnvilRecipe.addRecipe(<woot:stygianirondust> * 3, <woot:die>, false, [<prodigytech:inferno_crystal>, <extendedcrafting:material>, <enderio:item_material:72>]);

//灵魂粉
recipes.remove(<woot:soulsanddust>);
AnvilRecipe.removeRecipe(<woot:soulsanddust>);
AnvilRecipe.addRecipe(<woot:soulsanddust>, <woot:die>, false, [<roots:spirit_herb>]);

