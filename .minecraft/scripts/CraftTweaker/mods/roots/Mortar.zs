##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     根源魔法 研钵            ##
##################################################

#priority 2000
import mods.roots.Mortar;
import crafttweaker.item.IIngredient;

//强化骨粉
recipes.remove(<skyresources:baseitemcomponent:4>);
Mortar.addRecipe(<skyresources:baseitemcomponent:4> * 2, [<minecraft:rotten_flesh>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:rotten_flesh>]);

//花肥
recipes.remove(<botania:fertilizer>);
Mortar.addRecipe(<botania:fertilizer>, [<skyresources:baseitemcomponent:4>, <forestry:ash>, <ore:rootsBark>, <minecraft:rotten_flesh>, <ore:rootsBark>]);
Mortar.addRecipe(<botania:fertilizer> * 2, [<skyresources:baseitemcomponent:4>, <skyresources:baseitemcomponent:4>, <ore:mysticaldyes>, <ore:mysticaldyes>, <ore:mysticaldyes>]);

//花瓣
Mortar.removeRecipe(<roots:petals>);
Mortar.addRecipe(<roots:petals>, [<ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>]);

//咒术尘 生机灌溉
Mortar.removeRecipe(<roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_growth_infusion"}}));
Mortar.addRecipe(<roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_growth_infusion", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
[<ore:treeSapling>, <skyresources:baseitemcomponent>, <ore:rootsBark>, <skyresources:baseitemcomponent:4>, <roots:petals>]);

//自然物质
var plant as IIngredient = <ore:treeSapling> | <ore:listAllgrain> | <ore:listAllveggie> | <ore:sugarcane> | <skyresources:cactusfruit> | <ore:listAllfruit> | <ore:listAllberry> | <ore:listAllgreenveggie>;
recipes.remove(<skyresources:baseitemcomponent>);
Mortar.addRecipe(<skyresources:baseitemcomponent>, [plant, plant, plant, plant, plant]);

//怪物精华
var monster as IIngredient = <thaumcraft:brain> | <xreliquary:mob_ingredient:6> | <xreliquary:mob_ingredient:2> | <xreliquary:mob_ingredient> | <xreliquary:mob_ingredient:3>;
Mortar.addRecipe(<item:contenttweaker:monster_essence> * 3, [monster, monster, monster, monster, monster]);


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
Mortar.addRecipe(<skyresources:alchemyitemcomponent:1> * 2, [<ore:fivePhasesCrystal>]);

//流明精华
recipes.remove(<extendedcrafting:material:7>);
Mortar.addRecipe(<extendedcrafting:material:7> * 2, [<minecraft:gunpowder>, <botania:manaresource:8>, <botania:manaresource:8>, <botania:manaresource:23>, <botania:manaresource:23>]);

//含碳福鲁伊克斯复合物
recipes.remove(<threng:material:1>);
Mortar.addRecipe(<threng:material:1>, [<ore:dustFluix>, <ore:dustFluix>, <ore:dustCharcoal>, <ore:dustCharcoal>, <ore:itemSilicon>]);

//花粉
for kinds in 0 to 15
{
	Mortar.addRecipe(<botania:dye>.definition.makeStack(kinds), [<botania:petal>.definition.makeStack(kinds)]);
}

