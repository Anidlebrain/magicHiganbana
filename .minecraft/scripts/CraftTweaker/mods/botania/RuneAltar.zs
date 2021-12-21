##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 符文祭坛
##================================================
#modloaded higanbanautils
#priority 2000

import mods.botania.RuneAltar;

//水之符文
RuneAltar.removeRecipe(<botania:rune:0>);
RuneAltar.addRecipe(<botania:rune:0>, [<bloodmagic:sigil_water>, <minecraft:reeds>, <minecraft:fishing_rod>, <botania:manaresource:0>, <botania:manaresource:23>, <roots:dewgonia>], 5200);

//火之符文
RuneAltar.removeRecipe(<botania:rune:1>);
RuneAltar.addRecipe(<botania:rune:1>, [<bloodmagic:sigil_lava>, <minecraft:nether_wart>, <minecraft:nether_brick>, <botania:manaresource:0>, <botania:manaresource:23>, <roots:infernal_bulb>], 5200);

//地之符文
RuneAltar.removeRecipe(<botania:rune:2>);
RuneAltar.addRecipe(<botania:rune:2>, [<bloodmagic:sigil_void>, <minecraft:coal_block>, <minecraft:brown_mushroom>, <botania:manaresource:0>, <botania:manaresource:23>, <roots:stalicripe>], 5200);

//风之符文
RuneAltar.removeRecipe(<botania:rune:3>);
RuneAltar.addRecipe(<botania:rune:3>, [<bloodmagic:sigil_air>, <minecraft:feather>, <minecraft:carpet>, <botania:manaresource:0>, <botania:manaresource:23>, <roots:cloud_berry>], 5200);

//春之符文
RuneAltar.removeRecipe(<botania:rune:4>);
RuneAltar.addRecipe(<botania:rune:4>, [<naturesaura:birth_spirit>, <naturesaura:token_joy>, <minecraft:egg>, <botania:rune>, <botania:rune:1>], 15600);

//夏之符文
RuneAltar.removeRecipe(<botania:rune:5>);
RuneAltar.addRecipe(<botania:rune:5>, [<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}), <naturesaura:token_fear>, <minecraft:melon>, <botania:rune:2>, <botania:rune:3>], 15600);

//秋之符文
RuneAltar.removeRecipe(<botania:rune:6>);
RuneAltar.addRecipe(<botania:rune:6>, [<roots:wildewheet>, <naturesaura:token_anger>, <naturesaura:gold_leaf>, <botania:rune:3>, <botania:rune:1>], 15600);

//冬之符文
RuneAltar.removeRecipe(<botania:rune:7>);
RuneAltar.addRecipe(<botania:rune:7>, [<minecraft:snow>, <naturesaura:token_sorrow>, <randomthings:superlubricentice>, <botania:rune>, <botania:rune:2>], 15600);

//魔力符文
RuneAltar.removeRecipe(<botania:rune:8>);
RuneAltar.addRecipe(<botania:rune:8>, [<bloodmagic:sigil_divination>, <botania:manaresource:0>, <botania:manaresource:1>, <botania:manaresource:2>, <botania:manaresource:23>, <botania:quartz:1>, <botania:manaresource:22>], 52000);

//欲望符文
RuneAltar.removeRecipe(<botania:rune:9>);
RuneAltar.addRecipe(<botania:rune:9>, [<tconevo:metal:25>, <tconevo:metal:30>, <botania:rune:3>, <botania:rune:5>, <naturesaura:token_euphoria>], 23400);

//暴食符文
RuneAltar.removeRecipe(<botania:rune:10>);
RuneAltar.addRecipe(<botania:rune:10>, [<tconevo:metal:25>, <tconevo:metal:30>, <botania:rune:7>, <botania:rune:1>, <naturesaura:token_euphoria>], 23400);

//贪婪符文
RuneAltar.removeRecipe(<botania:rune:11>);
RuneAltar.addRecipe(<botania:rune:11>, [<tconevo:metal:25>, <tconevo:metal:30>, <botania:rune:4>, <botania:rune>, <naturesaura:token_terror>], 23400);

//懒惰符文
RuneAltar.removeRecipe(<botania:rune:12>);
RuneAltar.addRecipe(<botania:rune:12>, [<tconevo:metal:25>, <tconevo:metal:30>, <botania:rune:3>, <botania:rune:6>, <naturesaura:token_euphoria>], 23400);

//暴怒符文
RuneAltar.removeRecipe(<botania:rune:13>);
RuneAltar.addRecipe(<botania:rune:13>, [<tconevo:metal:25>, <tconevo:metal:30>, <botania:rune:3>, <botania:rune:6>, <naturesaura:token_euphoria>], 23400);

//嫉妒符文
RuneAltar.removeRecipe(<botania:rune:14>);
RuneAltar.addRecipe(<botania:rune:14>, [<tconevo:metal:25>, <tconevo:metal:30>, <botania:rune>, <botania:rune:7>, <naturesaura:token_grief>], 23400);

//傲慢符文
RuneAltar.removeRecipe(<botania:rune:15>);
RuneAltar.addRecipe(<botania:rune:15>, [<tconevo:metal:25>, <tconevo:metal:30>, <botania:rune:1>, <botania:rune:5>, <naturesaura:token_rage>], 23400);

//雷之符文
RuneAltar.addRecipe(<contenttweaker:thunder_rune>, [<animus:sigil_storm>, <ore:ingotElectricium>, <xreliquary:mob_ingredient:8>, <botania:manaresource:0>, <botania:manaresource:23>, <roots:spell_dust>.withTag({spell_storage: {s: "roots:spell_storm_cloud"}})], 5200);

//魔力立方
//RuneAltar.removeRecipe(<botanicadds:mana_tesseract>);