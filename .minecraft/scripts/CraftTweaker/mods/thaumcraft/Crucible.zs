##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     神秘时代 坩埚
##================================================
#priority 2000
#norun
import mods.thaumcraft.Crucible;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.addCrucibleRecipe;
/*
//mods.thaumcraft.Crucible.registerRecipe(String name, String researchKey, IItemStack output, IIngredient input, CTAspectStack[] aspects);
mods.thaumcraft.Crucible.registerRecipe("crucibleTest", "", <minecraft:diamond>, <minecraft:stick>, [<aspect:aer>]);
*/

//黄色闪耀之光
Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
addCrucibleRecipe(<thaumcraft:nitor_yellow>, "FIRSTSTEPS", <skyresources:alchemyitemcomponent:4>, [Perditio * 10, Ignis * 10, Lux * 10]);