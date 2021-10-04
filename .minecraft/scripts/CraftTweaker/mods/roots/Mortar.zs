##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     根源魔法 研钵
##================================================
#priority 2000
import mods.roots.Mortar;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.rootsMortarRecipe;
import crafttweaker.item.IIngredient;

//强化骨粉
recipes.remove(<skyresources:baseitemcomponent:4>);
rootsMortarRecipe(<skyresources:baseitemcomponent:4> * 2, [<minecraft:rotten_flesh>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:rotten_flesh>]);

//花肥
recipes.remove(<botania:fertilizer>);
//rootsMortarRecipe(<botania:fertilizer>, [<skyresources:baseitemcomponent:4>, <forestry:ash>, <ore:rootsBark>, <minecraft:rotten_flesh>, <ore:rootsBark>]);
rootsMortarRecipe(<botania:fertilizer> * 2, [<skyresources:baseitemcomponent:4>, <skyresources:baseitemcomponent:4>, <ore:mysticaldyes>, <ore:mysticaldyes>, <ore:mysticaldyes>]);

//花瓣
Mortar.removeRecipe(<roots:petals>);
rootsMortarRecipe(<roots:petals>, [<ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>]);

//自然物质
var plant as IIngredient = <ore:treeSapling> | <ore:listAllgrain> | <ore:listAllveggie> | <ore:sugarcane> | <skyresources:cactusfruit> | <ore:listAllfruit> | <ore:listAllberry> | <ore:listAllgreenveggie>;
recipes.remove(<skyresources:baseitemcomponent>);
rootsMortarRecipe(<skyresources:baseitemcomponent>, [plant, plant, plant, plant, plant]);

//怪物精华
var monster as IIngredient = <thaumcraft:brain> | <xreliquary:mob_ingredient:6> | <xreliquary:mob_ingredient:2> | <xreliquary:mob_ingredient> | <xreliquary:mob_ingredient:3>;
rootsMortarRecipe(<item:contenttweaker:monster_essence> * 3, [monster, monster, monster, monster, monster]);

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

//流明精华
recipes.remove(<extendedcrafting:material:7>);
rootsMortarRecipe(<extendedcrafting:material:7> * 2, [<minecraft:gunpowder>, <botania:manaresource:8>, <botania:manaresource:8>, <botania:manaresource:23>, <botania:manaresource:23>]);

//含碳福鲁伊克斯复合物
recipes.remove(<threng:material:1>);
rootsMortarRecipe(<threng:material:1>, [<ore:dustFluix>, <ore:dustFluix>, <ore:dustCharcoal>, <ore:dustCharcoal>, <ore:itemSilicon>]);


//花粉
for kinds in 0 to 16
{
    recipes.remove(<botania:dye>.definition.makeStack(kinds));
    rootsMortarRecipe(<botania:dye>.definition.makeStack(kinds), [<botania:petal>.definition.makeStack(kinds)]);

    if(kinds < 4)
    {
        recipes.remove(<tp:colored_dust>.definition.makeStack(kinds));
        rootsMortarRecipe(<tp:colored_dust>.definition.makeStack(kinds), [DYE_ORE[kinds], DYE_ORE[kinds], DYE_ORE[kinds], DYE_ORE[kinds], <minecraft:glowstone_dust>]);
    }
}

for kinds in 4 to 15
{
    recipes.remove(<tp:colored_dust>.definition.makeStack(kinds));
    rootsMortarRecipe(<tp:colored_dust>.definition.makeStack(kinds), [DYE_ORE[kinds + 1], DYE_ORE[kinds + 1], DYE_ORE[kinds + 1], DYE_ORE[kinds + 1], <minecraft:glowstone_dust>]);
}

//咒术尘 生机灌溉
Mortar.changeSpell("spell_growth_infusion",
[<ore:treeSapling>, <skyresources:baseitemcomponent>, <ore:rootsBark>, <skyresources:baseitemcomponent:4>, <roots:petals>]);