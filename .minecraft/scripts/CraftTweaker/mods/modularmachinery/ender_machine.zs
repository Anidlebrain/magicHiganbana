######################################################
##          [Author]:   Anidlebrain                 ##
##          [License]:  CC BY-NC-SA 4.0             ##
##          [Info]:     模块化机械 末影制造机        ##
######################################################
#priority 2000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

zenClass EnderMachineRecipes {
    zenConstructor() {
        m_machineName = "ender_machine";
        m_recipesNum = 0;
    }

    var m_machineName as string;
    var m_recipesNum as int;

    function addRecipes(recipeTime as int) as RecipePrimer
    {
        var name = ("Anidlebrain/modularmachinery/" ~ m_machineName ~ "/recipe_" ~ m_recipesNum) as string;
        var primer = RecipeBuilder.newBuilder(name, m_machineName, recipeTime) as RecipePrimer;
        primer.addEnergyPerTickInput(3000);
        return primer;
    }

    function recipesInit() {
        //太阳能面板
        addRecipes(20).addItemOutput(<extrautils2:passivegenerator>)
                    .addFluidInput(<liquid:tree_oil> * 700)
                    .addItemInput(<extrautils2:suncrystal>)
                    .addItemInput(<enderio:item_material:3> * 3)
                    .addItemInput(<immersiveengineering:stone_decoration:8> * 2)
        .build();

        //月光面板
        addRecipes(20).addItemOutput(<extrautils2:passivegenerator>)
                    .addFluidInput(<liquid:tree_oil> * 700)
                    .addItemInput(<extrautils2:ingredients:5>)
                    .addItemInput(<enderio:item_material:3> * 3)
                    .addItemInput(<immersiveengineering:stone_decoration:8> * 2)
                    .addItemInput(<extrautils2:decorativesolid:2> * 3)
        .build();

        //月光面板
        addRecipes(20).addItemOutput(<extrautils2:passivegenerator>)
                    .addFluidInput(<liquid:tree_oil> * 700)
                    .addItemInput(<extrautils2:ingredients:5>)
                    .addItemInput(<enderio:item_material:3> * 3)
                    .addItemInput(<immersiveengineering:stone_decoration:8> * 2)
                    .addItemInput(<extrautils2:decorativesolid:2> * 3)
        .build();

        
    }
}