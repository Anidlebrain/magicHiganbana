##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     模块化机械 末影制造机
##================================================
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

    function addRecipesEx(recipeTime as int) as RecipePrimer
    {
        var name = ("Anidlebrain/modularmachinery/" ~ m_machineName ~ "/recipe_" ~ m_recipesNum) as string;
        var primer = RecipeBuilder.newBuilder(name, m_machineName, recipeTime) as RecipePrimer;
        primer.addEnergyPerTickInput(3000);
        primer.addFluidInput(<liquid:tree_oil> * 700);
        primer.addItemInput(<extrautils2:decorativesolid:2> * 4);
        primer.addItemInput(<extrautils2:ingredients:1>);
        return primer;
    }

    function recipesInit() {
        //太阳能面板
        recipes.remove(<extrautils2:passivegenerator>);
        addRecipesEx(20).addItemOutput(<extrautils2:passivegenerator>)
                    .addItemInput(<extrautils2:suncrystal>)
                    .addItemInput(<enderio:item_material:3> * 3)
                    .addItemInput(<immersiveengineering:stone_decoration:8> * 2)
        .build();

        //月光面板
        recipes.remove(<extrautils2:passivegenerator:1>);
        addRecipesEx(20).addItemOutput(<extrautils2:passivegenerator:1>)
                    .addItemInput(<extrautils2:ingredients:5>)
                    .addItemInput(<enderio:item_material:3> * 3)
                    .addItemInput(<immersiveengineering:stone_decoration:8> * 2)
        .build();

        //熔岩发电机
        recipes.remove(<extrautils2:passivegenerator:2>);
        addRecipesEx(20).addItemOutput(<extrautils2:passivegenerator:2>)
                    .addItemInput(<ore:ingotFiery>, 2)
                    .addItemInput(<ore:slimecrystal>)
        .build();

        
        //水力发电机
        recipes.remove(<extrautils2:passivegenerator:3>);
        addRecipesEx(20).addItemOutput(<extrautils2:passivegenerator:3>)
                    .addItemInput(<botania:rune>)
                    .addItemInput(<ore:ingotEnergeticSilver>, 2)
        .build();

        //风力发电机
        recipes.remove(<extrautils2:passivegenerator:4>);
        addRecipesEx(20).addItemOutput(<extrautils2:passivegenerator:4>)
                    .addItemInput(<botania:rune:3>)
                    .addItemInput(<ore:ingotEnergeticSilver>, 2)
        .build();

        //火力发电机
        recipes.remove(<extrautils2:passivegenerator:5>);
        addRecipesEx(20).addItemOutput(<extrautils2:passivegenerator:5>)
                    .addItemInput(<botania:rune:1>)
                    .addItemInput(<ore:ingotEnergeticSilver>, 2)
        .build();

        //手摇发电机
        recipes.remove(<extrautils2:passivegenerator:7>);
        addRecipesEx(20).addItemOutput(<extrautils2:passivegenerator:7>)
        .build();

        //龙蛋发电机
        recipes.remove(<extrautils2:passivegenerator:8>);
        addRecipesEx(20).addItemOutput(<extrautils2:passivegenerator:8>)
                    .addItemInput(<techreborn:dragon_egg_syphon>)
        .build();

        //共振仪
        recipes.remove(<extrautils2:resonator>);
        addRecipesEx(20).addItemOutput(<extrautils2:passivegenerator>)
                    .addItemInput(<forestry:thermionic_tubes>)
        .build();

    }
}