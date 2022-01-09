##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     彼岸之法 合金
##================================================
#modloaded higanbana
#priority 2000

#norun
import mods.Higanbana.IUtils;

function addAlloyRecipe(output as IItemStack, inputs as IIngredient[], energytick as int, time as int, level as int) as void
{
    if (inputs.length < 2 || inputs.length > 3) {
        logger.logError("[alloyRecipe] - The input must be equal to 2 or 3");
        return ;
    }
    if (level < 3) {
        //mods.enderio.AlloySmelter.addRecipe(output, inputs, energytick * time);
    }
    if (level < 2) {
        if (inputs.length == 2) {
            mods.immersiveengineering.ArcFurnace.addRecipe(output, inputs[0], null, time, energytick,
                [inputs[0]], "Alloying");
        }
        if (inputs.length == 3) {
            mods.immersiveengineering.ArcFurnace.addRecipe(output, inputs[0], null, time, energytick,
                [inputs[1], inputs[2]], "Alloying");
        }
    }
    if (level < 1) {
        mods.immersiveengineering.AlloySmelter.addRecipe(output, inputs[0], inputs[1], time);
    }
}

/*
 * 一级合金
 */
//爆裂粉
addAlloyRecipe(<contenttweaker:explosive_dust> * 2, [<minecraft:gunpowder> * 3, <minecraft:blaze_powder> * 2], 200, 100, 0);

//低级炼金粉尘
mods.skyresources.combustion.removeRecipe(<skyresources:alchemyitemcomponent:2>);
addAlloyRecipe(<skyresources:alchemyitemcomponent:2> * 4, [<contenttweaker:explosive_dust> * 5, <minecraft:coal:1> * 3], 200, 100, 0);

//岩浆膏
recipes.removeByRecipeName("minecraft:magma_cream");
addAlloyRecipe(<minecraft:magma_cream>, [<minecraft:blaze_powder>, <minecraft:slime_ball>], 200, 100, 0);

//模块化合金
recipes.remove(<modularmachinery:itemmodularium>);
addAlloyRecipe(<modularmachinery:itemmodularium>, [<skyresources:alchemyitemcomponent:7>, <skyresources:alchemyitemcomponent:8>], 2000, 100, 0);

/*
 * 二级合金
 */


//合金锭
recipes.remove(<techreborn:ingot:21>);
addAlloyRecipe(<techreborn:ingot:21>, [<ore:ingotIronCompressed> * 3, <ore:ingotSilver> * 3, <ore:ingotBronze> * 3], 2000, 200, 1);

//铱合金锭
recipes.remove(<techreborn:ingot:22>);
addAlloyRecipe(<techreborn:ingot:22>, [<ore:ingotIridium> * 3, <techreborn:plates:36> * 3, <ore:dustDiamond> * 3], 2000, 200, 1);

//黄铜
removeAlloySmelter(<techreborn:ingot:1>, IUtils.binaryCreation("01"));

/*
 * 三级合金
 */
//磁钢锭
removeAlloySmelter(<enderio:item_alloy_ingot>, IUtils.binaryCreation("111"));
addAlloyRecipe(<enderio:item_alloy_ingot>, [<ore:ingotTungstensteel>, <ore:dustCoal>, <ore:itemSilicon>], 100, 100, 2);

//充能合金锭
removeAlloySmelter(<enderio:item_alloy_ingot:1>, IUtils.binaryCreation("111"));
addAlloyRecipe(<enderio:item_alloy_ingot:1>, [<enderio:block_holy_fog>, <ore:ingotImperomite>, <threng:material:5>], 100, 100, 2);

//脉冲合金锭
removeAlloySmelter(<enderio:item_alloy_ingot:2>, IUtils.binaryCreation("111"));
addAlloyRecipe(<enderio:item_alloy_ingot:2>, [<enderio:item_alloy_ingot:1>, <ore:ingotEnderium>], 100, 100, 2);
print(4);
//红石合金锭
removeAlloySmelter(<enderio:item_alloy_ingot:3>, IUtils.binaryCreation("111"));
addAlloyRecipe(<enderio:item_alloy_ingot:3>, [<minecraft:redstone>, <ore:ingotIox>], 100, 100, 2);

