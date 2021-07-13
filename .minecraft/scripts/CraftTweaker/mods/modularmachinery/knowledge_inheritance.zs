######################################################
##          [Author]:   Anidlebrain                 ##
##          [License]:  CC BY-NC-SA 4.0             ##
##          [Info]:     模块化机械 知识传承          ##
######################################################

#priority 2000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

zenClass KnowledgeInheritanceRecipes {
    zenConstructor() {
        m_recipesNum = 0;
        m_machineName = "knowledge_inheritance";
        m_recipeTime = 2000;
        m_probability = 0.5;
        m_itemPotion = <minecraft:potion>.withTag({Potion: "apotheosis:knowledge"});
        m_itemPaper = <minecraft:paper>;
    }

    var m_recipesNum as int;
    var m_machineName as string;
    var m_recipeTime as int;
    var m_probability as float;
    var m_itemPotion as IItemStack;
    var m_itemPaper as IItemStack;

    function addRecipes(output as IItemStack,
                        inputStack as IItemStack[]) as int {
        if (isNull(inputStack) | isNull(output)) {
            print("错误!!");
            return -1 as int;
        }
        var name = ("Anidlebrain/modularmachinery/" ~ m_machineName ~ "/recipe_" ~ m_recipesNum) as string;
        //print(name);
        var primer = RecipeBuilder.newBuilder(name, m_machineName, m_recipeTime) as RecipePrimer;
        primer.addItemInput(m_itemPotion);
        primer.addItemInput(m_itemPaper * 3);
        if (!isNull(inputStack)) {
            for item in inputStack {
                primer.addItemInput(item);
            }
        }
        primer.addItemOutput(output);
        primer.setChance(m_probability);
        primer.build();
        m_recipesNum = m_recipesNum + 1;
        return 0 as int;
    }

    function recipesInit() {
        bluePrintRecipes();
    }

    function bluePrintRecipes() {
        recipes.remove(<immersiveengineering:blueprint>);

        addRecipes(<immersiveengineering:blueprint>.withTag({blueprint: "脚手架"}),
                   [<minecraft:ladder> * 3]);
        
        addRecipes(<immersiveengineering:blueprint>.withTag({blueprint: "工程模块"}),
                   [<skyresources:condenser:0> * 2]);

        addRecipes(<immersiveengineering:blueprint>.withTag({blueprint: "工程模块"}),
                   [<skyresources:condenser:1>]);
        
        addRecipes(<immersiveengineering:blueprint>.withTag({blueprint: "发电机"}),
                   [<botania:rfgenerator> * 2]);

        addRecipes(<immersiveengineering:blueprint>.withTag({blueprint: "components"}),
                   [<extendedcrafting:material:14>]);
        
        addRecipes(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}),
                   [<tconstruct:pattern> * 6]);
        
        addRecipes(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}),
                   [<immersiveengineering:material:19> * 2]);
        
        addRecipes(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}),
                   [<skyresources:heavysnowball:0> * 8]);
        
        addRecipes(<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}),
                   [<skyresources:heavyexplosivesnowball> * 8]);
        
        

    }

}