##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     根源魔法 柴堆
##================================================
#modloaded higanbanautils
#priority 2000

import mods.roots.Pyre;

//炼金灌注台
recipes.remove(<skyresources:fusiontable>);
Pyre.addRecipe("skyresources/Pyre/fusiontable", <skyresources:fusiontable>, [
    <botania:specialflower>.withTag({type: "manastar"}),
    <botania:platform>,
    <contenttweaker:alchemical_frame>,
    <contenttweaker:alchemical_corecomponents>,
    <contenttweaker:alchemical_plate>]);

//炼金板
Pyre.addRecipe("contenttweaker/Pyre/alchemical_plate", <contenttweaker:alchemical_plate>, [
    <botania:managlass>,
    <botania:manabottle>,
    <skyresources:alchemyitemcomponent:2>,
    <botania:livingwood:5>,
    <botania:livingwood:5>]);
