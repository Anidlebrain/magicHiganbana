##===========================================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     潘马斯农场 工作台合成
##          [explain]:  部分代码参考：https://www.mcmod.cn/post/1408.html
##===========================================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass HarvestcraftRecipes {
    zenConstructor() {

    }

    function init() {
        recipesInit();
    }

    function recipesInit() {
        //烧烤菠萝蜜
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolSkillet>.reuse(), <ore:cropJackfruit>, <ore:foodBbqsauce>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:bbqjackfruititem>)
          .create();

        //香肠面包，和油炸玉米饼冲突，面包改为香肠面包
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolCuttingboard>.reuse(), <ore:foodPorksausage>, <ore:foodPickles>, <ore:cropOnion>, <ore:foodSausageinbread>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:bratwurstitem>)
          .create();

        //瑞典肉丸，原版香料叶矿辞为foodSpiceleaf
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolSaucepan>.reuse(), <ore:foodGroundbeef>, <ore:foodFlour>, <ore:cropSpiceleaf>, <ore:foodGroundnutmeg>, <ore:listAllheavycream>, <ore:foodBlackpepper>, <ore:cropOnion>, <ore:listAllegg>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:swedishmeatballsitem>)
          .create();

        //酱汁碳烤羊肉，原版香料叶矿辞为foodSpiceleaf，酸奶无法使用listallyogurt，改为原味酸奶foodPlainyogurt
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolMixingbowl>.reuse(), <ore:foodLambkebab>, <ore:foodPlainyogurt>, <ore:listAllheavycream>, <ore:cropGarlic>, <ore:cropSpiceleaf>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:saucedlambkebabitem>)
          .create();

        //酥炸小肉排
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolSkillet>.reuse(), <ore:listAllporkraw> | <ore:listAllmuttonraw>, <ore:foodFlour>, <ore:cropLemon>, <ore:foodBlackpepper>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<techreborn:cable:0>)
          .create();

        //模拟蟹肉棒
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolCuttingboard>.reuse(), <ore:listAllgrain>, <ore:listAllfishcooked>, <ore:listAllegg>, <minecraft:dye:1>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<techreborn:cable:0>)
          .create();

        //荔枝茶
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolPot>.reuse(), <ore:cropLychee>, <ore:cropTea>, <ore:listAllwater>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:lycheeteaitem>)
          .create();

        //猪油渣，由于猪皮没了，改成猪肉+砧板返还猪肉馅
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolPot>.reuse(), <ore:toolCuttingboard>.reuse(), <ore:listAllporkraw>, <ore:foodOliveoil>, <minecraft:porkchop>.giveBack(<harvestcraft:groundporkitem>), <ore:cropSpiceleaf>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<techreborn:cable:0>)
          .create();

        //猪肉剥，由于猪皮没了，改成猪肉+砧板返还猪肉馅
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolPot>.reuse(), <ore:toolCuttingboard>.reuse(), <minecraft:porkchop>.giveBack(<harvestcraft:groundporkitem>), <ore:foodOliveoil>, <ore:foodSalt>, <ore:foodBlackpepper>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:porkrindsitem>)
          .create();
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolPot>.reuse(), <ore:toolCuttingboard>.reuse(), <minecraft:porkchop>.giveBack(<harvestcraft:groundporkitem>), <ore:foodOliveoil>, <ore:itemSalt>, <ore:foodBlackpepper>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:porkrindsitem>)
          .create();
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolPot>.reuse(), <ore:toolCuttingboard>.reuse(), <minecraft:porkchop>.giveBack(<harvestcraft:groundporkitem>), <ore:foodOliveoil>, <ore:dustSalt>, <ore:foodBlackpepper>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:porkrindsitem>)
          .create();

        //蒜蓉牛排，原版香料叶矿辞为foodSpiceleaf
        RecipeBuilder.get("chef")
          .setShapeless([<ore:toolSkillet>.reuse(), <ore:listAllbeefraw>, <ore:cropGarlic>, <ore:foodButter>, <ore:cropSpiceleaf>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:garlicsteakitem>)
          .create();

        //小黄瓜种子
        RecipeBuilder.get("farmer")
          .setShapeless([<ore:foodGigapickle>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<harvestcraft:gigapickleseeditem>)
          .create();
    }
}