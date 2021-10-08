##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     原版 熔炉
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
//红砖
furnace.remove(<minecraft:brick>);
furnace.addRecipe(<minecraft:brick>, <tconstruct:materials:2>, 1.0);

//木炭
furnace.remove(<minecraft:coal:1>);

//陶瓦
furnace.remove(<minecraft:hardened_clay>);
furnace.addRecipe(<minecraft:hardened_clay>, <tconstruct:dried_clay>, 1.0);

//精炼铁锭
furnace.remove(<techreborn:ingot:19>);
furnace.addRecipe(<techreborn:ingot:19>, <pneumaticcraft:ingot_iron_compressed>, 1.0);

//铝锭
recipesUtils.removeOreFurnace(<ore:ingotAluminum>);

//铱锭
recipesUtils.removeOreFurnace(<ore:ingotIridium>);

//培根
furnace.remove(<tp:cooked_bacon>);
furnace.addRecipe(<tp:cooked_bacon>, <actuallyadditions:item_food:20>, 1.0);

//方镁矾砖
furnace.remove(<embers:brick_caminite>);
