##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     实用拓展 工作台合成
##================================================
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import scripts.AnildebrainUtils.ModLoader.isInvalid;

function init()
{
    recipesInit();
}

function recipesInit()
{
    //煤炭发电机
    recipes.remove(<actuallyadditions:block_coal_generator>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<ore:plateSteel>, <skyresources:alchemyitemcomponent:6>, <ore:plateSteel>],
        [<ore:plateSteel>, <immersiveengineering:metal_device1:2>, <ore:plateSteel>],
        [<ore:plateSteel>, <skyresources:alchemyitemcomponent:6>, <ore:plateSteel>]])
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<actuallyadditions:block_coal_generator>)
      .create();
    
    //木质框架
    recipes.remove(<actuallyadditions:block_misc:4>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>],
        [<ore:stickWood>, <skyresources:casing>, <ore:stickWood>],
        [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>]])
      .addTool(<ore:artisansToolWood>, 1)
      .addOutput(<actuallyadditions:block_misc:4>)
      .create();
    
    //板条箱 小
    recipes.remove(<actuallyadditions:block_giant_chest>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<ore:chestWood>, <ore:plankWood>, <ore:chestWood>],
        [<ore:plankWood>, <actuallyadditions:block_misc:4>, <ore:plankWood>],
        [<ore:chestWood>, <ore:plankWood>, <ore:chestWood>]])
      .addTool(<ore:artisansToolWood>, 1)
      .addOutput(<actuallyadditions:block_giant_chest>)
      .create();

    //板条箱 中
    recipes.remove(<actuallyadditions:block_giant_chest_medium>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<minecraft:coal_block>, <actuallyadditions:block_misc:4>, <minecraft:coal_block>],
        [<actuallyadditions:block_misc:4>, <actuallyadditions:block_giant_chest>, <actuallyadditions:block_misc:4>],
        [<minecraft:coal_block>, <actuallyadditions:block_misc:4>, <minecraft:coal_block>]])
      .addTool(<ore:artisansToolWood>, 1)
      .addOutput(<actuallyadditions:block_giant_chest_medium>)
      .create();
    
    //板条箱 大
    recipes.remove(<actuallyadditions:block_giant_chest_large>);
    RecipeBuilder.get("carpenter")
      .setShaped([
        [<skyresources:coalinfusedblock>, <actuallyadditions:block_misc:4>, <skyresources:coalinfusedblock>],
        [<actuallyadditions:block_misc:4>, <actuallyadditions:block_giant_chest_medium>, <actuallyadditions:block_misc:4>],
        [<skyresources:coalinfusedblock>, <actuallyadditions:block_misc:4>, <skyresources:coalinfusedblock>]])
      .addTool(<ore:artisansToolWood>, 1)
      .addOutput(<actuallyadditions:block_giant_chest_large>)
      .create();
}

function itemRemove()
{
    itemHelper.removeItem(<actuallyadditions:item_bag>);
    itemHelper.removeItem(<actuallyadditions:item_void_bag>);
}

if (!isInvalid)
{
    init();
}