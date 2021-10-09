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
    
    //通灵之匙
    RecipeBuilder.get("jeweler")
      .setShaped([
        [<randomthings:ingredient:3>, <randomthings:ingredient:3>, <randomthings:ingredient:3>, null, null],
        [<randomthings:ingredient:3>, <actuallyadditions:block_crystal_empowered:2>, null, null, null],
        [<randomthings:ingredient:3>, null, <contenttweaker:space_key>, null, null],
        [null, null, null, <actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal_empowered:2>],
        [null, null, null, <actuallyadditions:block_crystal_empowered:2>, <randomthings:ingredient:3>]])
      .setSecondaryIngredients([<astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent>, 
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent>])
      .addTool(<ore:artisansPencil>, 1)
      .addTool(<ore:artisansLens>, 1)
      .addTool(<ore:artisansGemCutter>, 1)
      .addOutput(<randomthings:spectrekey>)
      .create();
    
    
}

if (!isInvalid)
{
    init();
}