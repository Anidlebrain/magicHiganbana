##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     合成拓展 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;

zenClass ExtendedcraftingRecipes{

    zenConstructor(){

    }

    function init() {
        recipesInit();
    }

    function recipesInit(){
        
        //黑铁锭
        recipes.remove(<extendedcrafting:material>);
        recipesUtils.addShapeless(<extendedcrafting:material>, [<ore:dustCharcoal>, <ore:dustCharcoal>, <ore:dustCharcoal>, <ore:ingotIron>]);
        
        //基础合成组件
        recipes.remove(<extendedcrafting:material:14>);
        recipesUtils.addShapeless(<extendedcrafting:material:14>, [<extendedcrafting:material:2>, <extendedcrafting:material:7>, <ore:plateIron>, <ore:plateIron>]);

        //基础合成组件
        recipes.remove(<extendedcrafting:material:14>);
        recipesUtils.addShapeless(<extendedcrafting:material:14>, [<extendedcrafting:material:2>, <extendedcrafting:material:7>, <ore:plateIron>, <ore:plateIron>]);
    }

    function itemRemove() {
        itemHelper.removeItem(<extendedcrafting:table_basic>);
        itemHelper.removeItem(<extendedcrafting:table_advanced>);
        itemHelper.removeItem(<extendedcrafting:table_elite>);
        itemHelper.removeItem(<extendedcrafting:table_ultimate>);
    }
}
