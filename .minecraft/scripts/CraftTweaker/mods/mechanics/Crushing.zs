#############################################################
##          [Author]:   Anidlebrain                        ##
##          [License]:  CC BY-NC-SA 4.0                    ##
##          [Info]:     力学合成 重物碾压                   ##
##          [explain]:  后面的double数组之和必须为1.00       ##
#############################################################

#priority 2000
import mods.mechanics.addCrushingBlockRecipe;
import mods.mechanics.removeCrushingBlockRecipe;

addCrushingBlockRecipe(<item:minecraft:ice>, 
    [<item:forestry:crafting_material:5>, <item:forestry:crafting_material:5> * 2, <item:forestry:crafting_material:5> * 3, <item:forestry:crafting_material:5> * 4],
    [0.28, 0.47, 0.16, 0.09]);

