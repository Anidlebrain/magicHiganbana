#priority 2000
import scripts.CraftTweaker.myFunction.RecipesBase.addRecopes as addRecopes;

//潘马斯农场 工作台合成物品 by https://www.mcmod.cn/post/1408.html

//烧烤菠萝蜜
recipes.addShapeless(<harvestcraft:bbqjackfruititem>, 
	[<ore:toolSkillet>.reuse(), <ore:cropJackfruit>, <ore:foodBbqsauce>]
);

//香肠面包，和油炸玉米饼冲突，面包改为香肠面包
recipes.addShapeless(<harvestcraft:bratwurstitem>, 
	[<ore:toolCuttingboard>.reuse(), <ore:foodPorksausage>, <ore:foodPickles>, <ore:cropOnion>, <ore:foodSausageinbread>]
);

//瑞典肉丸，原版香料叶矿辞为foodSpiceleaf
recipes.addShapeless(<harvestcraft:swedishmeatballsitem>, 
	[<ore:toolSaucepan>.reuse(), <ore:foodGroundbeef>, <ore:foodFlour>, <ore:cropSpiceleaf>, <ore:foodGroundnutmeg>, <ore:listAllheavycream>, <ore:foodBlackpepper>, <ore:cropOnion>, <ore:listAllegg>]
);

//酱汁碳烤羊肉，原版香料叶矿辞为foodSpiceleaf，酸奶无法使用listallyogurt，改为原味酸奶foodPlainyogurt
recipes.addShapeless(<harvestcraft:saucedlambkebabitem>, 
	[<ore:toolMixingbowl>.reuse(), <ore:foodLambkebab>, <ore:foodPlainyogurt>, <ore:listAllheavycream>, <ore:cropGarlic>, <ore:cropSpiceleaf>]
);

//酥炸小肉排
recipes.addShapeless(<harvestcraft:schnitzelitem>, 
	[<ore:toolSkillet>.reuse(), <ore:listAllporkraw>, <ore:foodFlour>, <ore:cropLemon>, <ore:foodBlackpepper>]
);
recipes.addShapeless(<harvestcraft:schnitzelitem>, 
	[<ore:toolSkillet>.reuse(), <ore:listAllmuttonraw>, <ore:foodFlour>, <ore:cropLemon>, <ore:foodBlackpepper>]
);

//模拟蟹肉棒
recipes.addShapeless(<harvestcraft:imitationcrabsticksitem>, 
	[<ore:toolCuttingboard>.reuse(), <ore:listAllgrain>, <ore:listAllfishcooked>, <ore:listAllegg>, <minecraft:dye:1>]
);

//荔枝茶
recipes.addShapeless(<harvestcraft:lycheeteaitem>, 
	[<ore:toolPot>.reuse(), <ore:cropLychee>, <ore:cropTea>, <ore:listAllwater>]
);

//猪油渣，由于猪皮没了，改成猪肉+砧板返还猪肉馅
recipes.addShapeless(<harvestcraft:cracklinsitem>, 
	[<ore:toolPot>.reuse(), <ore:toolCuttingboard>.reuse(), <ore:listAllporkraw>, <ore:foodOliveoil>, <minecraft:porkchop>.giveBack(<harvestcraft:groundporkitem>), <ore:cropSpiceleaf>]
);

//猪肉剥，由于猪皮没了，改成猪肉+砧板返还猪肉馅
recipes.addShapeless(<harvestcraft:porkrindsitem>, 
	[<ore:toolPot>.reuse(), <ore:toolCuttingboard>.reuse(), <minecraft:porkchop>.giveBack(<harvestcraft:groundporkitem>), <ore:foodOliveoil>, <ore:foodSalt>, <ore:foodBlackpepper>]
);
recipes.addShapeless(<harvestcraft:porkrindsitem>, 
	[<ore:toolPot>.reuse(), <ore:toolCuttingboard>.reuse(), <minecraft:porkchop>.giveBack(<harvestcraft:groundporkitem>), <ore:foodOliveoil>, <ore:itemSalt>, <ore:foodBlackpepper>]
);
recipes.addShapeless(<harvestcraft:porkrindsitem>, 
	[<ore:toolPot>.reuse(), <ore:toolCuttingboard>.reuse(), <minecraft:porkchop>.giveBack(<harvestcraft:groundporkitem>), <ore:foodOliveoil>, <ore:dustSalt>, <ore:foodBlackpepper>]
);

//蒜蓉牛排，原版香料叶矿辞为foodSpiceleaf
recipes.addShapeless(<harvestcraft:garlicsteakitem>, 
	[<ore:toolSkillet>.reuse(), <ore:listAllbeefraw>, <ore:cropGarlic>, <ore:foodButter>, <ore:cropSpiceleaf>]
);

//小黄瓜种子
recipes.addShapeless(<harvestcraft:gigapickleseeditem>, 
	[<ore:foodGigapickle>]
);

//end file by https://www.mcmod.cn/post/1408.html