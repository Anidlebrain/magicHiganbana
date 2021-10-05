##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     随意作品 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;


function init()
{
    recipesInit();
}

function recipesInit()
{
    //隔音器
    recipes.remove(<randomthings:sounddampener>);
    RecipeBuilder.get("farmer")
      .setShaped(recipesUtils.centreCrossitem(<randomthings:portablesounddampener>, <thermalfoundation:rockwool:15>, <ore:plankWood>))
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<roots:imbuer>)
      .create();
    
    //时间之瓶
    recipes.remove(<randomthings:timeinabottle>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<ore:ingotDyonite>, <ore:ingotDyonite>, <ore:ingotDyonite>],
        [<ore:manaDiamond>, <naturesaura:clock_hand>, <ore:manaDiamond>],
        [<botanicadds:mana_lapis>, <ore:bVial>, <botanicadds:mana_lapis>]])
      .addTool(<ore:artisansGrimoire>, 1)
      .addOutput(<randomthings:timeinabottle>)
      .create();
}

if (!isInvalid)
{
    init();
}