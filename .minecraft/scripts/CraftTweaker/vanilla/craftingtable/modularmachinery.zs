##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     模块化机械 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass ModularMachineryRecipes{
    zenConstructor() {
        
    }

    function init() {
        recipesInit();
    }

    function recipesInit() {

        //魔力输入
        //recipes.remove(<gugu-utils:sparkmanahatch>);
        RecipeBuilder.get("engineer")
          .setShaped(recipesUtils.centreCrossitem(<modularmachinery:itemmodularium>, <botania:livingrock>, <botania:spreader:1>))
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<gugu-utils:sparkmanahatch>)
          .create();


        //魔力输出
        recipes.remove(<gugu-utils:sparkmanahatch:1>);
        RecipeBuilder.get("engineer")
          .setShaped(recipesUtils.centreCrossitem(<botania:livingrock>, <modularmachinery:itemmodularium>, <botania:spreader:1>))
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<gugu-utils:sparkmanahatch:1>)
          .create();

        recipesUtils.addShapelessCycle(<gugu-utils:sparkmanahatch>, <gugu-utils:sparkmanahatch:1>);

        //微型物品输入
        recipes.remove(<modularmachinery:blockinputbus>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [null, <tconstruct:wooden_hopper>, null],
            [null, <modularmachinery:blockcasing>, null],
            [null, <minecraft:chest>, null]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<modularmachinery:blockinputbus>)
          .create();

        //微型物品输出
        recipes.remove(<modularmachinery:blockoutputbus>);
        RecipeBuilder.get("engineer")
          .setShaped([
            [null, <tconstruct:wooden_hopper>, null],
            [null, <modularmachinery:blockcasing>, null],
            [null, <minecraft:chest>, null]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<modularmachinery:blockoutputbus>)
          .create();

        recipesUtils.addShapelessCycle(<modularmachinery:blockoutputbus>, <modularmachinery:blockinputbus>);

        //小型物品输入
        RecipeBuilder.get("engineer")
          .setShaped([
            [<modularmachinery:itemmodularium>, <tconstruct:wooden_hopper>, <modularmachinery:itemmodularium>],
            [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus>, <modularmachinery:itemmodularium>],
            [<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<modularmachinery:blockinputbus:1>)
          .create();

        //小型物品输出
        RecipeBuilder.get("engineer")
          .setShaped([
            [<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>],
            [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus>, <modularmachinery:itemmodularium>],
            [<modularmachinery:itemmodularium>, <tconstruct:wooden_hopper>, <modularmachinery:itemmodularium>]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<modularmachinery:blockoutputbus:1>)
          .create();

        recipesUtils.addShapelessCycle(<modularmachinery:blockoutputbus:1>, <modularmachinery:blockinputbus:1>);

        //机械外壳
        RecipeBuilder.get("engineer")
          .setShaped([
            [<techreborn:cable:5>, <techreborn:cable:5>, <techreborn:cable:5>],
            [<prodigytech:circuit_refined>, <techreborn:plates:35>, <prodigytech:circuit_refined>],
            [<techreborn:cable:5>, <techreborn:cable:5>, <techreborn:cable:5>]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<modularmachinery:blockcasing>)
          .create();
        
        //强化机械外壳
        recipes.remove(<modularmachinery:blockcasing:4>);
        RecipeBuilder.get("engineer")
          .setShaped(recipesUtils.crossItems(<enderio:block_reinforced_obsidian>, <modularmachinery:blockcasing>))
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<modularmachinery:blockcasing:4>)
          .create();

        //中型物品输入
        RecipeBuilder.get("engineer")
          .setShaped([
            [<modularmachinery:itemmodularium>, <tconstruct:wooden_hopper>, <modularmachinery:itemmodularium>],
            [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus>, <modularmachinery:itemmodularium>],
            [<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<modularmachinery:blockoutputbus:2>)
          .create();

        //中型物品输出
        RecipeBuilder.get("engineer")
          .setShaped([
            [<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>],
            [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus>, <modularmachinery:itemmodularium>],
            [<modularmachinery:itemmodularium>, <tconstruct:wooden_hopper>, <modularmachinery:itemmodularium>]])
          .addTool(<ore:artisansShears>, 1)
          .addOutput(<modularmachinery:blockinputbus:2>)
          .create();

        recipesUtils.addShapelessCycle(<modularmachinery:blockoutputbus:2>, <modularmachinery:blockinputbus:2>);
        
    }
}