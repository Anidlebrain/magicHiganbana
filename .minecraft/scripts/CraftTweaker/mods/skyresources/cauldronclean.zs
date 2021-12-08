##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     空岛资源 坩埚洗矿
##================================================
#priority 2000
import mods.skyresources.cauldronclean;

//mods.skyresources.cauldronclean.addRecipe(IItemStack output, IItemStack input);
//mods.skyresources.cauldronclean.addRecipe(IItemStack output, IItemStack input, float chance);

//cauldronclean.removeRecipe(<>);

//锂
cauldronclean.removeRecipe(<mekanism:otherdust:4>);
//海蓝宝石
cauldronclean.removeRecipe(<astralsorcery:itemcraftingcomponent>);
//焦黑石英
cauldronclean.removeRecipe(<actuallyadditions:item_misc>);


cauldronclean.addRecipe(<taiga:palladium_dust>, <techreborn:dust:21>, 0.00818);
//cauldronclean.addRecipe(<taiga:palladium_dust>, <techreborn:dust:21>, 0.00635);

cauldronclean.addRecipe(<taiga:prometheum_dust>, <skyresources:techitemcomponent:3>, 0.00768);
cauldronclean.addRecipe(<taiga:jauxum_dust>, <skyresources:techitemcomponent:3>, 0.00837);


