##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     懒人AE 福鲁伊克斯聚合器
##================================================
#priority 2000
import mods.threng.Aggregator;

Aggregator.removeRecipe(<threng:material:1>);
Aggregator.addRecipe(<threng:material:1>, <ore:dustFluix>, <ore:dustCharcoal>, <ore:itemSilicon>);

Aggregator.addRecipe(<techreborn:machine_frame>, <woot:stygianironplate> * 10, <ore:plateTin> * 10);

//共振红石水晶
recipes.remove(<extrautils2:ingredients>);
Aggregator.addRecipe(<extrautils2:ingredients>, <minecraft:redstone>, <threng:material:5>);