#priority 2000
import mods.roots.Mortar;

//空岛资源 抽水器 注入 by Anidlebrain

//强化骨粉
recipes.remove(<skyresources:baseitemcomponent:4>);
Mortar.addRecipe(<skyresources:baseitemcomponent:4> * 2, [<minecraft:rotten_flesh>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, null]);

//花肥
recipes.remove(<botania:fertilizer>);
Mortar.addRecipe(<botania:fertilizer>, [<skyresources:baseitemcomponent:4>, <forestry:ash>, <minecraft:pumpkin>, <minecraft:rotten_flesh>, <minecraft:snowball>]);
Mortar.addRecipe(<botania:fertilizer>, [<skyresources:baseitemcomponent:4>, <forestry:ash>, <roots:petals>, null, null]);

//花瓣
Mortar.removeRecipe(<roots:petals>);
Mortar.addRecipe(<roots:petals>, [<ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>, <ore:mysticalPetals>]);

//咒术尘 生机灌溉
Mortar.removeRecipe(<roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_growth_infusion", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}));
Mortar.addRecipe(<roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_growth_infusion", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
[<ore:treeSapling>, <skyresources:baseitemcomponent>, <ore:rootsBark>, <skyresources:baseitemcomponent:4>, <roots:petals>]);

//自然物质
recipes.remove(<skyresources:baseitemcomponent>);
Mortar.addRecipe(<skyresources:baseitemcomponent>, [<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>]);
Mortar.addRecipe(<skyresources:baseitemcomponent>, [<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]);
Mortar.addRecipe(<skyresources:baseitemcomponent>, [<ore:listAllveggie>, <ore:listAllveggie>, <ore:listAllveggie>, <ore:listAllveggie>, <ore:listAllveggie>]);
Mortar.addRecipe(<skyresources:baseitemcomponent>, [<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]);
Mortar.addRecipe(<skyresources:baseitemcomponent>, [<skyresources:cactusfruit>, <skyresources:cactusfruit>, <skyresources:cactusfruit>, <skyresources:cactusfruit>, <skyresources:cactusfruit>]);
Mortar.addRecipe(<skyresources:baseitemcomponent>, [<ore:listAllfruit>, <ore:listAllfruit>, <ore:listAllfruit>, <ore:listAllfruit>, <ore:listAllfruit>]);
Mortar.addRecipe(<skyresources:baseitemcomponent>, [<ore:listAllberry>, <ore:listAllberry>, <ore:listAllberry>, <ore:listAllberry>, <ore:listAllberry>]);
Mortar.addRecipe(<skyresources:baseitemcomponent>, [<ore:listAllgreenveggie>, <ore:listAllgreenveggie>, <ore:listAllgreenveggie>, <ore:listAllgreenveggie>, <ore:listAllgreenveggie>]);

//烈焰粉
Mortar.removeRecipe(<minecraft:blaze_powder>);

//铁粉
Mortar.removeRecipe(<mysticalworld:gold_dust>);

//烈焰粉
Mortar.removeRecipe(<mysticalworld:iron_dust>);

//亮灰荧石粉
Mortar.removeRecipe(<mysticalworld:silver_dust>);

//end file by Anidlebrain