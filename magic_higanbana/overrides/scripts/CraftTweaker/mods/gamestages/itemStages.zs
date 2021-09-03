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
    <thermaldynamics:duct_0:0>,
    <thermaldynamics:duct_0:1>,
    <thermaldynamics:duct_0:2>,
    <thermaldynamics:duct_0:3>,
    <thermaldynamics:duct_0:4>,
    <thermaldynamics:duct_0:6>,
    <thermaldynamics:duct_0:7>,
    <thermaldynamics:duct_0:8>,
    <thermaldynamics:duct_16:0>,
    <thermaldynamics:duct_16:1>,
    <thermaldynamics:duct_16:2>,
    <thermaldynamics:duct_16:3>,
    <thermaldynamics:duct_16:4>,
    <thermaldynamics:duct_16:5>,
    <thermaldynamics:duct_16:6>,
    <thermaldynamics:duct_16:7>,
    <thermaldynamics:duct_32:0>,
    <thermaldynamics:duct_32:1>,
    <thermaldynamics:duct_32:2>,
    <thermaldynamics:duct_32:3>,
    <thermaldynamics:duct_32:4>,
    <thermaldynamics:duct_32:5>,
    <thermaldynamics:duct_32:6>,
    <thermaldynamics:duct_32:7>,
    <thermaldynamics:duct_64:0>,
    <thermaldynamics:duct_64:1>,
    <thermaldynamics:duct_64:2>,
    <thermaldynamics:duct_64:3>,
] as IIngredient[];

var advancedPipeItems = [
    <thermaldynamics:duct_0:9>,
    <thermaldynamics:duct_0:5>,
    <extrautils2:pipe>,
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