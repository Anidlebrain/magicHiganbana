##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     空岛资源 工作台合成
##================================================
#modloaded higanbana
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
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;


function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{

    //木制加热组件
    recipes.remove(<skyresources:heat>);
    RecipeBuilder.get("carpenter")
      .setShaped(recipesUtils.surroundItems(<tconstruct:pattern>, <botania:specialflower>.withTag({type: "endoflame"})))
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:heat>)
      .create();

    //石制 地狱砖 末地石 加热组件
    recipes.remove(<skyresources:heat:1>);
    recipes.remove(<skyresources:heat:6>);
    recipes.remove(<skyresources:heat:10>);
    RecipeBuilder.get("mason")
      .setShaped(recipesUtils.surroundItems(<minecraft:stone>, <skyresources:heat>))
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:heat:1>)
      .setRecipeFunction(
        function(out, ins, cInfo) 
        {
            val player as IPlayer = cInfo.player;
            if (isNull(player)) 
            {
                return <skyresources:heat:1>;
            }
            val world as IWorld = player.world;
            var dimension as int = world.getDimension();
            if (dimension == -1)
            {
                return <skyresources:heat:6>;
            }
            else if (dimension == 1)
            {
                return <skyresources:heat:10>;
            }
            else
            {
                return <skyresources:heat:1>;
            }
        })
      .create();

    //木制氧化加热器
    recipes.remove(<skyresources:combustionheater>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<ore:logWood>, <skyresources:heat>, <ore:logWood>],
        [<ore:logWood>, <roots:petals>, <ore:logWood>],
        [<ore:logWood>, <skyresources:heat>, <ore:logWood>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:combustionheater>)
      .create();

    //石制氧化加热器
    recipes.remove(<skyresources:combustionheater:1>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<minecraft:stone>, <skyresources:heat:1>, <minecraft:stone>],
        [<minecraft:stone>, <skyresources:combustionheater>, <minecraft:stone>],
        [<minecraft:stone>, <skyresources:heat:1>, <minecraft:stone>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:combustionheater:1>)
      .create();
    
    //地狱砖 氧化加热器
    recipes.remove(<skyresources:combustionheater:6>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<minecraft:nether_brick>, <skyresources:heat:6>, <minecraft:nether_brick>],
        [<minecraft:nether_brick>, <skyresources:combustionheater>, <minecraft:nether_brick>],
        [<minecraft:nether_brick>, <skyresources:heat:6>, <minecraft:nether_brick>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:combustionheater:6>)
      .setRecipeFunction(
        function(out, ins, cInfo)
        {
            val player as IPlayer = cInfo.player;
            if (isNull(player))
            {
                return <skyresources:combustionheater:1>;
            }
            val world as IWorld = player.world;
            var dimension as int = world.getDimension();
            if (dimension == -1)
            {
                return <skyresources:combustionheater:6>;
            }
            else
            {
                return <skyresources:combustionheater:1>;
            }
        }
        )
      .create();
    
    //末地石 氧化加热器
    recipes.remove(<skyresources:combustionheater:10>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<minecraft:end_stone>, <skyresources:heat:10>, <minecraft:end_stone>],
        [<minecraft:end_stone>, <skyresources:combustionheater>, <minecraft:end_stone>],
        [<minecraft:end_stone>, <skyresources:heat:10>, <minecraft:end_stone>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:combustionheater:10>)
      .setRecipeFunction(
        function(out, ins, cInfo)
        {
            val player as IPlayer = cInfo.player;
            if (isNull(player))
            {
                return <skyresources:combustionheater:1>;
            }
            val world as IWorld = player.world;
            var dimension as int = world.getDimension();
            if (dimension == 1)
            {
                return <skyresources:combustionheater:10>;
            }
            else
            {
                return <skyresources:combustionheater:1>;
            }
        })
      .create();
    
    //木制炼金组件
    recipes.remove(<skyresources:alchemy>);
    RecipeBuilder.get("carpenter")
      .setShaped(recipesUtils.surroundItems(<tconstruct:pattern>, <skyresources:alchemyitemcomponent:2>))
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:alchemy>)
      .create();

    //石制，地狱砖，末地石炼金组件
    recipes.remove(<skyresources:alchemy:1>);
    recipes.remove(<skyresources:alchemy:6>);
    recipes.remove(<skyresources:alchemy:10>);
    RecipeBuilder.get("mason")
      .setShaped(recipesUtils.surroundItems(<minecraft:stone>, <skyresources:alchemy>))
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:alchemy:1>)
      .setRecipeFunction(
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
        })
      .create();

    //木制冷凝器
    recipes.remove(<skyresources:condenser>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<ore:logWood>, <skyresources:alchemy>, <ore:logWood>],
        [<ore:logWood>, <minecraft:ice>, <ore:logWood>],
        [<ore:logWood>, <skyresources:alchemy>, <ore:logWood>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:condenser>)
      .create();

    //地狱砖冷凝器
    recipes.remove(<skyresources:condenser:6>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<minecraft:nether_brick>, <skyresources:alchemy:6>, <minecraft:nether_brick>],
        [<minecraft:nether_brick>, <skyresources:condenser>, <minecraft:nether_brick>],
        [<minecraft:nether_brick>, <skyresources:alchemy:6>, <minecraft:nether_brick>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:condenser:6>)
      .setRecipeFunction(
        function(out, ins, cInfo)
            {
                val player as IPlayer = cInfo.player;
                if (isNull(player))
                {
                    return <skyresources:condenser:1>;
                }
                val world as IWorld = player.world;
                var dimension as int = world.getDimension();
                if (dimension == -1)
                {
                    return <skyresources:condenser:6>;
                }
                else
                {
                    return <skyresources:condenser:1>;
                }
            }
        )
      .create();

    //末地石冷凝器
    recipes.remove(<skyresources:condenser:10>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<minecraft:end_stone>, <skyresources:alchemy:10>, <minecraft:end_stone>],
        [<minecraft:end_stone>, <skyresources:condenser>, <minecraft:end_stone>],
        [<minecraft:end_stone>, <skyresources:alchemy:10>, <minecraft:end_stone>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:condenser:10>)
      .setRecipeFunction(
        function(out, ins, cInfo)
        {
            val player as IPlayer = cInfo.player;
            if (isNull(player))
            {
                return <skyresources:condenser:1>;
            }
            val world as IWorld = player.world;
            var dimension as int = world.getDimension();
            if (dimension == 1)
            {
                return <skyresources:condenser:10>;
            }
            else
            {
                return <skyresources:condenser:1>;
            }
        })
      .create();


    //石制冷凝器
    recipes.remove(<skyresources:condenser:1>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<minecraft:stone>, <skyresources:alchemy:1>, <minecraft:stone>],
        [<minecraft:stone>, <skyresources:condenser>, <minecraft:stone>],
        [<minecraft:stone>, <skyresources:alchemy:1>, <minecraft:stone>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:condenser:1>)
      .create();
    

    //木制框架
    recipes.remove(<skyresources:casing>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<ore:logWood>, <ore:gearWood>, <ore:logWood>],
        [<ore:gearWood>, null, <ore:gearWood>],
        [<ore:logWood>, <ore:gearWood>, <ore:logWood>]])
      .addOutput(<skyresources:casing>)
      .create();

    //石制框架 地狱岩 末地石
    recipes.remove(<skyresources:casing:1>);
    recipes.remove(<skyresources:casing:6>);
    recipes.remove(<skyresources:casing:10>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<minecraft:stone>, <ore:gearStone>, <minecraft:stone>],
        [<ore:gearStone>, <skyresources:casing>, <ore:gearStone>],
        [<minecraft:stone>, <ore:gearStone>, <minecraft:stone>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:casing:1>)
      .setRecipeFunction(
        function(out, ins, cInfo)
        {
            val player as IPlayer = cInfo.player;
            if (isNull(player))
            {
                return <skyresources:casing:1>;
            }
            val world as IWorld = player.world;
            var dimension as int = world.getDimension();
            if (dimension == -1)
            {
                return <skyresources:casing:6>;
            }
            else if (dimension == 1)
            {
                return <skyresources:casing:10>;
            }
            else
            {
                return <skyresources:casing:1>;
            }
        })
      .create();

    //木制热量供应器
    recipes.remove(<skyresources:heatprovider>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<ore:logWood>, <skyresources:heat>, <ore:logWood>],
        [<ore:logWood>, <skyresources:dirtfurnace>, <ore:logWood>],
        [<ore:logWood>, <skyresources:heat>, <ore:logWood>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:heatprovider>)
      .create();

    //石制热量供应器
    recipes.remove(<skyresources:heatprovider:1>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<minecraft:stone>, <skyresources:heat:1>, <minecraft:stone>],
        [<minecraft:stone>, <skyresources:heatprovider>, <minecraft:stone>],
        [<minecraft:stone>, <skyresources:heat:1>, <minecraft:stone>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:heatprovider:1>)
      .create();
    
    //地狱砖热量供应器
    recipes.remove(<skyresources:heatprovider:6>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<minecraft:nether_brick>, <skyresources:heat:6>, <minecraft:nether_brick>],
        [<minecraft:nether_brick>, <skyresources:heatprovider>, <minecraft:nether_brick>],
        [<minecraft:nether_brick>, <skyresources:heat:6>, <minecraft:nether_brick>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:heatprovider:6>)
      .setRecipeFunction(
        function(out, ins, cInfo)
        {
            val player as IPlayer = cInfo.player;
            if (isNull(player))
            {
                return <skyresources:heatprovider:1>;
            }
            val world as IWorld = player.world;
            var dimension as int = world.getDimension();
            if (dimension == -1)
            {
                return <skyresources:heatprovider:6>;
            }
            else
            {
                return <skyresources:heatprovider:1>;
            }
        })
      .create();

    //末地石热量供应器
    recipes.remove(<skyresources:heatprovider:10>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<minecraft:end_stone>, <skyresources:heat:10>, <minecraft:end_stone>],
        [<minecraft:end_stone>, <skyresources:heatprovider>, <minecraft:end_stone>],
        [<minecraft:end_stone>, <skyresources:heat:10>, <minecraft:end_stone>]])
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<skyresources:heatprovider:10>)
      .setRecipeFunction(
        function(out, ins, cInfo)
        {
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
        })
      .create();

    //泥炉
    recipes.remove(<skyresources:dirtfurnace>);
    RecipeBuilder.get("basic")
      .setShaped(recipesUtils.surroundItems(<minecraft:dirt>, null))
      .addOutput(<skyresources:dirtfurnace>)
      .create();

    //漏液器
    recipes.remove(<skyresources:fluiddropper>);
    RecipeBuilder.get("basic")
      .setShaped([
        [<prodigytech:ash_bricks>, <prodigytech:ash_bricks>, <prodigytech:ash_bricks>],
        [<prodigytech:ash_bricks>, null, <prodigytech:ash_bricks>],
        [<prodigytech:ash_bricks>, null, <prodigytech:ash_bricks>]])
      .addOutput(<skyresources:fluiddropper>)
      .create();

    //坩埚
    recipes.remove(<skyresources:crucible>);
    RecipeBuilder.get("basic")
      .setShaped([
        [<minecraft:brick_block>, null, <minecraft:brick_block>],
        [<minecraft:brick_block>, null, <minecraft:brick_block>],
        [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]])
      .addOutput(<skyresources:crucible>)
      .create();

    //生存者钓鱼竿
    recipes.remove(<skyresources:survivalistfishingrod>);
    RecipeBuilder.get("farmer")
      .setShaped([
        [null, null, <botania:manaresource:3>],
        [null, <botania:manaresource:3>, <botania:manaresource:16>],
        [<botania:manaresource:3>, null, <botania:manaresource:1>]])
      .addOutput(<skyresources:survivalistfishingrod>)
      .create();

    //赫耳墨斯之金针
    recipes.remove(<skyresources:alchemyitemcomponent:9>);
    RecipeBuilder.get("blacksmith")
      .setShaped(recipesUtils.surroundItems(<skyresources:alchemyitemcomponent>, <skyresources:alchemyitemcomponent:7>))
      .addTool(<ore:artisansHammer>, 8)
      .addOutput(<skyresources:alchemyitemcomponent:9>)
      .create();
    
}

function itemRemove()
{
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

if (!isInvalid)
{
    init();
}