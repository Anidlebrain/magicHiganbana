##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 星辉聚合
##================================================
#priority 2000
import mods.astralsorcery.StarlightInfusion;

/*
//mods.astralsorcery.StarlightInfusion.addInfusion(IItemStack input, IItemStack output, boolean consumeMultiple, float consumptionChance, int craftingTickTime);
mods.astralsorcery.StarlightInfusion.addInfusion(<astralsorcery:itemjournal>, <minecraft:bow>, false, 0.7, 200);
*/

//星辰炼金粉
StarlightInfusion.addInfusion(<skyresources:alchemyitemcomponent:5>, <contenttweaker:star_alchemy_powder>, true, 0.9, 200);

//高级炼金粉
StarlightInfusion.addInfusion(<astralsorcery:itemcraftingcomponent:2>, <skyresources:alchemyitemcomponent:4>, true, 0.1, 40);