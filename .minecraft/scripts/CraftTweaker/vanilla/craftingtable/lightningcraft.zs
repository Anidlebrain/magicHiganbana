##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     雷电工艺 工作台合成
##================================================
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{
    //雷鸣块
    recipes.remove(<lightningcraft:metal_block>);
    recipes.remove(<lightningcraft:ingot>);
    recipes.remove(<lightningcraft:nugget>);
    

    //雷石
    recipes.remove(<lightningcraft:stone_block:1>);
    recipes.remove(<lightningcraft:stone_block:2>);
    recipes.remove(<lightningcraft:stone_block:9>);
    recipes.remove(<lightningcraft:stone_block:12>);

    //天域
    recipes.remove(<lightningcraft:ingot:1>);
    recipes.remove(<lightningcraft:dust:1>);
    recipes.remove(<lightningcraft:metal_block:1>);

    //神秘
    recipes.remove(<lightningcraft:ingot:2>);
    recipes.remove(<lightningcraft:dust:2>);
    recipes.remove(<lightningcraft:metal_block:2>);
    
}

function itemRemove()
{
    // 高尔夫球杆
    itemHelper.removeItem(<lightningcraft:golf_club>);
    itemHelper.removeItem(<lightningcraft:golf_club_gold>);
    itemHelper.removeItem(<patchouli:guide_book>.withTag({"patchouli:book": "lightningcraft:guide"}));
}


if (!isInvalid)
{
    init();
}



