##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     模块化机械 微型魔力制造机
##================================================
#priority 2000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

zenClass MiniManaMachineRecipes {
    zenConstructor() {
        m_recipesNum = 0;
        m_machineName = "mini_mana_machine";
        m_recipeTime = 20;
        m_maneInput = 500;
    }

    var m_recipesNum as int;
    var m_machineName as string;
    var m_recipeTime as int;
    var m_maneInput as int;

    function addRecipes(output as IItemStack[],
                        inputStack as IItemStack[],
                        inputOre as IOreDictEntry[],
                        num as int[]) as int {
        if ((isNull(inputStack) & isNull(inputOre)) | isNull(output)) {
            print("错误!!");
            return -1 as int;
        }
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
        var name = ("Anidlebrain/modularmachinery/" ~ m_machineName ~ "/recipe_" ~ m_recipesNum) as string;
        //print(name);
        var primer = RecipeBuilder.newBuilder(name, m_machineName, m_recipeTime * inputMultiple) as RecipePrimer;
        if (!isNull(inputStack)) {
            for item in inputStack {
                primer.addItemInput(item);
            }
        }
        if (!isNull(inputOre)) {
            for i, item in inputOre {
                primer.addItemInput(item, num[i]);
            }
        }
        if (!isNull(output)) {
            for item in output {
                primer.addItemOutput(item);
                if (outputMultiple == 1) {
                    recipes.remove(item);
                }
            }
        }
        primer.addManaInput(m_maneInput * outputMultiple);
        primer.build();
        m_recipesNum = m_recipesNum + 1;
        return 0 as int;
    }

    function recipesInit() {
        
        vanillaRecipes();

        skyResourceRecipes();

    }

    function vanillaRecipes() {

        var plateIron = <ore:plateIron> as IOreDictEntry;

        //铁活板门
        addRecipes([<item:minecraft:iron_trapdoor>],
                    null,
                    [plateIron],
                    [4]);
        
        //铁门
        addRecipes([<item:minecraft:iron_door>],
                    null,
                    [plateIron],
                    [2]);

        //漏斗
        addRecipes([<item:minecraft:hopper>],
                    [<item:minecraft:chest>],
                    [plateIron],
                    [6]);
        
        //阳光传感器
        addRecipes([<item:minecraft:daylight_detector>],
                    null,
                    [<ore:blockGlass>, <ore:gemQuartz>, <ore:slabWood>],
                    [3, 3, 6]);
        
        //音符盒
        addRecipes([<item:minecraft:noteblock>],
                    null,
                    [<ore:plankWood>, <ore:dustRedstone>],
                    [8, 1]);
        
        //侦测器
        addRecipes([<item:minecraft:observer>],
                    null,
                    [<ore:stone>, <ore:gemQuartz>, <ore:dustRedstone>],
                    [8, 2, 1]);
        
        //信标
        addRecipes([<item:minecraft:beacon>],
                    [<item:botania:managlass> * 6],
                    [<ore:netherStar>, <ore:obsidian>],
                    [1, 4]);

        //tnt
        addRecipes([<item:minecraft:tnt>],
                    [<item:minecraft:gunpowder> * 5],
                    [<ore:sand>],
                    [4]);
        
        //钟
        addRecipes([<item:minecraft:clock>],
                    [<item:botania:cosmetic:17>],
                    [<ore:plateGold>],
                    [4]);
        
    }

    function skyResourceRecipes() {
        var tag = [2, 3, 4, 5, 7, 8, 9, 11, 14, 15] as int[];
        var plate = [<ore:plateBronze>, <ore:plateIron>, <ore:plateSteel>,
                     <ore:plateElectrum>, <ore:plateLead>, <ore:plateManyullyn>,
                     <ore:plateSignalum>, <ore:plateEnderium>, <ore:plateOsmium>,
                     <ore:plateRefinedObsidian>] as IOreDictEntry[];
        
        var gear = [<ore:gearBronze>, <ore:gearIron>, <ore:gearSteel>,
                    <ore:gearElectrum>, <ore:gearLead>, <ore:gearManyullyn>,
                    <ore:gearSignalum>, <ore:gearEnderium>, <ore:gearOsmium>,
                    <ore:gearRefinedObsidian>] as IOreDictEntry[];
        
        for i, kinds in tag {
            //框架
            addRecipes([<skyresources:casing>.definition.makeStack(kinds)],
                       null,
                       [plate[i], gear[i]],
                       [3, 4]);
            
            //加热组件
            addRecipes([<skyresources:heat>.definition.makeStack(kinds)],
                       [<botania:blazeblock>],
                       [plate[i]],
                       [4]);
            
            //氧化加热器
            addRecipes([<skyresources:combustionheater>.definition.makeStack(kinds)],
                       [<skyresources:heat>.definition.makeStack(kinds) * 2, <skyresources:baseitemcomponent:2>],
                       [plate[i]],
                       [8]);
            
            //炼金组件
            addRecipes([<skyresources:alchemy>.definition.makeStack(kinds)],
                       [<botania:manaresource:23> * 2],
                       [plate[i]],
                       [4]);
            
            //冷凝器
            addRecipes([<skyresources:condenser>.definition.makeStack(kinds)],
                       [<minecraft:ice>, <skyresources:alchemy>.definition.makeStack(kinds), <skyresources:baseitemcomponent:2>],
                       [plate[i]],
                       [6]);
            
            //热量供应器
            addRecipes([<skyresources:heatprovider>.definition.makeStack(kinds)],
                       [<minecraft:furnace> * 2, <skyresources:heat>.definition.makeStack(kinds) * 2],
                       [plate[i]],
                       [6]);
        }

        tag = [12, 13] as int[];
        var stat = [<extendedcrafting:material:40>, <minecraft:nether_star>] as IItemStack[];
        var material = [<skyresources:baseitemcomponent:3>, <skyresources:baseitemcomponent:7>] as IItemStack[];

        for i, kinds in tag {
            //框架
            addRecipes([<skyresources:casing>.definition.makeStack(kinds)],
                       [stat[i] * 3, material[i] * 4],
                       null,
                       null);
            
            //加热组件
            addRecipes([<skyresources:heat>.definition.makeStack(kinds)],
                       [<botania:blazeblock> * 2, material[i] * 4],
                       null,
                       null);
            
            //氧化加热器
            addRecipes([<skyresources:combustionheater>.definition.makeStack(kinds)],
                       [<skyresources:heat>.definition.makeStack(kinds) * 2, <skyresources:baseitemcomponent:2> * 2, <skyresources:baseitemcomponent:6>, material[i] * 4],
                       null,
                       null);
            
            //炼金组件
            addRecipes([<skyresources:alchemy>.definition.makeStack(kinds)],
                       [<botania:manaresource:8> * 2, material[i] * 4],
                       null,
                       null);
            
            //冷凝器
            addRecipes([<skyresources:condenser>.definition.makeStack(kinds)],
                       [<minecraft:ice>, <skyresources:alchemy>.definition.makeStack(kinds), <skyresources:baseitemcomponent:2>, <skyresources:baseitemcomponent:6>, material[i] * 4],
                       null,
                       null);
            
            //热量供应器
            addRecipes([<skyresources:heatprovider>.definition.makeStack(kinds)],
                       [<minecraft:furnace> * 2, <skyresources:heat>.definition.makeStack(kinds) * 2, material[i] * 6],
                       null,
                       null);
        }

        //石英增幅组件
        addRecipes([<skyresources:baseitemcomponent:6>],
                   [<botania:quartz:1> * 6, <botania:manaresource:23> * 3, <minecraft:dye>],
                   null,
                   null);

    }
}