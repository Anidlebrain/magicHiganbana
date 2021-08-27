##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     合成拓展 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass ExtendedcraftingRecipes{

    zenConstructor(){

    }

    function init() {
        recipesInit();
    }

    function recipesInit(){
        
        //黑铁锭
        recipes.remove(<extendedcrafting:material>);
        RecipeBuilder.get("blacksmith")
          .setShapeless([<ore:dustCharcoal>, <ore:dustCharcoal>, <ore:dustCharcoal>, <ore:ingotIron>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<extendedcrafting:material>)
          .create();

        //基础合成组件
        recipes.remove(<extendedcrafting:material:14>);
        RecipeBuilder.get("blacksmith")
          .setShapeless([<extendedcrafting:material:2>, <extendedcrafting:material:7>, <ore:plateIron>, <ore:plateIron>])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<extendedcrafting:material:14>)
          .create();
    }

    function itemRemove() {
        itemHelper.removeItem(<extendedcrafting:table_basic>);
        itemHelper.removeItem(<extendedcrafting:table_advanced>);
        itemHelper.removeItem(<extendedcrafting:table_elite>);
        itemHelper.removeItem(<extendedcrafting:table_ultimate>);
    }
}
