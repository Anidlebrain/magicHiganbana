##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     林业 热电子加工          ##
##################################################
#priority 2000
import mods.forestry.ThermionicFabricator;
//mods.forestry.ThermionicFabricator.removeCast(IIngredient product);
//mods.forestry.ThermionicFabricator.addCast(IItemStack output, IIngredient[][] ingredients, ILiquidStack liquidStack, @Optional IItemStack plan);
//ThermionicFabricator.addCast(<minecraft:glass_pane> * 4, [[<minecraft:dirt>,<ore:fusedQuartz>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<ore:fusedQuartz>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<ore:fusedQuartz>,<ore:fusedQuartz>]], <liquid: glass> * 200);
//mods.forestry.ThermionicFabricator.removeCast(IIngredient product);
//mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:5>);
//铜电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes>, [
    [<ore:plateCopper>, <ore:fusedQuartz>, <ore:plateCopper>], 
    [<appliedenergistics2:material:13>, <ore:ingotCopper>, <appliedenergistics2:material:15>], 
    [<ore:plateCopper>, <ore:fusedQuartz>, <ore:plateCopper>]
    ], <liquid:glass> * 800);

//锡电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:1>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:1>, [
    [<ore:plateTin>, <ore:fusedQuartz>, <ore:plateTin>], 
    [<appliedenergistics2:material:13>, <ore:ingotTin>, <appliedenergistics2:material:15>], 
    [<ore:plateTin>, <ore:fusedQuartz>, <ore:plateTin>]
    ], <liquid:glass> * 800);

//青铜电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:2>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:2>, [
    [<ore:platebronze>, <ore:fusedQuartz>, <ore:platebronze>], 
    [<appliedenergistics2:material:13>, <ore:ingotBronze>, <appliedenergistics2:material:15>], 
    [<ore:platebronze>, <ore:fusedQuartz>, <ore:platebronze>]
    ], <liquid:glass> * 800);

//金电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:4>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:4>, [
    [<ore:plateGold>, <ore:fusedQuartz>, <ore:plateGold>], 
    [<appliedenergistics2:material:13>, <ore:ingotGold>, <appliedenergistics2:material:15>], 
    [<ore:plateGold>, <ore:fusedQuartz>, <ore:plateGold>]
    ], <liquid:glass> * 800);

//钻石电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:5>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:5>, [
    [<ore:plateDiamond>, <ore:fusedQuartz>, <ore:plateDiamond>], 
    [<appliedenergistics2:material:13>, <item:minecraft:diamond>, <appliedenergistics2:material:15>], 
    [<ore:plateDiamond>, <ore:fusedQuartz>, <ore:plateDiamond>]
    ], <liquid:glass> * 800);

//黑曜石电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:6>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:6>, [
    [<ore:plateObsidian>, <ore:fusedQuartz>, <ore:plateObsidian>], 
    [<appliedenergistics2:material:13>, <item:minecraft:obsidian>, <appliedenergistics2:material:15>], 
    [<ore:plateObsidian>, <ore:fusedQuartz>, <ore:plateObsidian>]
    ], <liquid:glass> * 800);

//烈焰电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:7>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:7>, [
    [<item:tconstruct:firewood:1>, <ore:fusedQuartz>, <item:tconstruct:firewood:1>], 
    [<appliedenergistics2:material:13>, <item:minecraft:blaze_rod>, <appliedenergistics2:material:15>], 
    [<item:tconstruct:firewood:1>, <ore:fusedQuartz>, <item:tconstruct:firewood:1>]
    ], <liquid:glass> * 800);

//烈焰电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:7>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:7>, [
    [<item:techreborn:rubber_log>, <ore:fusedQuartz>, <item:techreborn:rubber_log>], 
    [<appliedenergistics2:material:13>, <item:techreborn:part:32>, <appliedenergistics2:material:15>], 
    [<item:techreborn:rubber_log>, <ore:fusedQuartz>, <item:techreborn:rubber_log>]
    ], <liquid:glass> * 800);

//橡胶电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:8>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:6>, [
    [<ore:plateObsidian>, <ore:fusedQuartz>, <ore:plateObsidian>], 
    [<appliedenergistics2:material:13>, <item:minecraft:obsidian>, <appliedenergistics2:material:15>], 
    [<ore:plateObsidian>, <ore:fusedQuartz>, <ore:plateObsidian>]
    ], <liquid:glass> * 800);

//绿宝石电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:9>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:6>, [
    [<ore:plateEmerald>, <ore:fusedQuartz>, <ore:plateEmerald>], 
    [<appliedenergistics2:material:13>, <item:minecraft:emerald>, <appliedenergistics2:material:15>], 
    [<ore:plateEmerald>, <ore:fusedQuartz>, <ore:plateEmerald>]
    ], <liquid:glass> * 800);

//黑曜石电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:10>);
/*
ThermionicFabricator.addCast(<forestry:thermionic_tubes:6>, [
    [<ore:plateObsidian>, <ore:fusedQuartz>, <ore:plateObsidian>], 
    [<appliedenergistics2:material:13>, <item:minecraft:obsidian>, <appliedenergistics2:material:15>], 
    [<ore:plateObsidian>, <ore:fusedQuartz>, <ore:plateObsidian>]
    ], <liquid:glass> * 800);
*/

//青金石电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:11>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:11>, [
    [<ore:plateLapis>, <ore:fusedQuartz>, <ore:plateLapis>], 
    [<appliedenergistics2:material:13>, <ore:blockLapis>, <appliedenergistics2:material:15>], 
    [<ore:plateLapis>, <ore:fusedQuartz>, <ore:plateLapis>]
    ], <liquid:glass> * 800);

//末影电子管
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:12>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:11>, [
    [<ore:plateEnderium>, <ore:fusedQuartz>, <ore:plateEnderium>], 
    [<appliedenergistics2:material:13>, <ore:ingotEnderium>, <appliedenergistics2:material:15>], 
    [<ore:plateEnderium>, <ore:fusedQuartz>, <ore:plateEnderium>]
    ], <liquid:glass> * 800);

//共振仪
recipes.remove(<extrautils2:resonator>);
ThermionicFabricator.addCast(<extrautils2:resonator>, [
    [<ore:plateEnderium>, <ore:fusedQuartz>, <ore:plateEnderium>], 
    [<appliedenergistics2:material:13>, <ore:ingotEnderium>, <appliedenergistics2:material:15>], 
    [<ore:plateEnderium>, <ore:fusedQuartz>, <ore:plateEnderium>]
    ], <liquid:tree_oil> * 600);
