##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     末影接口 合金炉
##================================================

#priority 2000
import mods.enderio.AlloySmelter;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.removeAlloySmelter;

//mods.enderio.AlloySmelter.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp);

//磁钢锭
removeAlloySmelter(<enderio:item_alloy_ingot>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot>, [<ore:ingotTungstensteel>, <ore:dustCoal>, <ore:itemSilicon>], 10000);

//充能合金锭
removeAlloySmelter(<enderio:item_alloy_ingot:1>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:1>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:1>, [<enderio:block_holy_fog>, <ore:ingotImperomite>, <threng:material:5>], 10000);

//脉冲合金锭
removeAlloySmelter(<enderio:item_alloy_ingot:2>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:2>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, [<enderio:item_alloy_ingot:1>, <ore:ingotEnderium>], 10000);

//红石合金锭
removeAlloySmelter(<enderio:item_alloy_ingot:3>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:3>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3>, [<minecraft:redstone>, <ore:ingotIox>], 10000);

//导电铁锭
removeAlloySmelter(<enderio:item_alloy_ingot:4>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:4>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:4>, [<ore:ingotTerrax>, <minecraft:redstone>], 10000);

//脉冲铁锭
removeAlloySmelter(<enderio:item_alloy_ingot:5>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:5>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:5>, [<ore:ingotConductiveIron>, <ore:ingotEnderium>], 10000);

//玄钢锭
removeAlloySmelter(<enderio:item_alloy_ingot:6>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:6>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:6>, [<ore:ingotTungstensteel>, <ore:ingotObsidiorite>, <ore:ingotBasalt>], 10000);

//魂金锭
removeAlloySmelter(<enderio:item_alloy_ingot:7>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:7>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:7>, [<ore:ingotTritonite>, <woot:soulsanddust> * 2], 10000);

//铁合金锭
removeAlloySmelter(<enderio:item_alloy_ingot:9>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:9>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:9>, [<ore:ingotAdvancedAlloy>, <ore:ingotIron>], 20000);


/*
由 匠魂 液体 合金配方转移而来
*/
//陨铁锭
AlloySmelter.addRecipe(<taiga:meteorite_ingot>, [<ore:blockSkyStone>, <ore:ingotIron>], 15000);

//地母锭
AlloySmelter.addRecipe(<taiga:terrax_ingot>, [<taiga:jauxum_ingot>, <taiga:ovium_ingot>, <taiga:karmesine_ingot>], 15000);

//泰伯利安锭
AlloySmelter.addRecipe(<taiga:triberium_ingot>, [<taiga:tiberium_ingot> * 5, <taiga:basalt_ingot> * 1], 15000);
AlloySmelter.addRecipe(<taiga:triberium_ingot>, [<taiga:tiberium_ingot> * 5, <taiga:dilithium_ingot> * 2], 15000);

//碎金锭
AlloySmelter.addRecipe(<taiga:fractum_ingot> * 2, [<taiga:triberium_ingot> * 3, <ore:obsidian> * 3, <taiga:abyssum_ingot>], 15000);

//瑟蓝锭
AlloySmelter.addRecipe(<taiga:violium_ingot> * 2, [<taiga:aurorium_ingot> * 3, <tconstruct:ingots:1> * 2], 15000);

//普罗克希锭
AlloySmelter.addRecipe(<taiga:proxii_ingot> * 3, [<taiga:palladium_ingot> * 3, <taiga:prometheum_ingot>, <taiga:eezo_ingot> * 3], 15000);

//漩金锭
AlloySmelter.addRecipe(<taiga:tritonite_ingot> * 2, [<taiga:terrax_ingot> * 2, <tconstruct:ingots> * 3], 15000);

//焰晶锭
AlloySmelter.addRecipe(<taiga:ignitz_ingot> * 2, [<tconstruct:ingots:1> * 2, <taiga:terrax_ingot> * 2, <taiga:osram_ingot>], 15000);

//帝金锭
AlloySmelter.addRecipe(<taiga:imperomite_ingot> * 2, [<taiga:duranite_ingot> * 3, <taiga:prometheum_ingot>, <taiga:abyssum_ingot>], 15000);

//阳光合金锭
AlloySmelter.addRecipe(<taiga:solarium_ingot> * 2, [<taiga:uru_ingot> * 2, <taiga:valyrium_ingot> * 2, <taiga:nucleum_ingot>], 15000);

