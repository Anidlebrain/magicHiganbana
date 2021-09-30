##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     热力膨胀 能量灌注机
##================================================
#priority 2000
import mods.thermalexpansion.Infuser;

import scripts.AnildebrainUtils.ItemHelper.itemHelper;

//充能水晶
recipes.remove(VIBRANT_CRYSTAL);
Infuser.addRecipe(itemHelper.typeConversion(VIBRANT_CRYSTAL), itemHelper.typeConversion(PULSATING_CRYSTAL), 100000);


