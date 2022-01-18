##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     余烬 余烬炉
##================================================
#modloaded embersconstruct
#modloaded higanbana
#priority 2000

import mods.Higanbana.EmbersConstruct.StampTableRecipe;

//研钵
recipes.remove(<roots:mortar>);
StampTableRecipe.addRecipe(<roots:mortar>, <contenttweaker:unburned_mortar>);

//研杵
recipes.remove(<roots:pestle>);
StampTableRecipe.addRecipe(<roots:pestle>, <contenttweaker:unburned_pestle>);
