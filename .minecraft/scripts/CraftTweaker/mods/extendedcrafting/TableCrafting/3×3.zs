##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     合成拓展 3×3 合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

//公式处理器
recipes.remove(<thermalexpansion:device:10>);
mods.extendedcrafting.TableCrafting.addShaped(0, <thermalexpansion:device:10>, [
	[<ore:ingotLead>, <appliedenergistics2:material:24>, <ore:ingotLead>], 
	[<appliedenergistics2:material:22>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:material:23>], 
	[<ore:ingotLead>, <threng:material:6>, <ore:ingotLead>]
]);