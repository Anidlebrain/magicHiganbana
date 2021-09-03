##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     自然灵气 森林仪式
##================================================
#priority 2000
import mods.naturesaura.TreeRitual;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.treeRitualRecipe;
//mods.naturesaura.TreeRitual.addRecipe(String name, IIngredient saplingType, IItemStack output, int time, IIngredient[] items)

//精灵门核心
recipes.remove(<botania:alfheimportal>);
TreeRitual.addRecipe("botania/TreeRitual/alfheimportal", <randomthings:spectresapling>, <botania:alfheimportal>, 1200, 
    [<roots:wildwood_log>, <roots:wildwood_log>,  <roots:wildwood_log>, <roots:wildwood_log>, <roots:cloud_berry>, <roots:spirit_herb>, 
    <roots:dewgonia>, <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_supplication", selectedSlot: 0, lastCooldown: 0, cooldown: 0}})]);


//环境之眼
treeRitualRecipe(<naturesaura:eye>, [<botania:thirdeye>, <naturesaura:gold_leaf>, <naturesaura:gold_leaf>]);

//外部火焰加热器
treeRitualRecipe(<naturesaura:furnace_heater>, 
    [<botania:specialflower>.withTag({type: "exoflame"}), <botania:rune:5>, <minecraft:magma>, <naturesaura:token_fear>, <bloodmagic:lava_crystal>,
     <naturesaura:infused_stone>, <naturesaura:infused_stone>, <naturesaura:infused_iron>]);

//自然祭坛
treeRitualRecipe(<naturesaura:nature_altar>, 
    [<botania:rune:4>, <botania:rune:5>, <botania:rune:6>, <botania:rune:7>, <botania:pylon:1>,
     <botania:pylon:1>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]);

//恐怖徽章
treeRitualRecipe(<naturesaura:token_fear>, 
    [<minecraft:soul_sand>, <naturesaura:gold_leaf>, <xreliquary:mob_ingredient>, <xreliquary:mob_ingredient:6>,
     <xreliquary:mob_ingredient:5>, <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"})]);

//快乐徽章
treeRitualRecipe(<naturesaura:token_joy>, 
    [<minecraft:golden_apple>, <naturesaura:gold_leaf>, <pneumaticcraft:ingot_iron_compressed>, <ore:allFlowers>,
     <xreliquary:interdiction_torch>, <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"})]);

//遗憾徽章
treeRitualRecipe(<naturesaura:token_sorrow>, 
    [<ore:listAllmeatraw>, <naturesaura:gold_leaf>, <skyresources:cactusfruit>, <minecraft:ghast_tear>,
     <xreliquary:mob_ingredient:15>, <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"})]);

//愤怒徽章
treeRitualRecipe(<naturesaura:token_anger>, 
    [<minecraft:magma>, <naturesaura:gold_leaf>, <xreliquary:mob_ingredient:7>, <xreliquary:mob_ingredient:11>,
     <xreliquary:mob_ingredient:3>, <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"})]);

//呼唤之魂
recipes.remove(<naturesaura:calling_spirit>);
TreeRitual.addRecipe("naturesaura/TreeRitual/calling_spirit", <tconstruct:slime_sapling:1> | <tconstruct:slime_sapling> | <tconstruct:slime_sapling:2>
    , <naturesaura:calling_spirit> * 3, 1200, 
    [<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}), 
     <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
     <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}), 
     <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:other"}),
     <naturesaura:infused_iron>, <skyresources:alchemyitemcomponent:7>, <skyresources:alchemyitemcomponent:8>, <skyresources:alchemyitemcomponent:10>]);
