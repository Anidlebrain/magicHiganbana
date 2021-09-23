##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     模块化机械 余烬开采机
##================================================
#priority 2000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

zenClass EmberMining {
    zenConstructor() {
        m_machineName = "ember_mining";
        m_recipesNum = 0;
    }

    var m_machineName as string;
    var m_recipesNum as int;

    function addRecipesEx() as RecipePrimer
    {
        var name = ("magic_higanbana/modularmachinery/" ~ m_machineName ~ "/recipe_" ~ m_recipesNum) as string;
        var primer = RecipeBuilder.newBuilder(name, m_machineName, 20) as RecipePrimer;
        return primer;
    }

    function recipesInit() {
        addRecipesEx().addItemOutput(<embers:shard_ember>)
                      .setChance(0.1)
                      .addItemOutput(<embers:crystal_ember>)
                      .setChance(0.01)
                      .addItemOutput(<embers:dust_ember>)
                      .setChance(0.05)
                      .addFluidInput(<liquid:lubricant> * 50)
                      .setChance(0.8)
                      .build();
    }
}