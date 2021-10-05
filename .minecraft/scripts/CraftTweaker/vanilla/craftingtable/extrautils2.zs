##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     更多实用设备 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{
    
    //垃圾桶
    recipes.remove(<extrautils2:trashcan>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.surroundItems(<ore:cobblestone>, <minecraft:hopper>))
      .addTool(<ore:artisansCutters>, 5)
      .addOutput(<extrautils2:trashcan>)
      .create();

    //流体垃圾桶
    recipes.remove(<extrautils2:trashcanfluid>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.surroundItems(<ore:cobblestone>, <flopper:flopper>))
      .addTool(<ore:artisansCutters>, 6)
      .addOutput(<extrautils2:trashcanfluid>)
      .create();
    
    //能量垃圾桶
    recipes.remove(<extrautils2:trashcanenergy>);
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.surroundItems(<ore:cobblestone>, <techreborn:energycrystal>))
      .addTool(<ore:artisansCutters>, 7)
      .addOutput(<extrautils2:trashcanenergy>)
      .create();

    //消音器
    recipes.remove(<extrautils2:soundmuffler>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<randomthings:sounddampener>, <minecraft:noteblock>, null],
        [null, null, null],
        [null, null, null]])
      .addTool(<ore:artisansCutters>, 3)
      .addOutput(<extrautils2:soundmuffler>)
      .create();

/*
    //红石钟
    recipes.remove(<extrautils2:redstoneclock>);
    recipesUtils.addRecipe(<extrautils2:redstoneclock>,
        ["ABA",
            "BCB",
            "ABA"],
        { A : <minecraft:redstone_torch>,
            C : <extrautils2:ingredients:1>,
            B : <extrautils2:decorativesolid:3>}
    );
*/        
    //漆黑之门
    recipes.remove(<extrautils2:teleporter:1>);
    RecipeBuilder.get("jeweler")
      .setShaped([
        [<extrautils2:compressedcobblestone:7>, <extrautils2:compressedcobblestone:7>, <extrautils2:compressedcobblestone:7>],
        [<extrautils2:compressedcobblestone:7>, <extrautils2:compressedcobblestone:7>, <extrautils2:compressedcobblestone:7>],
        [<extrautils2:compressedcobblestone:7>, <extrautils2:compressedcobblestone:7>, <extrautils2:compressedcobblestone:7>]])
      .addTool(<ore:artisansGemCutter>, 60)
      .addTool(<ore:artisansTrowel>, 60)
      .addTool(<ore:artisansCarver>, 2000)
      .addOutput(<extrautils2:teleporter:1>)
      .create();

    //机器方块
    recipes.remove(<extrautils2:machine>);
    //暂定
    recipesUtils.addShapelessCycle(<extrautils2:machine>, <thermalexpansion:frame>);
    
    //电炉
    RecipeBuilder.get("engineer")
      .setShaped(recipesUtils.surroundItems(<techreborn:machine_casing>, <extrautils2:machine>))
      .addTool(<ore:artisansCutters>, 6)
      .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}))
      .create();

    //生存者发电机
    RecipeBuilder.get("engineer")
      .setShaped([
        [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>],
        [<extrautils2:decorativesolid:3>, <extrautils2:machine>, <extrautils2:decorativesolid:3>],
        [<actuallyadditions:item_crystal_empowered>, <minecraft:furnace>, <actuallyadditions:item_crystal_empowered>]])
      .addTool(<ore:artisansCutters>, 6)
      .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}))
      .create();

/*
    //粉碎机
    recipesUtils.addRecipe(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}), [
        [<pneumaticcraft:compressed_iron_gear>, <appliedenergistics2:grindstone>, <pneumaticcraft:compressed_iron_gear>],
        [<pneumaticcraft:compressed_iron_gear>, <extrautils2:machine>, <pneumaticcraft:compressed_iron_gear>],
        [<pneumaticcraft:compressed_iron_gear>, <appliedenergistics2:grindstone>, <pneumaticcraft:compressed_iron_gear>]]);
*/
    //附魔器
    RecipeBuilder.get("engineer")
      .setShaped([
        [<minecraft:enchanted_book>, <minecraft:enchanted_book>, <minecraft:enchanted_book>],
        [<ore:gearDiamond>, <extrautils2:machine>, <ore:gearDiamond>],
        [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]])
      .addTool(<ore:artisansCutters>, 6)
      .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}))
      .create();
}

function itemRemove()
{
    //红石齿轮
    recipes.remove(<extrautils2:ingredients:1>);

    //月之石
    recipes.removeByRecipeName("extrautils2:moon_stone");
}

if (!isInvalid)
{
    init();
}