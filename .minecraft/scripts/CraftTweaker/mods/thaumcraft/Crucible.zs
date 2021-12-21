##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     神秘时代 坩埚
##================================================
#modloaded higanbanautils
#priority 2000

import mods.thaumcraft.Crucible;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.addCrucibleRecipe;
/*
//mods.thaumcraft.Crucible.registerRecipe(String name, String researchKey, IItemStack output, IIngredient input, CTAspectStack[] aspects);
mods.thaumcraft.Crucible.registerRecipe("crucibleTest", "", <minecraft:diamond>, <minecraft:stick>, [<aspect:aer>]);
*/


//黄色闪耀之光
Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
addCrucibleRecipe(<thaumcraft:nitor_yellow>, "FIRSTSTEPS", <skyresources:alchemyitemcomponent:4>, [Perditio * 10, Ignis * 10, Lux * 10]);

//炼金黄铜锭
Crucible.removeRecipe(<thaumcraft:ingot:2>);
addCrucibleRecipe(<thaumcraft:ingot:2>, "METALLURGY", <ore:ingotVibranium>, [Alkimia * 3, Fabrico * 8, Praemunio * 2]);

//神秘锭
Crucible.removeRecipe(<thaumcraft:ingot>);
addCrucibleRecipe(<thaumcraft:ingot>, "METALLURGY", <ore:ingotMystic>, [Thunder * 10, Praecantatio * 5, Terra * 5]);