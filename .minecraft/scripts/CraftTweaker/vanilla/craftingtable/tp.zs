##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     微型自动化 工作台合成
##================================================

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{

    //脉冲熔岩石
    recipes.remove(<tp:lava_infused_stone>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<tp:hardened_stone>, null, <tp:hardened_stone>],
        [null, <skyresources:magmafiedstone>, null],
        [<tp:hardened_stone>, null, <tp:hardened_stone>]])
      .addTool(<ore:artisansHammer>, 1)
      .addTool(<ore:artisansDriver>, 1)
      .addOutput(<tp:lava_infused_stone>)
      .create();

    //果汁
    var juice = [
        <tp:carrot_juice>,
        <tp:blackberry_juice>,
        <tp:melon_juice>,
        <tp:raspberry_juice>,
        <tp:beet_juice>,
        <tp:potatoe_juice>,
        <tp:maloberry_juice>,
        <tp:slime_juice>,
        <tp:apple_juice>,
        <tp:cactus_juice>,
        <tp:peach_juice>,
        <tp:blueberry_juice>,
        <tp:pumpkin_juice>,
        <tp:pear_juice>,
        <tp:wheat_juice>
    ] as IIngredient[];

    for item in juice
    {
        recipes.remove(item);
    }

    RecipeBuilder.get("chef")
      .setCopy(Copy.byOutput(juice).replaceInput(<tp:juicer>, <ore:toolJuicer>))
      .setFluid(<liquid:water> * 250)
      .create();

    //铁质熔炉
    recipes.remove(<tp:iron_furnace_block>);
    RecipeBuilder.get("blacksmith")
      .setShaped([
        [<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>],
        [<minecraft:furnace>, <ore:ingotIron>, <minecraft:furnace>],
        [<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>]])
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<tp:iron_furnace_block>)
      .create();

    //生长结晶
    recipes.remove(<tp:growth_block>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<ore:ingotFrozenIron>, <minecraft:dragon_breath>, null, <minecraft:dragon_breath>, <ore:ingotFrozenIron>],
        [<minecraft:dragon_breath>, null, <xreliquary:fertile_lilypad>, null, <minecraft:dragon_breath>],
        [null, <xreliquary:fertile_lilypad>, <minecraft:sea_lantern>, <xreliquary:fertile_lilypad>, null],
        [<minecraft:dragon_breath>, null, <xreliquary:fertile_lilypad>, null, <minecraft:dragon_breath>],
        [<ore:ingotFrozenIron>, <minecraft:dragon_breath>, null, <minecraft:dragon_breath>, <ore:ingotFrozenIron>]])
      .addTool(<ore:artisansAthame>, 1)
      .addTool(<ore:artisansGrimoire>, 1)
      .addOutput(<tp:growth_block>)
      .create();

    //二级生长结晶
    recipes.remove(<tp:growth_upgrade>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<tp:growth_block>, <minecraft:dragon_breath>, null, <minecraft:dragon_breath>, <tp:growth_block>],
        [<minecraft:dragon_breath>, null, <xreliquary:witherless_rose>, null, <minecraft:dragon_breath>],
        [null, <xreliquary:witherless_rose>, <minecraft:sea_lantern>, <xreliquary:witherless_rose>, null],
        [<minecraft:dragon_breath>, null, <xreliquary:witherless_rose>, null, <minecraft:dragon_breath>],
        [<tp:growth_block>, <minecraft:dragon_breath>, null, <minecraft:dragon_breath>, <tp:growth_block>]])
      .addTool(<ore:artisansAthame>, 1)
      .addTool(<ore:artisansGrimoire>, 1)
      .addOutput(<tp:growth_upgrade>)
      .create();

    //三级生长结晶
    recipes.remove(<tp:growth_upgrade_two>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<tp:growth_upgrade>, <minecraft:dragon_breath>, null, <minecraft:dragon_breath>, <tp:growth_upgrade>],
        [<minecraft:dragon_breath>, null, <extendedcrafting:material:40>, null, <minecraft:dragon_breath>],
        [null, <extendedcrafting:material:40>, <minecraft:end_crystal>, <extendedcrafting:material:40>, null],
        [<minecraft:dragon_breath>, null, <extendedcrafting:material:40>, null, <minecraft:dragon_breath>],
        [<tp:growth_upgrade>, <minecraft:dragon_breath>, null, <minecraft:dragon_breath>, <tp:growth_upgrade>]])
      .addTool(<ore:artisansAthame>, 1)
      .addTool(<ore:artisansGrimoire>, 1)
      .addOutput(<tp:growth_upgrade_two>)
      .create();

    //漂浮方块
    recipes.remove(<tp:fmf_block>);
    RecipeBuilder.get("basic")
      .setShaped([
        [<minecraft:feather>, <randomthings:blockofsticks:1>, <minecraft:feather>],
        [<randomthings:blockofsticks:1>, <minecraft:feather>, <randomthings:blockofsticks:1>],
        [<minecraft:feather>, <randomthings:blockofsticks:1>, <minecraft:feather>]])
      .addOutput(<tp:fmf_block>)
      .create();

    //强化水壶
    recipes.remove(<tp:watering_can_upgrade>);
    RecipeBuilder.get("farmer")
      .setShaped([
        [<ore:ingotRefinedObsidian>, <ore:netherStar>, null],
        [<ore:ingotRefinedObsidian>, <tp:watering_can>, <ore:ingotRefinedObsidian>],
        [null, <ore:ingotRefinedObsidian>, null]])
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<tp:watering_can_upgrade>)
      .create();

    //水壶
    recipes.remove(<tp:watering_can>);
    RecipeBuilder.get("farmer")
      .setShaped([
        [<ore:ingotIron>, <minecraft:dye:15>, null],
        [<ore:ingotIron>, <extrautils2:wateringcan>, <ore:ingotIron>],
        [null, <ore:ingotIron>, null]])
      .addTool(<ore:artisansHammer>, 1)
      .addOutput(<tp:watering_can>)
      .create();

    //万用修复器
    recipes.remove(<tp:repair_tablet>);
    RecipeBuilder.get("mage")
      .setShaped([
        [null, <tconstruct:materials:19>, null, <tconstruct:materials:19>, null],
        [<tconstruct:materials:19>, null, <tp:hardened_stone>, null, <tconstruct:materials:19>],
        [<tp:hardened_stone>, <ore:itemGhastTear>, <xreliquary:midas_touchstone>, <ore:itemGhastTear>, <tp:hardened_stone>],
        [null, <tp:hardened_stone>, <ore:itemGhastTear>, <tp:hardened_stone>, null],
        [null, null, <tp:hardened_stone>, null, null]])
      .addTool(<ore:artisansAthame>, 1)
      .addTool(<ore:artisansAthame>, 1)
      .addTool(<ore:artisansGrimoire>, 1)
      .addOutput(<tp:repair_tablet>)
      .create();

    //造石机
    recipes.remove(<tp:cobblegen_block>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<tp:hardened_stone>, <tp:hardened_stone>, <tp:hardened_stone>],
        [<minecraft:water_bucket>, <ore:blockGlassGlowstone>, <minecraft:lava_bucket>],
        [<tp:hardened_stone>, <tp:hardened_stone>, <tp:hardened_stone>]])
      .addTool(<ore:artisansSpanner>, 1)
      .addOutput(<tp:cobblegen_block>)
      .create();

    //二级造石机
    recipes.remove(<tp:iron_cobblegen_block>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
        [<ore:ingotSteel>, <tp:cobblegen_block>, <ore:ingotSteel>],
        [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]])
      .addTool(<ore:artisansSpanner>, 1)
      .addOutput(<tp:iron_cobblegen_block>)
      .create();

    //三级造石机
    recipes.remove(<tp:diamond_cobblegen_block>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<ore:manaDiamond>, <ore:manaDiamond>, <ore:manaDiamond>],
        [<ore:manaDiamond>, <tp:iron_cobblegen_block>, <ore:manaDiamond>],
        [<ore:manaDiamond>, <ore:manaDiamond>, <ore:manaDiamond>]])
      .addTool(<ore:artisansSpanner>, 1)
      .addOutput(<tp:diamond_cobblegen_block>)
      .create();

    //四级造石机
    recipes.remove(<tp:blaze_cobblegen_block>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_rod>],
        [<minecraft:blaze_rod>, <tp:diamond_cobblegen_block>, <minecraft:blaze_rod>],
        [<minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_rod>]])
      .addTool(<ore:artisansSpanner>, 1)
      .addOutput(<tp:blaze_cobblegen_block>)
      .create();

    //五级造石机
    recipes.remove(<tp:emerald_cobblegen_block>);
    RecipeBuilder.get("engineer")
      .setShaped([
        [<actuallyadditions:item_crystal:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>],
        [<actuallyadditions:item_crystal_empowered:4>, <tp:blaze_cobblegen_block>, <actuallyadditions:item_crystal_empowered:4>],
        [<actuallyadditions:item_crystal:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>]])
      .addTool(<ore:artisansSpanner>, 1)
      .addOutput(<tp:emerald_cobblegen_block>)
      .create();

    //软石
    recipes.remove(<tp:unhardened_stone>);
    RecipeBuilder.get("mason")
      .setShaped([
        [<ore:cobblestone>, <ore:sand>, <ore:cobblestone>],
        [<ore:itemClay>, <ore:ingotIron>, <ore:itemClay>],
        [<ore:cobblestone>, <ore:sand>, <ore:cobblestone>]])
      .addTool(<ore:artisansTrowel>, 1)
      .addOutput(<tp:unhardened_stone>)
      .create();
}

function itemRemove()
{
    //生培根
    itemHelper.removeItem(<tp:raw_bacon>);
    //石锤
    itemHelper.removeItem(<tp:stone_hammer>);
    //幽灵方块
    itemHelper.removeItem(<tp:ghost_block>);
    //黑曜石粉
    itemHelper.removeItem(<tp:obsidian_dust>);
    
    //榨汁机
    itemHelper.removeItem(<tp:juicer>);
    
    //甘蔗棍
    itemHelper.removeItem(<tp:bsc_rod>);

    //强化黑曜石
    itemHelper.removeItem(<tp:reinforced_obsidian>);
    //强化黑曜石
    itemHelper.removeItem(<tp:reinforced_obsidian_ingot>);
    
}

if (!isInvalid)
{
    init();
}
