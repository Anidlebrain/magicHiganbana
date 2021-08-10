##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     植物魔法 花药台
##================================================


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
    [<twilightforest:twilight_sapling>, <twilightforest:twilight_sapling:1>, <naturesaura:gold_leaf>, <randomthings:spectresapling>,
     <tconstruct:slime_sapling>, <tconstruct:slime_sapling:1>, <tconstruct:slime_sapling:2>]);
