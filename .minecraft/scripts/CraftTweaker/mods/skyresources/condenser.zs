##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     空岛资源 冷凝器          ##
##################################################

#priority 2000
import mods.skyresources.condenser;
import mods.skyresources.fusion;


//熔岩石
fusion.removeRecipe(<skyresources:magmafiedstone>);
condenser.addRecipe(<skyresources:magmafiedstone>, 2400, <minecraft:magma>, <minecraft:ice>);

//铱锭
condenser.removeRecipe(<thermalfoundation:material:135>);

//铝锭
condenser.removeRecipe(<immersiveengineering:metal:1>);