//导电铁锭
removeAlloySmelter(<enderio:item_alloy_ingot:4>, IUtils.binaryCreation("111"));
addAlloyRecipe(<enderio:item_alloy_ingot:4>, [<ore:ingotTerrax>, <minecraft:redstone>], 100, 100, 2);

//脉冲铁锭
removeAlloySmelter(<enderio:item_alloy_ingot:5>, IUtils.binaryCreation("111"));
addAlloyRecipe(<enderio:item_alloy_ingot:5>, [<ore:ingotConductiveIron>, <ore:ingotEnderium>], 100, 100, 2);

//玄钢锭
removeAlloySmelter(<enderio:item_alloy_ingot:6>, IUtils.binaryCreation("111"));
addAlloyRecipe(<enderio:item_alloy_ingot:6>, [<ore:ingotTungstensteel>, <ore:ingotObsidiorite>, <ore:ingotBasalt>], 100, 100, 2);

//魂金锭
removeAlloySmelter(<enderio:item_alloy_ingot:7>, IUtils.binaryCreation("111"));
addAlloyRecipe(<enderio:item_alloy_ingot:7>, [<ore:ingotTritonite>, <woot:soulsanddust> * 2], 100, 100, 2);

//铁合金锭
removeAlloySmelter(<enderio:item_alloy_ingot:9>, IUtils.binaryCreation("11"));
addAlloyRecipe(<enderio:item_alloy_ingot:9>, [<ore:ingotAdvancedAlloy>, <ore:ingotIron>], 100, 100, 2);

/*
由 匠魂 液体 合金配方转移而来
*/
//陨铁锭
addAlloyRecipe(<taiga:meteorite_ingot>, [<ore:blockSkyStone>, <ore:ingotIron>], 150, 100, 2);

//地母锭
addAlloyRecipe(<taiga:terrax_ingot>, [<taiga:jauxum_ingot>, <taiga:ovium_ingot>, <taiga:karmesine_ingot>], 150, 100, 2);

//泰伯利安锭
addAlloyRecipe(<taiga:triberium_ingot>, [<taiga:tiberium_ingot> * 5, <taiga:basalt_ingot> * 1], 150, 100, 2);
addAlloyRecipe(<taiga:triberium_ingot>, [<taiga:tiberium_ingot> * 5, <taiga:dilithium_ingot> * 2], 150, 100, 2);

//碎金锭
addAlloyRecipe(<taiga:fractum_ingot> * 2, [<taiga:triberium_ingot> * 3, <ore:obsidian> * 3, <taiga:abyssum_ingot>], 150, 100, 2);

//瑟蓝锭
addAlloyRecipe(<taiga:violium_ingot> * 2, [<taiga:aurorium_ingot> * 3, <tconstruct:ingots:1> * 2], 150, 100, 2);

//普罗克希锭
addAlloyRecipe(<taiga:proxii_ingot> * 3, [<taiga:palladium_ingot> * 3, <taiga:prometheum_ingot>, <taiga:eezo_ingot> * 3], 150, 100, 2);

//漩金锭
addAlloyRecipe(<taiga:tritonite_ingot> * 2, [<taiga:terrax_ingot> * 2, <tconstruct:ingots> * 3], 150, 100, 2);

//焰晶锭
addAlloyRecipe(<taiga:ignitz_ingot> * 2, [<tconstruct:ingots:1> * 2, <taiga:terrax_ingot> * 2, <taiga:osram_ingot>], 150, 100, 2);

//帝金锭
addAlloyRecipe(<taiga:imperomite_ingot> * 2, [<taiga:duranite_ingot> * 3, <taiga:prometheum_ingot>, <taiga:abyssum_ingot>], 150, 100, 2);

