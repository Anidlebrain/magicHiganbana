##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     模块化机械 零件制造机
##================================================

#priority 2000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;


zenClass PartsManufacturingMachineRecipes {
    zenConstructor() {
        m_recipesNum = 0;
        m_machineName = "parts_manufacturing_machine";
        m_smallmachineName = "small_parts_manufacturing_machine";
        m_recipeTime = 2000;
        m_probability = 0.8;
        m_smallprobability = 0.25;
    }

    var m_recipesNum as int;
    var m_machineName as string;
    var m_smallmachineName as string;
    var m_recipeTime as int;
    var m_probability as float;
    var m_smallprobability as float;

    function addRecipes(output as IItemStack[],
                        inputStack as IItemStack[],
                        inputOre as IOreDictEntry[],
                        num as int[],
                        flag as bool) as int {
        if (isNull(inputStack) | isNull(output)) {
            print("错误!!");
            return -1 as int;
        }
        var name = ("Anidlebrain/modularmachinery/" ~ m_machineName ~ "/recipe_" ~ m_recipesNum) as string;
        var samllname = ("Anidlebrain/modularmachinery/" ~ m_smallmachineName ~ "/recipe_" ~ m_recipesNum) as string;
        var inputMultiple as int;
        if (isNull(inputStack)) {
            inputMultiple = inputOre.length;
        }
        else if (isNull(inputOre)) {
            inputMultiple = inputStack.length;
        }
        else {
            inputMultiple =  inputStack.length + inputOre.length;
        }
        var outputMultiple =  output.length;
        var primer = RecipeBuilder.newBuilder(name, m_machineName, m_recipeTime) as RecipePrimer;
        var samllprimer = RecipeBuilder.newBuilder(samllname, m_smallmachineName, m_recipeTime * 2) as RecipePrimer;
        if (!isNull(inputStack)) {
            for item in inputStack {
                primer.addItemInput(item);
                samllprimer.addItemInput(item);
            }
        }
        if (!isNull(inputOre)) {
            for i, item in inputOre {
                primer.addItemInput(item, num[i]);
                samllprimer.addItemInput(item, num[i]);
            }
        }
        if (!isNull(output)) {
            for item in output {
                if(flag == true) {
                    for i in 0 .. 3 {
                        primer.addItemOutput(item);
                        primer.setChance(m_probability);
                    }
                    samllprimer.addItemOutput(item);
                    samllprimer.setChance(m_probability);
                    samllprimer.addItemOutput(item);
                    samllprimer.setChance(m_smallprobability * 2);
                    samllprimer.addItemOutput(item);
                    samllprimer.setChance(m_smallprobability);
                }
                else {
                    primer.addItemOutput(item);
                    samllprimer.addItemOutput(item);
                    samllprimer.setChance(m_probability);
                }
                if (outputMultiple == 1) {
                    recipes.remove(item);
                }
            } 
        }
        primer.addEnergyPerTickInput(1000);
        primer.build();
        samllprimer.addEnergyPerTickInput(300);
        samllprimer.build();
        m_recipesNum = m_recipesNum + 1;
        return 0 as int;
    }

    function recipesInit() {
        //坚固部件
        addRecipes([<forestry:sturdy_machine>],
                   [<enderio:item_material:44> * 1, <enderio:item_material:68> * 4],
                   null,
                   null,
                   false
        );

        //末影钢机械框架
        addRecipes([<enderio:item_material:66>],
                   [<enderio:block_end_iron_bars> * 4, <enderio:item_alloy_ingot:8> * 4, <enderio:item_material:37>],
                   null,
                   null,
                   false
        );

        //红石伺服器
        addRecipes([<thermalfoundation:material:512>],
                   [<extrautils2:ingredients> * 8],
                   [<ore:ingotInvar>],
                   [5],
                   true
        );

        //红石接收线圈
        addRecipes([<thermalfoundation:material:513>],
                   [<minecraft:redstone> * 8],
                   [<ore:wireElectrum>],
                   [5],
                   true
        );

        //红石传输线圈
        addRecipes([<thermalfoundation:material:514>],
                   [<minecraft:redstone> * 8],
                   [<ore:wireAluminum>],
                   [5],
                   true
        );


        
    }
}