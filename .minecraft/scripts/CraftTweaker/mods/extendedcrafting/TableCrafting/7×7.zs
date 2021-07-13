##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     合成拓展 7×7 合成        ##
##################################################
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



