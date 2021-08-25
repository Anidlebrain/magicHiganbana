##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     生物工厂 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

zenClass WootRecipes {
    zenConstructor() {

    }

    function init() {
        recipesInit();
        itemRemove();
    }
    
    function recipesInit() {
        //ya锤
        recipes.remove(<woot:yahhammer>);
        recipesUtils.addRecipe(<woot:yahhammer>,
            [" AC",
             "BAA",
             "AB "],
            { A : <ore:stickTreatedWood>,
              B : <roots:fey_leather>,
              C : <woot:stygianironingot>}
        );

        //地狱铁矿
        recipes.remove(<woot:stygianironore>);

        //腐肉工厂方块
        recipes.remove(<woot:structure>);
        recipesUtils.addRecipe(<woot:structure>,
            ["ABA",
             "BCB",
             "ABA"],
            { A : <xreliquary:mob_ingredient:6>,
              B : <woot:factorybase>,
              C : <woot:factorycore>}
        );
        
        //骨头工厂方块
        recipes.remove(<woot:structure:1>);
        recipesUtils.addRecipe(<woot:structure:1>,
            ["ABA",
             "BCB",
             "ABA"],
            { A : <xreliquary:mob_ingredient>,
              B : <woot:factorybase>,
              C : <woot:factorycore>}
        );

        //烈焰工厂方块
        recipes.remove(<woot:structure:2>);
        recipesUtils.addRecipe(<woot:structure:2>,
            ["ABA",
             "BCB",
             "ABA"],
            { A : <xreliquary:mob_ingredient:7>,
              B : <woot:factorybase>,
              C : <woot:factorycore>}
        );

        //下界之心工厂方块
        recipes.remove(<woot:structure:4>);
        recipesUtils.addRecipe(<woot:structure:4>,
            ["ABA",
             "BCB",
             "ABA"],
            { A : <woot:shard:3>,
              B : <woot:factorybase>,
              C : <woot:factorycore>}
        );

        //地狱铁砧
        recipes.remove(<woot:anvil>);
        recipesUtils.addRecipe(<woot:anvil>,
            ["AAA",
             " A ",
             "BBB"],
            { A : <woot:stygianiron>,
              B : <ore:blockSkyStone>}
        );
        

        
    }

    function itemRemove() {
        
    }
}
