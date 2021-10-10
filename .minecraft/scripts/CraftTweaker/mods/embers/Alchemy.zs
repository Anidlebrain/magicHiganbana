
##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     余烬 炼金术
##================================================

/*
mods.embers.Alchemy.add(IItemStack output, IIngredient[] inputs, int[][string] aspectRange);
mods.embers.Alchemy.remove(IItemStack output);
mods.embers.Alchemy.addAspect(string name, IItemStack item);
Alchemy.add(<botania:rune:15>, [<embers:ember_cluster>,<botania:rune:1>,<botania:rune:5>,<naturesaura:token_rage>,<contenttweaker:blood_iron>], {"dawnstone":20 to 23,"iron":20 to 23});
*/

import mods.embers.Alchemy;
//莱泽尔石元素之象征
mods.embers.Alchemy.addAspect("lesselstone", <contenttweaker:aspectus_lesselstone>);

//艾洛蒂水晶
Alchemy.add(<environmentaltech:erodium_crystal>*6, [<bloodmagic:slate:1>,<bloodmagic:slate:1>,<ore:gemEmerald>,<ore:gemRedGarnet>,<botania:manaresource:8>], {"silver":8 to 16,"iron":10 to 16,"lesselstone":12 to 18});