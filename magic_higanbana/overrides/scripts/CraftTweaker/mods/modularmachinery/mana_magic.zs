##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     模块化机械 魔力蕴魔
##================================================
#priority 2000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

zenClass ManaMagicRecipes {
    zenConstructor() {
        m_machineName = "mana_magic";
        m_recipesNum = 0;
    }

    var m_machineName as string;
    var m_recipesNum as int;
    
    function recipesInit() {
        var primer = RecipeBuilder.newBuilder("mana_magic_recipes", m_machineName, 20) as RecipePrimer;
        primer.addManaPerTickInput(360);
        primer.addAuraInput(160);
        primer.addFluidInput(<liquid:lifeessence> * 20);
        primer.addFluidOutput(<liquid:mana> * 1);
        primer.build();
    }
}