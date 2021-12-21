##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     自然灵气 森林仪式
##================================================
#modloaded higanbanautils
#priority 2000

import mods.naturesaura.TreeRitual;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.treeRitualRecipe;

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

//共鸣星杖
recipes.remove(<astralsorcery:itemwand>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
TreeRitual.addRecipe("astralsorcery/TreeRitual/itemwand", <roots:wildwood_sapling>, <astralsorcery:itemwand>, 1200, 
    [<contenttweaker:stars_gem>, <minecraft:ender_pearl>, <bloodmagic:monster_soul>, 
    <contenttweaker:stars_gem>, <botania:tornadorod>, <naturesaura:infused_stone>]);


//奥术缓存的宝石
TreeRitual.addRecipe("arcanearchives/TreeRitual/salvegleam", <roots:wildwood_sapling>, <arcanearchives:salvegleam>, 1200, 
    [<bloodmagic:component:4>, <naturesaura:token_grief>, <actuallyadditions:item_crystal_empowered>, <ore:dyePink>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <minecraft:golden_apple>, <minecraft:golden_carrot>]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/switchgleam", <roots:wildwood_sapling>, <arcanearchives:switchgleam>, 1200, 
    [<bloodmagic:component:17>, <naturesaura:token_grief>, <actuallyadditions:item_crystal_empowered:1>, <ore:dyePurple>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <ore:enderpearl>, <apotheosis:farmers_leash>]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/cleansegleam", <roots:wildwood_sapling>, <arcanearchives:cleansegleam>, 1200, 
    [<bloodmagic:component:16>, <naturesaura:token_euphoria>, <actuallyadditions:item_crystal_empowered:2>, <ore:dyeLightBlue>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <minecraft:milk_bucket>, <ore:listAllfishraw>]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/agegleam", <roots:wildwood_sapling>, <arcanearchives:agegleam>, 1200, 
    [<bloodmagic:component:5>, <naturesaura:token_euphoria>, <actuallyadditions:item_crystal_empowered:3>, <ore:dyeGreen>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <farmingforblockheads:fertilizer>, <actuallyadditions:item_fertilizer>]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/murdergleam", <roots:wildwood_sapling>, <arcanearchives:murdergleam>, 1200, 
    [<bloodmagic:component:11>, <naturesaura:token_terror>, <actuallyadditions:item_crystal_empowered:4>, <ore:dyeYellow>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <minecraft:blaze_rod>, <botania:elementiumsword>]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/slaughtergleam", <roots:wildwood_sapling>, <arcanearchives:slaughtergleam>, 1200, 
    [<bloodmagic:component:7>, <naturesaura:token_rage>, <actuallyadditions:item_crystal_empowered:5>, <ore:dyeRed>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <actuallyadditions:item_solidified_experience>, <forge:bucketfilled>.withTag({FluidName: "xpjuice", Amount: 1000})]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/munchstone", <roots:wildwood_sapling>, <arcanearchives:munchstone>, 1200, 
    [<bloodmagic:component:11>, <botania:rune:10>, <tconevo:material:2>, <ore:dyeBlack>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <ore:foodMinerstew>, <minecraft:speckled_melon>]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/orderstone", <roots:wildwood_sapling>, <arcanearchives:orderstone>, 1200, 
    [<bloodmagic:component:7>, <botanicadds:rune_energy>, <tconevo:material:2>, <ore:dyePink>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <botania:swapring>, <tp:repair_tablet>]);
/*
TreeRitual.addRecipe("arcanearchives/TreeRitual/mountaintear", <roots:wildwood_sapling>, <arcanearchives:mountaintear>, 1200, 
    [<bloodmagic:component:7>, <bloodmagic:sigil_lava>, <thermalfoundation:material:1024>, <ore:dyeOrange>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <ore:blockMagma>, <minecraft:magma_cream>]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/rivertear", <roots:wildwood_sapling>, <arcanearchives:rivertear>, 1200, 
    [<bloodmagic:component:7>, <bloodmagic:sigil_water>, <thermalfoundation:material:1025>, <ore:dyeBlue>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <ore:ice>, <skyresources:heavysnowball>]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/parchtear", <roots:wildwood_sapling>, <arcanearchives:parchtear>, 1200, 
    [<bloodmagic:component:7>, <bloodmagic:sigil_void>, <thermalfoundation:material:1026>, <ore:dyeBlack>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <minecraft:sponge>, <minecraft:bucket>]);
*/
TreeRitual.addRecipe("arcanearchives/TreeRitual/stormway", <roots:wildwood_sapling>, <arcanearchives:stormway>, 1200, 
    [<animus:component:4>, <contenttweaker:thunder_rune>, <animus:sigil_consumption>, <ore:dyeYellow>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <ore:ingotElectricium>, <botania:lightrelay>]);

TreeRitual.addRecipe("arcanearchives/TreeRitual/phoenixway", <roots:wildwood_sapling>, <arcanearchives:phoenixway>, 1200, 
    [<bloodmagic:component:30>, <botania:rune:1>, <animus:sigil_consumption>, <ore:dyeRed>,
    <ore:gemAquamarine>, <contenttweaker:basic_synthetic_gem>, <skyresources:alchemyitemcomponent:6>, <randomthings:blazeandsteel>]);
