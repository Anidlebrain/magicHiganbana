##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     合成拓展 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    recipesInit();
}

function recipesInit()
{
    
    //黑铁锭
    recipes.remove(<extendedcrafting:material>);
    RecipeBuilder.get("blacksmith")
      .setShapeless([<ore:dustCharcoal>, <ore:dustCharcoal>, <ore:dustCharcoal>, <ore:ingotIron>])
      .addTool(<ore:artisansRazor>, 1)
      .addOutput(<extendedcrafting:material>)
      .create();

    //基础合成组件
    recipes.remove(<extendedcrafting:material:14>);
    RecipeBuilder.get("blacksmith")
      .setShapeless([<extendedcrafting:material:2>, <extendedcrafting:material:7>, <ore:plateIron>, <ore:plateIron>])
      .addTool(<ore:artisansRazor>, 1)
      .addOutput(<extendedcrafting:material:14>)
      .create();

    //基础工作台
    recipes.remove(<extendedcrafting:table_basic>);
    RecipeBuilder.get("basic")
      .setShaped([
        [<extendedcrafting:material:14>, <contenttweaker:basic_synthetic_gem>, <extendedcrafting:material:14>],
        [<contenttweaker:basic_synthetic_gem>, <artisanworktables:worktable:5>, <contenttweaker:basic_synthetic_gem>],
        [<extendedcrafting:material:14>, <contenttweaker:basic_synthetic_gem>, <extendedcrafting:material:14>]])
      .addTool(<ore:artisansRazor>, 1)
      .addOutput(<extendedcrafting:table_basic>)
      .create();
}

function itemRemove()
{
    
    itemHelper.removeItem(<extendedcrafting:table_basic>);
    itemHelper.removeItem(<extendedcrafting:table_advanced>);
    itemHelper.removeItem(<extendedcrafting:table_elite>);
    itemHelper.removeItem(<extendedcrafting:table_ultimate>);
}

if (!isInvalid)
{
    init();
}