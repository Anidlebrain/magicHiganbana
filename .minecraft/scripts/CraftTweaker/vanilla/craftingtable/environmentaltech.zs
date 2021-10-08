##================================================
##          [Author]:   shimeng
##          [since]:    magic_higanbana
##          [Info]:     环境科技 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

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
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<immersiveengineering:stone_decoration:8>, <immersiveengineering:stone_decoration:8>, <immersiveengineering:stone_decoration:8>],
    [<immersiveengineering:stone_decoration:8>, <ore:dustEnergion>, <immersiveengineering:stone_decoration:8>],
    [<immersiveengineering:stone_decoration:8>, <ore:circuitBasic>, <immersiveengineering:stone_decoration:8>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<environmentaltech:diode>)
  .create();
