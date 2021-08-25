##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     合成拓展 7×7 合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils;

//2级工厂拱顶石
recipes.remove(<woot:structure:7>);
mods.extendedcrafting.TableCrafting.addShaped(0, <woot:structure:7>, [
    [<woot:shard>, null, null, <woot:factorybase>, null, null, <woot:shard>], 
    [null, <woot:shard:4>, null, <woot:shard:4>, null, <woot:shard:4>, null], 
    [null, null, null, <woot:factorycore:6>, null, null, null], 
    [<woot:factorybase>, <woot:shard:4>, <woot:factorycore:6>, <ore:itemSkull>, <woot:factorycore:6>, <woot:shard:4>, <woot:factorybase>], 
    [null, null, null, <woot:factorycore:6>, null, null, null], 
    [null, <woot:shard:4>, null, <woot:shard:4>, null, <woot:shard:4>, null], 
    [<woot:shard>, null, null, <woot:factorybase>, null, null, <woot:shard>]
]);

//3级工厂拱顶石
recipes.remove(<woot:structure:8>);
mods.extendedcrafting.TableCrafting.addShaped(0, <woot:structure:8>, [
    [<woot:shard:1>, null, null, <woot:factorybase>, null, null, <woot:shard:1>], 
    [null, <woot:shard:5>, null, <woot:shard:5>, null, <woot:shard:5>, null], 
    [null, null, null, <woot:factorycore:6>, null, null, null], 
    [<woot:factorybase>, <woot:shard:5>, <woot:factorycore:6>, <ore:itemSkull>, <woot:factorycore:6>, <woot:shard:5>, <woot:factorybase>], 
    [null, null, null, <woot:factorycore:6>, null, null, null], 
    [null, <woot:shard:5>, null, <woot:shard:5>, null, <woot:shard:5>, null], 
    [<woot:shard:1>, null, null, <woot:factorybase>, null, null, <woot:shard:1>]
]);

//4级工厂拱顶石
recipes.remove(<woot:structure:9>);
mods.extendedcrafting.TableCrafting.addShaped(0, <woot:structure:9>, [
    [<woot:shard:3>, null, null, <woot:factorybase>, null, null, <woot:shard:3>], 
    [null, <woot:shard:6>, null, <woot:shard:6>, null, <woot:shard:6>, null], 
    [null, null, <woot:shard:3>, <woot:factorycore:6>, <woot:shard:3>, null, null], 
    [<woot:factorybase>, <woot:shard:6>, <woot:factorycore:6>, <ore:itemSkull>, <woot:factorycore:6>, <woot:shard:6>, <woot:factorybase>], 
    [null, null, <woot:shard:3>, <woot:factorycore:6>, <woot:shard:3>, null, null], 
    [null, <woot:shard:6>, null, <woot:shard:6>, null, <woot:shard:6>, null], 
    [<woot:shard:3>, null, null, <woot:factorybase>, null, null, <woot:shard:3>]
]);


//压缩空间制作器
recipes.remove(<compactmachines3:fieldprojector>);
mods.extendedcrafting.TableCrafting.addShaped(0, <compactmachines3:fieldprojector> * 2, [
    [null, null, null, null, null, <extrautils2:screen>, <extrautils2:screen>], 
    [null, null, null, null, null, <extrautils2:screen>, <extrautils2:screen>], 
    [null, null, null, <pneumaticcraft:redstone_module>, null, <extrautils2:screen>, <extrautils2:screen>], 
    [null, null, <pneumaticcraft:redstone_module>, <compactmachines3:psd>, <pneumaticcraft:redstone_module>, <extrautils2:screen>, <extrautils2:screen>], 
    [null, null, null, <pneumaticcraft:redstone_module>, <pneumaticcraft:assembly_controller>, <extrautils2:screen>, <extrautils2:screen>], 
    [<ore:plasticLightGray>, <ore:plasticLightGray>, <ore:plasticLightGray>, <pneumaticcraft:heat_sink>, <ore:plasticLightGray>, <ore:plasticLightGray>, <ore:plasticLightGray>], 
    [<ore:blockIronCompressed>, <ore:blockIronCompressed>, <ore:blockIronCompressed>, <ore:blockIronCompressed>, <ore:blockIronCompressed>, <ore:blockIronCompressed>, <ore:blockIronCompressed>]
]);

