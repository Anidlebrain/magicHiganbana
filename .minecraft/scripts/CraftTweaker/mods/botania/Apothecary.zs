##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 花药台
##================================================
#modloaded higanbana
#priority 2000

import mods.botania.Apothecary;

//水绣球
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}),
    [<ore:petalCyan>, <ore:petalCyan>, <ore:petalBlue>, <ore:petalBlue>, <skyresources:baseitemcomponent:4>, <minecraft:snowball>]);

//火红莲
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "endoflame"}),
    [<ore:petalBrown>, <ore:petalBrown>, <ore:petalLightGray>, <ore:petalRed>, <ore:dustWheat>, <minecraft:gunpowder>]);

//魔力星
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "manastar"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "manastar"}),
    [<ore:petalGreen>, <ore:petalCyan>, <ore:petalBlue>, <ore:petalRed>, <skyresources:alchemyitemcomponent:6>, <skyresources:alchemyitemcomponent:2>]);

//白雏菊
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "puredaisy"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "puredaisy"}),
    [<ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>, <randomthings:runedust>, <skyresources:alchemyitemcomponent:2>]);

//荧光菇
Apothecary.addRecipe(<randomthings:glowingmushroom>,
    [<ore:mysticalshinyflower>, <ore:mysticalshinyflower>]);
    
//大地孢子
Apothecary.addRecipe(<roots:terra_spores>,
    [<randomthings:runedust:5>, <randomthings:runedust:5>, <randomthings:runedust:13>, <randomthings:runedust:13>]);

//野根
Apothecary.addRecipe(<roots:wildroot>,
    [<ore:treeSapling>, <ore:treeSapling>]);

//荒古树苗
mods.naturesaura.TreeRitual.removeRecipe(<naturesaura:ancient_sapling>);
Apothecary.addRecipe(<naturesaura:ancient_sapling>, 
    [<roots:wildwood_sapling>, <naturesaura:gold_leaf>, <randomthings:spectresapling>,
     <tconstruct:slime_sapling>, <tconstruct:slime_sapling:1>, <tconstruct:slime_sapling:2>]);

//困惑蘑菇
mods.roots.Pyre.removeRecipe(<roots:baffle_cap_mushroom>);
Apothecary.addRecipe(<roots:baffle_cap_mushroom>, 
    [<minecraft:brown_mushroom>, <minecraft:red_mushroom>, <roots:terra_moss>,
     <minecraft:rotten_flesh>, <botania:petal:10>, <botania:petal>]);

//石笋
mods.roots.Pyre.removeRecipe(<roots:stalicripe>);
Apothecary.addRecipe(<roots:stalicripe>, 
    [<ore:livingrock>, <ore:ingotIron>, <minecraft:redstone>,
     <minecraft:flint>, <ore:wildroot>, <botania:petal:4>, <botania:petal:12>]);

//露海棠
mods.roots.Pyre.removeRecipe(<roots:dewgonia>);
Apothecary.addRecipe(<roots:dewgonia>, 
    [<skyresources:heavysnowball>, <skyresources:alchemyitemcomponent:1>, <minecraft:potion>.withTag({Potion: "minecraft:water"}),
     <roots:terra_moss>, <botania:petal>, <botania:petal:3>]);

//云莓
mods.roots.Pyre.removeRecipe(<roots:cloud_berry>);
Apothecary.addRecipe(<roots:cloud_berry>, 
    [<roots:terra_moss>, <roots:terra_moss>, <botania:petal:13>,
     <ore:tallgrass>, <ore:treeLeaves>, <ore:woolGreen>]);

//地狱磷茎
mods.roots.Pyre.removeRecipe(<roots:infernal_bulb>);
Apothecary.addRecipe(<roots:infernal_bulb>, 
    [<minecraft:redstone>, <ore:gunpowder>, <skyresources:magmafiedstone>,
     <minecraft:glowstone_dust>, <botania:petal:1>, <botania:petal:14>]);

//木麒麟
mods.roots.Pyre.removeRecipe(<roots:pereskia>);
Apothecary.addRecipe(<roots:pereskia>, 
    [<minecraft:speckled_melon>, <minecraft:beetroot>, <roots:wildroot>,
     <skyresources:alchemyitemcomponent:2>, <botania:petal:6>, <botania:petal:12>]);

//萤月之叶
mods.roots.Pyre.removeRecipe(<roots:moonglow_leaf>);
Apothecary.addRecipe(<roots:moonglow_leaf>, 
    [<minecraft:ice>, <botania:petal:3>, <roots:spirit_herb>,
     <minecraft:quartz>, <roots:bark_jungle>, <ore:dustLightBlueGlowstone>]);