##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     神秘时代 工作台合成
##================================================
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;

function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{
    recipesUtils.removeOreRecipes(<ore:nitor>);
    RecipeBuilder.get("mage")
      .setCopy(Copy.byOutput(<ore:nitor>.items))
      .addTool(<ore:artisansGrimoire>, 3)
      .create();
    
    recipes.remove(<thaumcraft:salis_mundus>);
}

function itemRemove()
{
    
}

if (!isInvalid)
{
    init();
}