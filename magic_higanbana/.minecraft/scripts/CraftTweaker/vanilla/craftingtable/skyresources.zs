##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     空岛资源 工作台合成
##================================================

#priority 2000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.ctutils.world.World;
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import mods.ctutils.player.Player;
import crafttweaker.world.IWorld;
import crafttweaker.recipes.IRecipeFunction;
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

zenClass SkyresourcesRecipes {
    zenConstructor() {

    }

    function init() {
        recipesInit();
        itemRemove();
    }
    
    function recipesInit() {

        //木制加热组件
        recipes.remove(<skyresources:heat>);
        recipesUtils.addRecipe(<skyresources:heat>,
            ["AAA",
             "ABA",
             "AAA"],
            { A : <tconstruct:pattern>,
              B : <botania:specialflower>.withTag({type: "endoflame"})});

        //石制 地狱砖 末地石 加热组件
        recipes.remove(<skyresources:heat:1>);
        recipes.remove(<skyresources:heat:6>);
        recipes.remove(<skyresources:heat:10>);
        recipesUtils.addRecipe(<skyresources:heat:1>,
            ["AAA",
             "ABA",
             "AAA"],
            { A : <minecraft:stone>,
              B : <skyresources:heat>},
            function(out, ins, cInfo) {
                val player as IPlayer = cInfo.player;
                if (isNull(player)) {
                    return <skyresources:heat:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == -1) {
                    return <skyresources:heat:6>;
                }
                else if (dimension == 1) {
                    return <skyresources:heat:10>;
                }
                else {
                    return <skyresources:heat:1>;
                }
            });

        //木制氧化加热器
        recipes.remove(<skyresources:combustionheater>);
        recipesUtils.addRecipe(<skyresources:combustionheater>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <ore:logWood>,
              B : <roots:petals>,
              C : <skyresources:heat>});

        //石制氧化加热器
        recipes.remove(<skyresources:combustionheater:1>);
        recipesUtils.addRecipe(<skyresources:combustionheater:1>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <minecraft:stone>,
              B : <skyresources:combustionheater>,
              C : <skyresources:heat:1>});
        
        //地狱砖 氧化加热器
        recipes.remove(<skyresources:combustionheater:6>);
        recipesUtils.addRecipe(<skyresources:combustionheater:6>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <minecraft:nether_brick>,
              B : <skyresources:combustionheater>,
              C : <skyresources:heat:6>},
            function(out, ins, cInfo) {
                val player as IPlayer = cInfo.player;
                if (isNull(player)) {
                    return <skyresources:combustionheater:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == -1) {
                    return <skyresources:combustionheater:6>;
                }
                else {
                    return <skyresources:combustionheater:1>;
                }
            });
        
        //末地石 氧化加热器
        recipes.remove(<skyresources:combustionheater:10>);
        recipesUtils.addRecipe(<skyresources:combustionheater:10>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <minecraft:end_stone>,
              B : <skyresources:combustionheater>,
              C : <skyresources:heat:10>},
            function(out, ins, cInfo) {
                val player as IPlayer = cInfo.player;
                if (isNull(player)) {
                    return <skyresources:heat:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == 1) {
                    return <skyresources:combustionheater:10>;
                }
                else {
                    return <skyresources:heat:1>;
                }
            });
        
        //木制炼金组件
        recipes.remove(<skyresources:alchemy>);
        recipesUtils.addRecipe(<skyresources:alchemy>,
            ["AAA",
             "ABA",
             "AAA"],
            { A : <tconstruct:pattern>,
              B : <skyresources:alchemyitemcomponent:2>});

        //石制，地狱砖，末地石炼金组件
        recipes.remove(<skyresources:alchemy:1>);
        recipes.remove(<skyresources:alchemy:6>);
        recipes.remove(<skyresources:alchemy:10>);
        recipesUtils.addRecipe(<skyresources:alchemy:1>,
            ["AAA",
             "ABA",
             "AAA"],
            { A : <minecraft:stone>,
              B : <skyresources:alchemy>},
            function(out, ins, cInfo) {
                val player as IPlayer = cInfo.player;
                if (isNull(player)) {
                    return <skyresources:alchemy:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == -1) {
                    return <skyresources:alchemy:6>;
                }
                else if (dimension == 1) {
                    return <skyresources:alchemy:10>;
                }
                else {
                    return <skyresources:alchemy:1>;
                }
            });

        //木制冷凝器
        recipes.remove(<skyresources:condenser>);
        recipesUtils.addRecipe(<skyresources:condenser>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <ore:logWood>,
              B : <minecraft:ice>,
              C : <skyresources:alchemy>});

        //地狱砖冷凝器
        recipes.remove(<skyresources:condenser:6>);
        recipesUtils.addRecipe(<skyresources:condenser:6>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <minecraft:nether_brick>,
              B : <skyresources:condenser>,
              C : <skyresources:alchemy:6>},
            function(out, ins, cInfo) {
                val player as IPlayer = cInfo.player;
                if (isNull(player)) {
                    return <skyresources:condenser:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == -1) {
                    return <skyresources:condenser:6>;
                }
                else {
                    return <skyresources:condenser:1>;
                }
            });

        //末地石冷凝器
        recipes.remove(<skyresources:condenser:10>);
        recipesUtils.addRecipe(<skyresources:condenser:10>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <minecraft:end_stone>,
              B : <skyresources:condenser>,
              C : <skyresources:alchemy:10>},
            function(out, ins, cInfo) {
                val player as IPlayer = cInfo.player;
                if (isNull(player)) {
                    return <skyresources:condenser:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == 1) {
                    return <skyresources:condenser:10>;
                }
                else {
                    return <skyresources:condenser:1>;
                }
            });

        //石制冷凝器
        recipes.remove(<skyresources:condenser:1>);
        recipesUtils.addRecipe(<skyresources:condenser:1>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <minecraft:stone>,
              B : <skyresources:condenser>,
              C : <skyresources:alchemy:1>});
        

        //木制框架
        recipes.remove(<skyresources:casing>);
        recipesUtils.addRecipe(<skyresources:casing>,
            ["ACA",
             "C C",
             "ACA"],
            { A : <ore:logWood>,
              C : <ore:gearWood>});

        //石制框架 地狱岩 末地石
        recipes.remove(<skyresources:casing:1>);
        recipes.remove(<skyresources:casing:6>);
        recipes.remove(<skyresources:casing:10>);
        recipesUtils.addRecipe(<skyresources:casing:1>,
            ["ACA",
             "CBC",
             "ACA"],
            { A : <minecraft:stone>,
              B : <skyresources:casing>,
              C : <ore:gearStone>},
            function(out, ins, cInfo) {
                val player as IPlayer = cInfo.player;
                if (isNull(player)) {
                    return <skyresources:casing:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == -1) {
                    return <skyresources:casing:6>;
                }
                else if (dimension == 1) {
                    return <skyresources:casing:10>;
                }
                else {
                    return <skyresources:casing:1>;
                }
            });


        //木制热量供应器
        recipes.remove(<skyresources:heatprovider>);
        recipesUtils.addRecipe(<skyresources:heatprovider>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <ore:logWood>,
              B : <skyresources:dirtfurnace>,
              C : <skyresources:heat>});

        //石制热量供应器
        recipes.remove(<skyresources:heatprovider:1>);
        recipesUtils.addRecipe(<skyresources:heatprovider:1>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <minecraft:stone>,
              B : <skyresources:heatprovider>,
              C : <skyresources:heat:1>});
        
        //地狱砖热量供应器
        recipes.remove(<skyresources:heatprovider:6>);
        recipesUtils.addRecipe(<skyresources:heatprovider:6>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <minecraft:nether_brick>,
              B : <skyresources:heatprovider>,
              C : <skyresources:heat:6>},
            function(out, ins, cInfo) {
                val player as IPlayer = cInfo.player;
                if (isNull(player)) {
                    return <skyresources:heatprovider:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == -1) {
                    return <skyresources:heatprovider:6>;
                }
                else {
                    return <skyresources:heatprovider:1>;
                }
            });
        
        //末地石热量供应器
        recipes.remove(<skyresources:heatprovider:10>);
        recipesUtils.addRecipe(<skyresources:heatprovider:10>,
            ["ACA",
             "ABA",
             "ACA"],
            { A : <minecraft:end_stone>,
              B : <skyresources:heatprovider>,
              C : <skyresources:heat:10>},
            function(out, ins, cInfo) {
                val player as IPlayer = cInfo.player;
                if (isNull(player)) {
                    return <skyresources:heatprovider:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == 1) {
                    return <skyresources:heatprovider:10>;
                }
                else {
                    return <skyresources:heatprovider:1>;
                }
            });

        //泥炉
        recipes.remove(<skyresources:dirtfurnace>);
        recipesUtils.addRecipe(<skyresources:dirtfurnace>,
            ["AAA",
             "A A",
             "AAA"],
            { A : <minecraft:dirt>});
            
        //漏液器
        recipes.remove(<skyresources:fluiddropper>);
        recipesUtils.addRecipe(<skyresources:fluiddropper>,
            ["AAA",
             "A A",
             "A A"],
            { A : <prodigytech:ash_bricks>});

        //坩埚
        recipes.remove(<skyresources:crucible>);
        recipesUtils.addRecipe(<skyresources:crucible>,
            ["A A",
             "A A",
             "AAA"],
            { A : <minecraft:brick_block>});

        //生存者钓鱼竿
        recipes.remove(<skyresources:survivalistfishingrod>);
        recipesUtils.addRecipe(<skyresources:survivalistfishingrod>,
            ["  A",
             " AB",
             "A C"],
            { A : <botania:manaresource:3>,
              B : <botania:manaresource:16>,
              C : <botania:manaresource:1>});
        
        //赫耳墨斯之金针
        recipes.remove(<skyresources:alchemyitemcomponent:9>);
        recipesUtils.addRecipe(<skyresources:alchemyitemcomponent:9>,
            ["BAB",
             "BAB",
             "BAB"],
            { A : <skyresources:alchemyitemcomponent>,
              B : <skyresources:alchemyitemcomponent:7>});
    }
    
    function itemRemove() {
        //烈焰粉块
        itemHelper.removeItem(<skyresources:blazepowderblock>);
        //秘银
        itemHelper.removeItem(<skyresources:orealchdust:21>);
        //碎石杵
        //itemHelper.removeItem(<skyresources:stonegrinder>);
        //itemHelper.removeItem(<skyresources:irongrinder>);
        //itemHelper.removeItem(<skyresources:diamondgrinder>);
        //海蓝宝石
        itemHelper.removeItem(<skyresources:dirtygem:17>);
        
        
    }

}