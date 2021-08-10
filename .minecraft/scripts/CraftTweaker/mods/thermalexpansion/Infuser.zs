##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     科技复兴 能量灌注机
##================================================
#priority 2000
import mods.thermalexpansion.Infuser;

import scripts.AnildebrainUtils.ItemHelper.itemHelper;

//充能水晶
recipes.remove(VIBRANT_CRYSTAL);
Infuser.addRecipe(itemHelper.typeConversion(VIBRANT_CRYSTAL), itemHelper.typeConversion(PULSATING_CRYSTAL), 100000);


