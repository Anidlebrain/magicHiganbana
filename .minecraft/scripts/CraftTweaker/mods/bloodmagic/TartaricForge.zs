##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     血魔法 炼金术桌
##================================================

#priority 2000
import mods.bloodmagic.TartaricForge;

//灌注石
recipes.remove(<skyresources:sandstoneinfusionstone>);
TartaricForge.addRecipe(<skyresources:sandstoneinfusionstone>, [<minecraft:sandstone>, <skyresources:alchemyitemcomponent:9>], 100.0, 300.0);
recipes.remove(<skyresources:redsandstoneinfusionstone>);
TartaricForge.addRecipe(<skyresources:redsandstoneinfusionstone>, [<minecraft:red_sandstone>, <skyresources:alchemyitemcomponent:9>], 100.0, 300.0);
recipes.remove(<skyresources:alchemicalinfusionstone>);
TartaricForge.addRecipe(<skyresources:alchemicalinfusionstone>, [<skyresources:alchemyitemcomponent:10>, <skyresources:alchemyitemcomponent:10>, <skyresources:alchemyitemcomponent:9>], 200.0, 600.0);