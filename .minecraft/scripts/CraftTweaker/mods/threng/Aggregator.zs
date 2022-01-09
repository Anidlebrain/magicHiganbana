##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     懒人AE 福鲁伊克斯聚合器
##================================================
#modloaded higanbana
#priority 2000

import mods.threng.Aggregator;

Aggregator.removeRecipe(<threng:material:1>);
Aggregator.addRecipe(<threng:material:1>, <ore:dustFluix>, <ore:dustCharcoal>, <ore:itemSilicon>);

Aggregator.addRecipe(<techreborn:machine_frame>, <woot:stygianironplate> * 10, <ore:plateTin> * 10);