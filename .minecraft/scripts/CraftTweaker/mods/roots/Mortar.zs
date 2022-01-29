##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     根源魔法 研钵
##================================================
#modloaded higanbana
#priority 2000

import mods.roots.Mortar;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.rootsMortarRecipe;

//强化骨粉
recipes.remove(<skyresources:baseitemcomponent:4>);
rootsMortarRecipe(<skyresources:baseitemcomponent:4> * 2, [<minecraft:rotten_flesh>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:rotten_flesh>]);
rootsMortarRecipe(<skyresources:baseitemcomponent:4> * 6, [<contenttweaker:monster_essence>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <contenttweaker:monster_essence>]);


//花肥
recipes.remove(<botania:fertilizer>);
//rootsMortarRecipe(<botania:fertilizer>, [<skyresources:baseitemcomponent:4>, <forestry:ash>, <ore:rootsBark>, <minecraft:rotten_flesh>, <ore:rootsBark>]);
rootsMortarRecipe(<botania:fertilizer> * 2, [<skyresources:baseitemcomponent:4>, <skyresources:baseitemcomponent:4>, <ore:mysticaldyes>, <ore:mysticaldyes>, <ore:mysticaldyes>]);

//花瓣
Mortar.removeRecipe(<roots:petals>);
rootsMortarRecipe(<roots:petals>, [<ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>]);

//自然物质
recipes.remove(<skyresources:baseitemcomponent>);
rootsMortarRecipe(<skyresources:baseitemcomponent>, [PLANT, PLANT, PLANT, PLANT, PLANT]);

//怪物精华
rootsMortarRecipe(<contenttweaker:monster_essence>, [MONSTER, MONSTER, MONSTER, MONSTER, MONSTER]);

//烈焰粉
Mortar.removeRecipe(<minecraft:blaze_powder>);

//铁粉
Mortar.removeRecipe(<mysticalworld:gold_dust>);

//烈焰粉
Mortar.removeRecipe(<mysticalworld:iron_dust>);

//亮灰荧石粉
Mortar.removeRecipe(<mysticalworld:silver_dust>);

//水晶碎片
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:1>);
rootsMortarRecipe(<skyresources:alchemyitemcomponent:1> * 2, [<ore:fivePhasesCrystal>]);

//含碳福鲁伊克斯复合物
recipes.remove(<threng:material:1>);
rootsMortarRecipe(<threng:material:1>, [<ore:dustFluix>, <ore:dustFluix>, <ore:dustCharcoal>, <ore:dustCharcoal>, <ore:itemSilicon>]);


//花粉
for kinds in 0 to 16
{
    recipes.remove(<botania:dye>.definition.makeStack(kinds));
    rootsMortarRecipe(<botania:dye>.definition.makeStack(kinds), [<botania:petal>.definition.makeStack(kinds)]);

    if (kinds < 4) {
        recipes.remove(<tp:colored_dust>.definition.makeStack(kinds));
        rootsMortarRecipe(<tp:colored_dust>.definition.makeStack(kinds),
            [DYE_ORE[kinds], DYE_ORE[kinds], DYE_ORE[kinds], DYE_ORE[kinds], <minecraft:glowstone_dust>]);
    }
    else if (kinds < 15) {
        recipes.remove(<tp:colored_dust>.definition.makeStack(kinds));
        rootsMortarRecipe(<tp:colored_dust>.definition.makeStack(kinds),
            [DYE_ORE[kinds + 1], DYE_ORE[kinds + 1], DYE_ORE[kinds + 1], DYE_ORE[kinds + 1], <minecraft:glowstone_dust>]);
    }

    //符文尘
    recipes.remove(<randomthings:runedust>.definition.makeStack(kinds));
    rootsMortarRecipe(<randomthings:runedust>.definition.makeStack(kinds),
            [DYE_ORE[kinds], <ore:runedWood>, <ore:runedWood>, <randomthings:ingredient:5>, <minecraft:clay_ball>]);
}

//地狱燃料
recipes.remove(<prodigytech:inferno_fuel>);
rootsMortarRecipe(<prodigytech:inferno_fuel> * 2,
    [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <ore:dustCoal>, <ore:dustCoal>, <ore:dustAsh>]);

//方镁矾混合物
recipes.remove(<embers:blend_caminite>);
rootsMortarRecipe(<embers:blend_caminite> * 3,
    [<ore:clayBall>, <ore:clayBall>, <ore:clayBall>, <ore:dustCoal>, <ore:sand>]);
rootsMortarRecipe(<embers:blend_caminite> * 2,
    [<ore:clayBall>, <ore:clayBall>, <ore:clayBall>, <skyresources:baseitemcomponent:4>, <ore:sand>]);

//荧光粉
recipes.remove(<randomthings:ingredient:5>);
rootsMortarRecipe(<randomthings:ingredient:5> * 4,
    [<ore:blockGlass>, <ore:dustGlowstone>, <ore:dustGlowstone>, <randomthings:glowingmushroom>, <randomthings:glowingmushroom>]);

//咒术尘 生机灌溉
Mortar.changeSpell("spell_growth_infusion",
    [<ore:treeSapling>, <skyresources:baseitemcomponent>, <ore:rootsBark>, <skyresources:baseitemcomponent:4>, <roots:petals>]);

//咒术尘 野火
Mortar.changeSpell("spell_wild_fire",
    [DYE_ORE[1], <skyresources:baseitemcomponent>, <ore:gunpowder>, <roots:wildroot>, <ore:foodFlour>]);


