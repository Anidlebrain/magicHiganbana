##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     神秘时代 奥术工作台
##================================================
#priority 2000
import mods.thaumcraft.ArcaneWorkbench;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.addArcaneWorkbenchShapedRecipe;
/*
//mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(String name, String research, int vis, CTAspectStack[] aspectList, IItemStack output, IIngredient[][] input);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("test", "", 20, 
[<aspect:aer>, <aspect:ignis>, <aspect:terra>], <minecraft:diamond>, [[<minecraft:dirt>], [<minecraft:stick>], [<minecraft:grass>]]);


//mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe(String name, String research, int vis, CTAspectStack[] aspectList, IItemStack output, IIngredient[] input);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("tests", "", 20, 
[<aspect:aqua>, <aspect:ignis>, <aspect:terra>], <minecraft:diamond>, [<minecraft:sand>, <minecraft:stick>, <minecraft:grass>]);
*/

ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
addArcaneWorkbenchShapedRecipe(<thaumcraft:thaumometer>, "FIRSTSTEPS", 20, 
    [[null, <contenttweaker:crystal_gold>, null],
    [<contenttweaker:crystal_gold>, <astralsorcery:itemcoloredlens:6>, <contenttweaker:crystal_gold>],
    [null, <contenttweaker:crystal_gold>, null]],
    [Aer, Terra, Ignis, Aqua, Ordo, Perditio]);