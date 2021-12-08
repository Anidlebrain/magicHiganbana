##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 泰拉凝聚板
##================================================

#priority 2000
import mods.botaniatweaks.Agglomeration;

Agglomeration.removeDefaultRecipe();

//传承之石
Agglomeration.addRecipe(<contenttweaker:inheritance_stone>,
    [<skyresources:itemhealthgem>],
    1000000, 0x00FA9A, 0xFF4500,
    <xreliquary:altar>, <randomthings:naturecore>, <bloodmagic:blood_rune:3>,
    <minecraft:obsidian>, <skyresources:petrifiedwood>, <roots:runestone>);

//泰拉钢
Agglomeration.addRecipe(<botania:manaresource:4>,
    [<botania:manaresource:0>, <botania:manaresource:1>, <botania:manaresource:2>],
    500000, 0x0000FF, 0x00FF00,
    <botania:livingrock>, <tconstruct:metal>, <botania:livingrock>,
    null, null, null);

//地狱书架
recipes.remove(<apotheosis:hellshelf>);
Agglomeration.addRecipe(<item:randomthings:ingredient:7>,
    [<bloodmagic:soul_gem:2>, <botania:firerod>],
    50000, 0x993300, 0xFFCC00,
    <minecraft:bookshelf>, <minecraft:soul_sand>, <minecraft:nether_brick>,
    <apotheosis:hellshelf>, <minecraft:sand>, <minecraft:stone>);

//地狱铁快
Agglomeration.addRecipe(<woot:stygianiron>,
    [<pneumaticcraft:compressed_iron_block>, <prodigytech:inferno_crystal>],
    50000, 0x993300, 0xFFCC00,
    <minecraft:nether_brick>, <minecraft:soul_sand>, <minecraft:nether_brick>,
    null, null, null);

//地狱铁锭
Agglomeration.addRecipe(<woot:stygianironingot>,
    [<pneumaticcraft:ingot_iron_compressed>, <prodigytech:inferno_crystal>],
    5000, 0x993300, 0xFFCC00,
    <minecraft:nether_brick>, <minecraft:soul_sand>, <minecraft:nether_brick>,
    null, null, null);

//元素土
mods.roots.Fey.removeRecipe(<roots:elemental_soil>);
Agglomeration.addRecipe(<bloodmagic:sigil_elemental_affinity>,
    [<botania:rune:0>, <botania:rune:1>, <botania:rune:2>, <botania:rune:3>],
    6471, 0x993300, 0xFFCC00,
    <minecraft:dirt>, <minecraft:gravel>, <roots:chiseled_runed_obsidian>,
    <roots:elemental_soil>, <minecraft:sand>, <roots:chiseled_runestone>);