//阳光合金锭
addAlloyRecipe(<taiga:solarium_ingot> * 2, [<taiga:uru_ingot> * 2, <taiga:valyrium_ingot> * 2, <taiga:nucleum_ingot>], 150, 100, 2);

//虚金锭
addAlloyRecipe(<taiga:nihilite_ingot>, [<taiga:solarium_ingot>, <taiga:vibranium_ingot>], 150, 100, 2);

//铿金锭
addAlloyRecipe(<taiga:adamant_ingot> * 3, [<taiga:solarium_ingot>, <taiga:vibranium_ingot>, <taiga:iox_ingot> * 3], 150, 100, 2);

//铿金锭
addAlloyRecipe(<taiga:astrium_ingot> * 2, [<taiga:terrax_ingot> * 3, <taiga:aurorium_ingot> * 2], 150, 100, 2);

//铿金锭
addAlloyRecipe(<taiga:astrium_ingot> * 2, [<taiga:terrax_ingot> * 3, <taiga:aurorium_ingot> * 2], 150, 100, 2);

//地动合金锭
addAlloyRecipe(<taiga:seismum_ingot> * 4, [<ore:obsidian> * 4, <taiga:triberium_ingot> * 2, <taiga:eezo_ingot>], 150, 100, 2);

//地动合金锭
addAlloyRecipe(<taiga:seismum_ingot> * 4, [<ore:obsidian> * 4, <taiga:triberium_ingot> * 2, <taiga:eezo_ingot>], 150, 100, 2);

//铌锭
addAlloyRecipe(<taiga:niob_ingot> * 3, [<taiga:palladium_ingot> * 3, <taiga:duranite_ingot>, <taiga:osram_ingot>], 150, 100, 2);

//原金锭
addAlloyRecipe(<taiga:yrdeen_ingot> * 3, [<taiga:uru_ingot> * 3, <taiga:valyrium_ingot> * 3, <taiga:osram_ingot>], 150, 100, 2);

//流光合金锭
addAlloyRecipe(<taiga:lumix_ingot>, [<taiga:palladium_ingot>, <taiga:terrax_ingot>], 150, 100, 2);

//辐光合金锭
addAlloyRecipe(<taiga:nucleum_ingot>, [<taiga:proxii_ingot> * 3, <taiga:duranite_ingot>, <taiga:osram_ingot>], 150, 100, 2);
addAlloyRecipe(<taiga:nucleum_ingot>, [<taiga:imperomite_ingot> * 3, <taiga:osram_ingot>, <taiga:eezo_ingot>], 150, 100, 2);
addAlloyRecipe(<taiga:nucleum_ingot>, [<taiga:niob_ingot> * 3, <taiga:eezo_ingot>, <taiga:abyssum_ingot>], 150, 100, 2);

/*
末影接口 管道拓展 合金
*/
//充能银锭
addAlloyRecipe(<enderio:item_alloy_endergy_ingot:5>, [<enderio:block_holy_fog>, <extrautils2:ingredients>, <ore:ingotMithril>], 1500, 100, 2);

//生动合金锭
addAlloyRecipe(<enderio:item_alloy_endergy_ingot:6>, [<extendedcrafting:material:36>, <enderio:item_alloy_endergy_ingot:5>, <ore:ingotOsmium>], 1500, 100, 2);

//旋律合金锭
addAlloyRecipe(<enderio:item_alloy_endergy_ingot:2>, [<tconevo:metal:25>, <minecraft:chorus_fruit_popped>, <enderio:item_alloy_ingot:8>], 1500, 100, 2);


/*
other
*/
//工业隔离方块
removeAlloySmelter(<enderio:block_industrial_insulation>, IUtils.binaryCreation("1"));
addAlloyRecipe(<enderio:block_industrial_insulation>, [<minecraft:sponge>, <ore:dustLapis>, <ore:dustBedrock>], 100, 100, 2);

removeAlloySmelter(<enderio:item_material:76>, IUtils.binaryCreation("1"));
addAlloyRecipe(<enderio:item_material:76>, [<ore:dustGlowstone>, <ore:dustClay>], 100, 100, 2);
