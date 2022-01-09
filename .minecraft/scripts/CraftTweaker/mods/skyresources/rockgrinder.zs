##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     空岛资源 碎石机
##================================================
#modloaded higanbana
#priority 2000

import mods.skyresources.rockgrinder;

//mods.skyresources.rockgrinder.addRecipe(IItemStack output, IItemStack input);
//mods.skyresources.rockgrinder.addRecipe(IItemStack output, IItemStack input, float chance);

//末地石粉
rockgrinder.addRecipe(<techreborn:dust:21>, <minecraft:end_stone>, 0.05);

//焦黑石英
rockgrinder.removeRecipe(<skyresources:dirtygem:42>);

//海蓝宝石
rockgrinder.removeRecipe(<skyresources:dirtygem:17>);
