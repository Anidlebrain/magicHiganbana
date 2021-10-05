##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     基础合成函数
##=================================================
#priority 99999999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.artisanworktables.builder.RecipeBuilder;

import scripts.AnildebrainUtils.BaseUtils as alg;
import scripts.AnildebrainUtils.modLoader.isInvalid;

zenClass RecipesUtils
{
    zenConstructor()
    {

    }

    var m_recipesNum as int = 0;

    function textToIngredients1(ingredients as IIngredient[],
                            recipe as string[],
                            replacements as IIngredient[string]) as IIngredient[] {
    // 转成一维数组
    var len = 0;
    for i, str in recipe {
        for j in 0 .. str.length {
                var item = str[j];
                if (" " != item) {
                    ingredients[len + j] = replacements[item];
                }
            }
            len = len + str.length;
        }
        return ingredients;
    }

    function textToIngredients2(ingredients as IIngredient[][],
                            recipe as string[],
                            replacements as IIngredient[string]) as IIngredient[][] {
        // 转成二维数组
        for i, str in recipe {
            for j in 0 .. str.length {
                var item = str[j];
                if (" " != item) {
                    ingredients[i][j] = replacements[item];
                }
            }
        }
        return ingredients;
    }

    //工作台配方添加
    function addRecipe(output as IItemStack,
                    input as IIngredient[][]){
        
        val type as string[] = output.definition.id.split(":");
        m_recipesNum = m_recipesNum + 1;
        var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;
        //print(name);
        recipes.addShaped(name, output, input);
    }

    function addRecipe(output as IItemStack,
                    recipe as string[],
                    replacements as IIngredient[string]){
                    
        var ingredients =
            [[null, null, null],
                [null, null, null],
                [null, null, null]] as IIngredient[][];
        
        val type as string[] = output.definition.id.split(":");
        m_recipesNum = m_recipesNum + 1;
        var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;
        //print(name);
        recipes.addShaped(name, output, textToIngredients2(ingredients, recipe, replacements));
    }

    function addRecipe(output as IItemStack,
                    recipe as string[],
                    replacements as IIngredient[string],
                    fun as IRecipeFunction){
                    
        var ingredients =
            [[null, null, null],
                [null, null, null],
                [null, null, null]] as IIngredient[][];
        
        val type as string[] = output.definition.id.split(":");
        m_recipesNum = m_recipesNum + 1;
        var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;
        recipes.addShaped(name, output, textToIngredients2(ingredients, recipe, replacements), fun);
    }

    function addRecipe(output as IItemStack,
                    recipe as string[],
                    replacements as IIngredient[string],
                    fun as IRecipeFunction,
                    action as IRecipeAction){
                    
        var ingredients =
            [[null, null, null],
                [null, null, null],
                [null, null, null]] as IIngredient[][];
        
        val type as string[] = output.definition.id.split(":");
        m_recipesNum = m_recipesNum + 1;
        var name = type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;
        recipes.addShaped(name, output, textToIngredients2(ingredients, recipe, replacements), fun, action);
    }

    function addSurroundRecipe(output as IItemStack, centre as IIngredient, surrounded as IIngredient)
    {
        addRecipe(output,[
            "AAA",
            "ABA",
            "AAA"],{
                A : surrounded,
                B : centre
            });
    }

    function addFull3Recipe(output as IItemStack, Full as IIngredient)
    {
        addRecipe(output,[
            "AAA",
            "AAA",
            "AAA"],{
                A : Full
            });
    }

    function addFull2Recipe(output as IItemStack, Full as IIngredient)
    {
        addRecipe(output,[
            "AA ",
            "AA ",
            "   "],{
                A : Full
            });
    }


    function addCrossRecipe(output as IItemStack, five as IIngredient, four as IIngredient)
    {
        addRecipe(output,[
            "BAB",
            "ABA",
            "BAB"],{
                A : four,
                B : five
            });
    }

    function addCentreCrossRecipe(output as IItemStack, a as IIngredient, b as IIngredient, centre as IIngredient)
    {
        addRecipe(output,[
            "BAB",
            "ACA",
            "BAB"],{
                A : a,
                B : b,
                C : centre
            });
    }

    function addShapeless(output as IItemStack,
                            input as IIngredient[]) {

        val type as string[] = output.definition.id.split(":");
        m_recipesNum = m_recipesNum + 1;
        var name = "magicHiganbana/" ~ type[0] ~ "/add/" ~ type[1] ~ "_" ~ m_recipesNum;
        //print(name);
        recipes.addShapeless(name, output, input);
    }

    function addShapelessCycle(item1 as IItemStack, item2 as IItemStack) {

        m_recipesNum = m_recipesNum + 1;
        var name = ("magicHiganbana/autoaddShapeless/cycle_" ~ m_recipesNum) as string;
        recipes.addShapeless(name, item1, [item2]);

        RecipeBuilder.get("scribe")
          .setName(name)
          .setShapeless([item2])
          .addOutput(item1)
          .create();
        
        m_recipesNum = m_recipesNum + 1;
        name = ("magicHiganbana/autoaddShapeless/cycle_" ~ m_recipesNum) as string;
        recipes.addShapeless(name, item2, [item1]);

        RecipeBuilder.get("scribe")
          .setName(name)
          .setShapeless([item1])
          .addOutput(item2)
          .create();
        
    }

    function altarTransformation(level as int,
                                recipe as string[],
                                replacements as IIngredient[string]) as IIngredient[] {
        
        if(1 == level)
        {
            var ingredients = [null, null, null, null, null,
                null, null, null, null] as IIngredient[];
            return textToIngredients1(ingredients, recipe, replacements);
        }

        var ingredients as IIngredient[] =
            [null, null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null] as IIngredient[];
        
        ingredients = textToIngredients1(ingredients, recipe, replacements);

        var res as IIngredient[] = [];

        res += ingredients[6];
        res += ingredients[7];
        res += ingredients[8];
        res += ingredients[11];
        res += ingredients[12];
        res += ingredients[13];
        res += ingredients[16];
        res += ingredients[17];
        res += ingredients[18];

        res += ingredients[0];
        res += ingredients[4];
        res += ingredients[20];
        res += ingredients[24];

        if (2 < level) {
            res += ingredients[1];
            res += ingredients[3];
            res += ingredients[5];
            res += ingredients[9];
            res += ingredients[15];
            res += ingredients[19];
            res += ingredients[21];
            res += ingredients[23];
        }
        if (3 < level) {
            
            res += ingredients[2];
            res += ingredients[10];
            res += ingredients[14];
            res += ingredients[22];
            
            //25 额外的物品
            res += ingredients[25];
            res += ingredients[26];
            res += ingredients[27];
            res += ingredients[28];
            res += ingredients[29];
        }

        return res;
    }

    //合成拓展 3*3
    function makeExtendedTable3(output as IItemStack,
                                recipe as string[],
                                replacements as IIngredient[string]) {

    var ingredients =
        [[null, null, null],
            [null, null, null],
            [null, null, null]] as IIngredient[][];

    mods.extendedcrafting.TableCrafting.addShaped(output,
        textToIngredients2(ingredients, recipe, replacements));
    }

    //合成拓展 5*5
    function makeExtendedTable5(output as IItemStack,
                                recipe as string[],
                                replacements as IIngredient[string]) {

        var ingredients =
            [[null, null, null, null, null],
                [null, null, null, null, null],
                [null, null, null, null, null],
                [null, null, null, null, null],
                [null, null, null, null, null]] as IIngredient[][];

        mods.extendedcrafting.TableCrafting.addShaped(output,
            textToIngredients2(ingredients, recipe, replacements));
    }

    //合成拓展 7*7
    function makeExtendedTable7(output as IItemStack,
                                recipe as string[],
                                replacements as IIngredient[string]) {

            var ingredients =
            [[null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null]] as IIngredient[][];

        mods.extendedcrafting.TableCrafting.addShaped(output,
            textToIngredients2(ingredients, recipe, replacements));
    }

    //合成拓展 7*7
    function makeExtendedTable9(output as IItemStack,
                                recipe as string[],
                                replacements as IIngredient[string]) {

        var ingredients =
            [[null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null]] as IIngredient[][];

        mods.extendedcrafting.TableCrafting.addShaped(output,
            textToIngredients2(ingredients, recipe, replacements));
    }
/*
    //无尽贪婪 终极工作台
    function makeAvaritiaCrafting(output as IItemStack,
                                recipe as string[],
                                replacements as IIngredient[string]) {
        var ingredients =
            [[null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null],
                [null, null, null, null, null, null, null, null, null]] as IIngredient[][];

        m_recipesNum = m_recipesNum + 1;
        var name = "addConstellationAltarRecipe_" ~ m_recipesNum;
        mods.avaritia.ExtremeCrafting.addShaped(name, output,
            textToIngredients2(ingredients, recipe, replacements));
    }
*/

    //移除矿词的配方
    function removeOreRecipes(ore as IOreDictEntry) {
        for item in ore.items {
            recipes.remove(item);
        }
    }

    function removeRecipesbyMod(modid as string) {
        if (loadedMods in modid) {
            recipes.removeAll();
        }
    }


    //熔炉 根据矿词移除配方
    function removeOreFurnace(ore as IOreDictEntry) {
        for item in ore.items {
            furnace.remove(item);
        }
    }

    function centreCrossitem(a as IIngredient, b as IIngredient, centre as IIngredient) as IIngredient[][]
    {
        return [[a, b, a], [b, centre, b], [a, b, a]];
    }

    function surroundItems(surrounded as IIngredient, centre as IIngredient) as IIngredient[][]
    {
        return [[surrounded, surrounded, surrounded], [surrounded, centre, surrounded], [surrounded, surrounded, surrounded]];
    }

    function crossItems(five as IIngredient, four as IIngredient) as IIngredient[][]
    {
        return [[five, four, five], [four, five, four], [five, four, five]];
    }

    function getRecipesNum() as int
    {
        m_recipesNum = m_recipesNum + 1;
        return m_recipesNum;
    }
    
}

static recipesUtils as RecipesUtils = RecipesUtils();