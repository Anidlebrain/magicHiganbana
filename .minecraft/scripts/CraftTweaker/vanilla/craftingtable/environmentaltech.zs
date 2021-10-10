##================================================
##          [Author]:   shimeng & Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     环境科技 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;
function init()
{
    recipesInit();
}

function recipesInit()
{

    //莱泽尔水晶
    recipes.remove(<environmentaltech:litherite_crystal>);
    RecipeBuilder.get("jeweler")
      .setShaped([
        [<ore:dustEnergion>, <ore:ingotManyullyn>, <ore:dustEnergion>],
        [<ore:ingotManyullyn>, <ore:gemDiamond>, <ore:ingotManyullyn>],
        [<ore:dustEnergion>, <ore:ingotManyullyn>, <ore:dustEnergion>]])
      .addOutput(<environmentaltech:litherite_crystal>)
      .create();

    //二极管
    recipes.remove(<environmentaltech:diode>);
    RecipeBuilder.get("blacksmith")
      .setShaped([
        [<immersiveengineering:stone_decoration:8>, <immersiveengineering:stone_decoration:8>, <immersiveengineering:stone_decoration:8>],
        [<immersiveengineering:stone_decoration:8>, <ore:dustEnergion>, <immersiveengineering:stone_decoration:8>],
        [<immersiveengineering:stone_decoration:8>, <ore:circuitBasic>, <immersiveengineering:stone_decoration:8>]])
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<environmentaltech:diode>)
      .create();

    //强化部件核心
    recipes.remove(<valkyrielib:modifier_component>);
    RecipeBuilder.get("blacksmith")
     .setShaped([
       [<chisel:voidstone>, <contenttweaker:link_adhesive>, <chisel:voidstone>],
       [<contenttweaker:link_adhesive>, <ore:blockSteel>, <contenttweaker:link_adhesive>],
       [<chisel:voidstone>, <contenttweaker:link_adhesive>, <chisel:voidstone>]])
    .addTool(<ore:artisansDriver>, 1)
    .addOutput(<valkyrielib:modifier_component>)
    .create();

    //互联方块
    recipes.remove(<environmentaltech:interconnect>);
    RecipeBuilder.get("engineer")
     .setShaped([
     [null, <environmentaltech:connector>, null],
     [<environmentaltech:connector>, <valkyrielib:modifier_component>, <environmentaltech:connector>],
     [null, <environmentaltech:connector>, null]])
    .setSecondaryIngredients([<contenttweaker:link_adhesive>*4, <minecraft:iron_ingot>*4])
    .addTool(<ore:artisansCutters>, 1)
    .addTool(<ore:artisansHammer>, 1)
    .addOutput(<environmentaltech:interconnect>)
    .create();

    //一级虚空采矿机
    recipes.remove(<environmentaltech:void_ore_miner_cont_1>);
    RecipeBuilder.get("engineer")
    .setShaped([
    [<ore:blockLitherite>, <botania:storage>, <ore:blockLitherite>],
    [<ore:blockLitherite>, <environmentaltech:diode>, <ore:blockLitherite>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]])
    .addTool(<ore:artisansFile>, 1)
    .addTool(<ore:artisansCompass>, 1)
    .addOutput(<environmentaltech:void_ore_miner_cont_1>)
    .create();
}

if (!isInvalid)
{
    init();
}
