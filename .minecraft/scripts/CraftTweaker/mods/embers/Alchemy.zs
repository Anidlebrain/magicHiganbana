
##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     余烬 炼金术
##================================================
#modloaded higanbana
#priority 2000

/*
mods.embers.Alchemy.add(IItemStack output, IIngredient[] inputs, int[][string] aspectRange);
mods.embers.Alchemy.remove(IItemStack output);
mods.embers.Alchemy.addAspect(string name, IItemStack item);
Alchemy.add(<botania:rune:15>, [<embers:ember_cluster>,<botania:rune:1>,<botania:rune:5>,<naturesaura:token_rage>,<contenttweaker:blood_iron>], {"dawnstone":20 to 23,"iron":20 to 23});
*/

import mods.embers.Alchemy;

//风元素之象征
Alchemy.addAspect("aer", <contenttweaker:aspectus_aer>);
//火元素之象征
Alchemy.addAspect("ignis", <contenttweaker:aspectus_ignis>);
//水元素之象征
Alchemy.addAspect("aqua", <contenttweaker:aspectus_aqua>);
//地元素之象征
Alchemy.addAspect("terra", <contenttweaker:aspectus_terra>);
//秩序元素之象征
Alchemy.addAspect("ordo", <contenttweaker:aspectus_ordo>);
//混沌元素之象征
Alchemy.addAspect("perditio", <contenttweaker:aspectus_perditio>);

//究极炼金粉
Alchemy.add(<skyresources:alchemyitemcomponent:5>,
    [<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemperkgem:1>, <skyresources:baseitemcomponent:3>, <skyresources:alchemyitemcomponent:4>, <skyresources:baseitemcomponent:7>],
    {"aer":32 to 64, "ignis":16 to 32, "aqua":8 to 16, "terra":24 to 48, "aqua":100 to 120});

//究极炼金粉
Alchemy.add(<skyresources:alchemyitemcomponent:5>,
    [<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemperkgem:2>, <skyresources:baseitemcomponent:3>, <skyresources:alchemyitemcomponent:4>, <skyresources:baseitemcomponent:7>],
    {"aer":32 to 64, "ignis":16 to 32, "aqua":8 to 16, "terra":24 to 48, "perditio":100 to 120});