//虚金锭
AlloySmelter.addRecipe(<taiga:nihilite_ingot>, [<taiga:solarium_ingot>, <taiga:vibranium_ingot>], 15000);

//铿金锭
AlloySmelter.addRecipe(<taiga:adamant_ingot> * 3, [<taiga:solarium_ingot>, <taiga:vibranium_ingot>, <taiga:iox_ingot> * 3], 15000);

//铿金锭
AlloySmelter.addRecipe(<taiga:astrium_ingot> * 2, [<taiga:terrax_ingot> * 3, <taiga:aurorium_ingot> * 2], 15000);

//铿金锭
AlloySmelter.addRecipe(<taiga:astrium_ingot> * 2, [<taiga:terrax_ingot> * 3, <taiga:aurorium_ingot> * 2], 15000);

//地动合金锭
AlloySmelter.addRecipe(<taiga:seismum_ingot> * 4, [<ore:obsidian> * 4, <taiga:triberium_ingot> * 2, <taiga:eezo_ingot>], 15000);


//地动合金锭
AlloySmelter.addRecipe(<taiga:seismum_ingot> * 4, [<ore:obsidian> * 4, <taiga:triberium_ingot> * 2, <taiga:eezo_ingot>], 15000);

//铌锭
AlloySmelter.addRecipe(<taiga:niob_ingot> * 3, [<taiga:palladium_ingot> * 3, <taiga:duranite_ingot>, <taiga:osram_ingot>], 15000);

//原金锭
AlloySmelter.addRecipe(<taiga:yrdeen_ingot> * 3, [<taiga:uru_ingot> * 3, <taiga:valyrium_ingot> * 3, <taiga:osram_ingot>], 15000);

//流光合金锭
AlloySmelter.addRecipe(<taiga:lumix_ingot>, [<taiga:palladium_ingot>, <taiga:terrax_ingot>], 15000);

//辐光合金锭
AlloySmelter.addRecipe(<taiga:nucleum_ingot>, [<taiga:proxii_ingot> * 3, <taiga:duranite_ingot>, <taiga:osram_ingot>], 15000);
AlloySmelter.addRecipe(<taiga:nucleum_ingot>, [<taiga:imperomite_ingot> * 3, <taiga:osram_ingot>, <taiga:eezo_ingot>], 15000);
AlloySmelter.addRecipe(<taiga:nucleum_ingot>, [<taiga:niob_ingot> * 3, <taiga:eezo_ingot>, <taiga:abyssum_ingot>], 15000);

/*
由 合金窑 配方转移而来
*/
//爆裂粉
AlloySmelter.addRecipe(<contenttweaker:explosive_dust> * 2, [<minecraft:gunpowder> * 3, <minecraft:blaze_powder> * 2]);

//低级炼金粉尘
AlloySmelter.addRecipe(<skyresources:alchemyitemcomponent:2> * 4, [<contenttweaker:explosive_dust> * 5, <minecraft:coal:1> * 3]);

//岩浆膏
AlloySmelter.addRecipe(<minecraft:magma_cream>, [<minecraft:blaze_powder>, <minecraft:slime_ball>]);

//模块化合金
AlloySmelter.addRecipe(<modularmachinery:itemmodularium>, [<skyresources:alchemyitemcomponent:7>, <skyresources:alchemyitemcomponent:8>]);


/*
由 电弧炉 配方转移而来
*/
//合金锭
AlloySmelter.addRecipe(<techreborn:ingot:21>, [<ore:ingotBrass> * 3, <ore:ingotIronCompressed> * 3, <ore:ingotSilver> * 3]);

//铱合金锭
AlloySmelter.addRecipe(<techreborn:ingot:21>, [<ore:ingotIridium> * 3, <techreborn:plates:36> * 3, <ore:dustDiamond> * 3]);

/*
末影接口 管道拓展 合金
*/
//充能银锭
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>, [<enderio:block_holy_fog>, <extrautils2:ingredients>, <ore:ingotMithril>]);

//生动合金锭
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:6>, [<extendedcrafting:material:36>, <enderio:item_alloy_endergy_ingot:5>, <ore:ingotOsmium>]);

//旋律合金锭
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:2>, [<tconevo:metal:25>, <minecraft:chorus_fruit_popped>, <enderio:item_alloy_ingot:8>,]);


