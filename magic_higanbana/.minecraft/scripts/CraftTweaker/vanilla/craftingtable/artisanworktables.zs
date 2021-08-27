##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
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

        //木匠工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:logWood>, <ore:logWood>, <ore:logWood>],
            [<ore:logWood>, <artisanworktables:worktable:5>, <ore:logWood>],
            [<ore:logWood>, <ore:logWood>, <ore:logWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:worktable:1>)
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

        //石匠工作台
        RecipeBuilder.get("basic")
          .setShaped([
            [<ore:slabBricks>, <ore:slabBricks>, <ore:slabBricks>],
            [<minecraft:brick_block>, <artisanworktables:worktable:5>, <minecraft:brick_block>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
          .addTool(<ore:artisansDriver>, 1)
          .addOutput(<artisanworktables:workstation:2>)
          .create();
    }
}