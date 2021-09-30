##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     JEI 添加物品描述
##================================================
#priority 2000
import mods.jei.JEI.addDescription;
import crafttweaker.item.IItemStack;

var m_netherRecipes = "传闻此物品合成时必须会吸收地狱的灵气。" as string;
var m_endRecipes = "传闻此物品合成时会必须吸收末地的灵气。" as string;
var m_forestRecipes = "传闻此物品合成时会必须吸收暮色森林的灵气。" as string;

var m_before = "传闻此物品是由" as string;
var m_netherAfter = "在地狱合成时吸收地狱的灵气异变而成。" as string;
var m_endAfter = "在末地合成时吸收末地的灵气异变而成。" as string;
var m_forestAfter = "在暮色森林合成时吸收暮色森林的灵气异变而成。" as string;


//大地孢子右键水边的原石即可得到苔石

var m_skyItem = [
    <skyresources:combustionheater>,
    <skyresources:heatprovider>,
    <skyresources:condenser>
] as IItemStack[];


var m_skyItemhide = [
    <skyresources:heat>,
    <skyresources:alchemy>,
    <skyresources:condenser>,
    <skyresources:casing>
] as IItemStack[];

for item in m_skyItem {
    addDescription(item.definition.makeStack(6), [m_netherRecipes]);
    addDescription(item.definition.makeStack(10), [m_endRecipes]);
}

for item in m_skyItemhide {
    addDescription(item.definition.makeStack(6), [m_before ~ item.definition.makeStack(1).displayName ~ m_netherAfter]);
    addDescription(item.definition.makeStack(10), [m_before ~ item.definition.makeStack(1).displayName ~ m_endAfter]);
}

addDescription(<contenttweaker:match_stick>, ["可以使用火柴点火，但火柴是不稳定的，点火的几率和空气的潮湿程度、环境温度的高低有关。",
                                              "火柴点燃的火焰过小，因此不可以直接用于柴堆点火，可以在柴堆旁边点火，等待一段时间后柴堆会吸收他的火焰，然后点燃自己。"]);


addDescription(<randomthings:naturecore>, ["自然水晶通过自然嬗变的仪式会变成自然核心。自然核心的收集需要一把挖掘等级大于黑曜石的斧子。"]);


addDescription(<astralsorcery:blockaltar>, ["传闻只有知道星座的人，才能掌握星辰的力量，最综合成出星辉合成台"]);
