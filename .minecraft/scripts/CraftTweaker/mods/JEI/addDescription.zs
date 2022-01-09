##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     JEI 添加物品描述
##================================================
#modloaded higanbana
#priority 2000

import mods.jei.JEI.addDescription;
import crafttweaker.item.IItemStack;
import scripts.AnildebrainUtils.MessageUtils.getDescriptionMessage;

var m_netherRecipes as string =  getDescriptionMessage("nether.recipes");
var m_endRecipes as string = getDescriptionMessage("end.recipes");

var m_before as string = getDescriptionMessage("recipes.before");

var m_netherAfter as string = getDescriptionMessage("recipes.nether.after");
var m_endAfter as string = getDescriptionMessage("recipes.end.after");

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

addDescription(<contenttweaker:match_stick>, [getDescriptionMessage("contenttweaker:match_stick.1"),
                                              getDescriptionMessage("contenttweaker:match_stick.2")]);

addDescription(<astralsorcery:blockaltar>, [getDescriptionMessage("astralsorcery:blockaltar")]);

addDescription(<astralsorcery:blockaltar>, [getDescriptionMessage("astralsorcery:blockaltar")]);