//精英合成组件
recipes.remove(<extendedcrafting:material:16>);
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:material:16>, [
    [null, null, null, null, <ore:plateDiamond>, null, null], 
    [null, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <ore:plateDiamond>, <extendedcrafting:material:2>, null], 
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>, <ore:plateCrystaltine>, <ore:plateDiamond>, <ore:plateDiamond>], 
    [null, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <ore:plateDiamond>, <extendedcrafting:material:2>, null], 
    [null, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <ore:plateDiamond>, <extendedcrafting:material:2>, null], 
    [null, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <ore:plateDiamond>, <extendedcrafting:material:2>, null], 
    [null, null, null, null, <ore:plateDiamond>, null, null]
]);


//精英催化剂
recipes.remove(<extendedcrafting:material:10>);
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:material:10>, [
    [null, null, null, <extendedcrafting:material:16>, null, null, null], 
    [null, null, <extendedcrafting:material:16>, <extendedcrafting:material:9>, <extendedcrafting:material:16>, null, null], 
    [null, <extendedcrafting:material:16>, <extendedcrafting:material:9>, <extendedcrafting:material:8>, <extendedcrafting:material:9>, <extendedcrafting:material:16>, null], 
    [<extendedcrafting:material:16>, <extendedcrafting:material:9>, <extendedcrafting:material:8>, <extendedcrafting:material:15>, <extendedcrafting:material:8>, <extendedcrafting:material:9>, <extendedcrafting:material:16>], 
    [null, <extendedcrafting:material:16>, <extendedcrafting:material:9>, <extendedcrafting:material:8>, <extendedcrafting:material:9>, <extendedcrafting:material:16>, null], 
    [null, null, <extendedcrafting:material:16>, <extendedcrafting:material:9>, <extendedcrafting:material:16>, null, null], 
    [null, null, null, <extendedcrafting:material:16>, null, null, null]
]);

//基础线圈
recipes.remove(<actuallyadditions:item_misc:7>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:item_misc:7>, [
    [null, null, null, null, null, <ore:plateWood>, null], 
    [null, null, null, null, <ore:wireCopper>, <ore:plateWood>, <ore:plateWood>], 
    [null, null, null, <ore:wireElectrum>, <ore:gemRedstone>, <ore:wireCopper>, null], 
    [null, null, <ore:wireElectrum>, <ore:gemQuartzBlack>, <ore:wireElectrum>, null, null], 
    [null, <ore:wireCopper>, <ore:gemRedstone>, <ore:wireElectrum>, null, null, null], 
    [<ore:plateWood>, <ore:plateWood>, <ore:wireCopper>, null, null, null, null], 
    [null, <ore:plateWood>, null, null, null, null, null]
]);

//高级线圈
recipes.remove(<actuallyadditions:item_misc:8>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:item_misc:8>, [
    [null, null, null, null, null, <thermalfoundation:material:515>, null], 
    [null, null, null, null, <ore:xuRedstoneCoil>, <thermalfoundation:material:514>, <thermalfoundation:material:515>], 
    [null, null, null, <ore:xuRedstoneCoil>, <thermalfoundation:material:513>, <ore:xuRedstoneCoil>, null], 
    [null, null, <ore:xuRedstoneCoil>, <actuallyadditions:item_misc:7>, <ore:xuRedstoneCoil>, null, null], 
    [null, <ore:xuRedstoneCoil>, <thermalfoundation:material:513>, <ore:xuRedstoneCoil>, null, null, null], 
    [<thermalfoundation:material:515>, <thermalfoundation:material:514>, <ore:xuRedstoneCoil>, null, null, null, null], 
    [null, <thermalfoundation:material:515>, null, null, null, null, null]
]);