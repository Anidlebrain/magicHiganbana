##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     游戏阶段 物品
##================================================
#priority 2010
import mods.zenstages.ZenStager;
import crafttweaker.item.IIngredient;
#norun

var stagePipe = ZenStager.initStage(stagePipeName);

var pipeItems = [
] as IIngredient[];

var advancedPipeItems = [
    <mekanism:transmitter:0>,
    <mekanism:transmitter:1>,
    <mekanism:transmitter:2>,
    <mekanism:transmitter:3>,
    <mekanism:transmitter:4>,
    <mekanism:transmitter:5>,
    <mekanism:transmitter:6>,
] as IIngredient[];

for item in pipeItems
{
    pipeItems.addIngredient(item);
}