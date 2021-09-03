##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     模块化机械 星辰凝聚
##================================================
#priority 2000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

zenClass StarCondensation {
    zenConstructor() {
        m_machineName = "star_condensation";
        m_recipesNum = 0;
    }

    var m_machineName as string;
    var m_recipesNum as int;

    function addRecipesEx() as RecipePrimer
    {
        var name = ("Anidlebrain/modularmachinery/" ~ m_machineName ~ "/recipe_" ~ m_recipesNum) as string;
        var primer = RecipeBuilder.newBuilder(name, m_machineName, 99) as RecipePrimer;
        primer.addAuraInput(800);
        primer.addFluidInput(<liquid:vapor_of_levity> * 200);
        return primer;
    }

    function recipesInit() {
        addRecipesEx().addItemOutput(<astralsorcery:itemcraftingcomponent:1>)
                      .setChance(0.8)
                      .addItemInput(<naturesaura:sky_ingot>)
                      .addItemInput(<botania:astrolabe>)
                      .setChance(0.01)
                      .setTime(14000, 22000)
                      .setAltitude(200, 256)
                      .setWeather("sunny")
                      .build();
    }
}