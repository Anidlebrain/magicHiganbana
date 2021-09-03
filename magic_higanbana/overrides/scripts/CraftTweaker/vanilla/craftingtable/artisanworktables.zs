##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     实用拓展 工匠之作
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass Artisanworktables{

    zenConstructor(){

    }

    function init() {
        recipesInit();
    }

    function recipesInit(){
        //基础工作台
        recipesUtils.addShapeless(<artisanworktables:worktable:5>, [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>]);

        //裁缝工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>],
            [<tconstruct:materials:15>, <artisanworktables:worktable:5>, <tconstruct:materials:15>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable>)
          .create();

        //木匠工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:logWood>, <ore:logWood>, <ore:logWood>],
            [<ore:logWood>, <artisanworktables:worktable:5>, <ore:logWood>],
            [<ore:logWood>, <ore:logWood>, <ore:logWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:1>)
          .create();

        //石匠工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:slabBricks>, <ore:slabBricks>, <ore:slabBricks>],
            [<minecraft:brick_block>, <artisanworktables:worktable:5>, <minecraft:brick_block>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:workstation:2>)
          .create();

        //铁匠工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
            [<ore:ingotIron>, <artisanworktables:worktable:5>, <ore:ingotIron>],
            [<ore:logWood>, <ore:logWood>, <ore:logWood>]])
          .addTool(<ore:artisansDriver>, 10)
          .addOutput(<artisanworktables:worktable:3>)
          .create();

        //珠宝商工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:gemEmerald>, <ore:gemDiamond>, <ore:gemEmerald>],
            [<ore:gemRuby>, <artisanworktables:worktable:5>, <ore:gemSapphire>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:4>)
          .create();

        //工程师工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:plateIron>, <immersiveengineering:toolbox>, <ore:plateIron>],
            [<ore:plateCopper>, <artisanworktables:worktable:5>, <ore:plateCopper>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:6>)
          .create();

        //法师工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:ingotManasteel>, <botania:tinyplanetblock>, <ore:ingotManasteel>],
            [<ore:ingotManasteel>, <artisanworktables:worktable:5>, <ore:ingotManasteel>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:7>)
          .create();

        //翻印工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:bookshelf>, <minecraft:writable_book>, <ore:bookshelf>],
            [<ore:bookshelf>, <artisanworktables:worktable:5>, <ore:bookshelf>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:8>)
          .create();

        //药剂师工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<roots:cloud_berry>, <roots:infernal_bulb>, <roots:dewgonia>],
            [<roots:stalicripe>, <artisanworktables:worktable:5>, <roots:pereskia>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:9>)
          .create();

        //农夫工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<minecraft:grass>, <minecraft:grass>, <minecraft:grass>],
            [<randomthings:coloredgrass:1>, <artisanworktables:worktable:5>, <randomthings:coloredgrass:1>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansChisel>, 10)
          .addOutput(<artisanworktables:worktable:10>)
          .setFluid(<liquid:water> * 1000)
          .create();

        //厨师工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<minecraft:concrete>, <ore:toolCuttingboard>, <minecraft:concrete>],
            [<minecraft:concrete>, <artisanworktables:worktable:5>, <minecraft:concrete>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:11>)
          .create();

        //设计师工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:paper>, <threng:material:7>, <ore:paper>],
            [<appliedenergistics2:material:44>, <artisanworktables:worktable:5>, <appliedenergistics2:material:43>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:12>)
          .create();

        //制革师工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:itemLeather>, <roots:fey_leather>, <ore:itemLeather>],
            [<ore:itemLeather>, <artisanworktables:worktable:5>, <ore:itemLeather>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:13>)
          .create();

        //制陶师工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:hardenedClay>, <ore:hardenedClay>, <ore:hardenedClay>],
            [<skyresources:heat>, <artisanworktables:worktable:5>, <skyresources:heat>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:14>)
          .create();





    }
}