##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     更多实用设备 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass Extrautils2Recipes{

    zenConstructor(){

    }

    function init() {
        recipesInit();
        itemRemove();
    }

    function recipesInit(){
        
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

        //熔炉发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:plateDenseIron>, <ore:gearIron>, <ore:plateDenseIron>],
            [<ore:gearIron>, <extrautils2:machine>, <ore:gearIron>],
            [<enderio:item_alloy_ingot:3>, <minecraft:furnace>, <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}))
          .create();

        //厨用发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<harvestcraft:cuttingboarditem>, <harvestcraft:mortarandpestleitem>, <harvestcraft:bakewareitem>],
            [<harvestcraft:saucepanitem>, <harvestcraft:deluxechickencurryitem>, <harvestcraft:skilletitem>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}))
          .create();

        //熔岩发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<actuallyadditions:block_lava_factory_controller>, <actuallyadditions:block_misc:7>, <actuallyadditions:block_lava_factory_controller>],
            [<actuallyadditions:block_misc:7>, <extrautils2:passivegenerator:2>, <actuallyadditions:block_misc:7>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}))
          .create();

        //高热红石发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<mekanism:compressedredstone>, <ore:ingotDemonicMetal>, <mekanism:compressedredstone>],
            [<ore:ingotDemonicMetal>, <actuallyadditions:block_crystal_empowered>, <ore:ingotDemonicMetal>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}))
          .create();

        //末影发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>],
            [<ore:ingotEnderium>, <extrautils2:ingredients:2>, <ore:ingotEnderium>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}))
          .create();

        //药水发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<bloodmagic:potion_flask>, <thermalexpansion:augment:448>, <bloodmagic:potion_flask>],
            [<bloodmagic:potion_flask>, <minecraft:brewing_stand>, <bloodmagic:potion_flask>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}))
          .create();

        //粉红发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<appliedenergistics2:paint_ball:6>, <appliedenergistics2:paint_ball:6>, <appliedenergistics2:paint_ball:6>],
            [<appliedenergistics2:paint_ball:6>, <minecraft:pink_shulker_box>, <appliedenergistics2:paint_ball:6>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}))
          .create();

        //超频发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:ingotAdvancedAlloy>, <ore:ingotAdvancedAlloy>, <ore:ingotAdvancedAlloy>],
            [<ore:ingotAdvancedAlloy>, <techreborn:upgrades>, <ore:ingotAdvancedAlloy>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}))
          .create();
            

        //TNT发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<extrautils2:unstableingots>, <extrautils2:unstableingots>, <extrautils2:unstableingots>],
            [<extrautils2:unstableingots>, <minecraft:tnt>, <extrautils2:unstableingots>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}))
          .create();

        //下界之星发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<woot:structure:4>, <actuallyadditions:item_misc:19>, <woot:structure:4>],
            [<actuallyadditions:item_misc:19>, <xreliquary:witherless_rose>, <actuallyadditions:item_misc:19>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}))
          .create();

        //龙息发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:dragonEgg>, <minecraft:end_rod>, <ore:dragonEgg>],
            [<minecraft:end_rod>, <actuallyadditions:item_misc:19>, <minecraft:end_rod>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}))
          .create();

        //霜冻发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<ore:dustCryotheum>, <ore:dustCryotheum>, <ore:dustCryotheum>],
            [<ore:dustCryotheum>, <techreborn:part:12>, <ore:dustCryotheum>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}))
          .create();

        //死亡发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<actuallyadditions:item_damage_lens>, <actuallyadditions:item_damage_lens>, <actuallyadditions:item_damage_lens>],
            [<actuallyadditions:item_damage_lens>, <extrautils2:cursedearth>, <actuallyadditions:item_damage_lens>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}))
          .create();

        //祛魔发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<actuallyadditions:item_disenchanting_lens>, <actuallyadditions:item_disenchanting_lens>, <actuallyadditions:item_disenchanting_lens>],
            [<actuallyadditions:item_disenchanting_lens>, <xreliquary:magicbane:0>, <actuallyadditions:item_disenchanting_lens>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}))
          .create();

        //史莱姆发电机
        RecipeBuilder.get("engineer")
          .setShaped([
            [<tconstruct:ingots:3>, <tconstruct:ingots:3>, <tconstruct:ingots:3>],
            [<tconstruct:ingots:3>, <enderio:block_alloy_endergy:4>, <tconstruct:ingots:3>],
            [<enderio:item_alloy_ingot:3>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <enderio:item_alloy_ingot:3>]])
          .addTool(<ore:artisansCutters>, 6)
          .addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}))
          .create();
    }

    function itemRemove()
    {
        //红石齿轮
        recipes.remove(<extrautils2:ingredients:1>);

        //月之石
        recipes.removeByRecipeName("extrautils2:moon_stone");
    }
}