##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 制陶师工作台
##================================================
#priority 2000
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

var potterItem = [

    <minecraft:dirt:1>,
    <minecraft:dirt:2>,
    <minecraft:cobblestone>,
    <minecraft:sand>,
    <minecraft:gravel>,
    <minecraft:lapis_ore>,
    <minecraft:sandstone>,
    <minecraft:gold_block>,
    <minecraft:iron_block>,
    <minecraft:brick_block>,
    <minecraft:mossy_cobblestone>,
    <minecraft:diamond_block>,
    <minecraft:glowstone>,
    <minecraft:nether_brick>,
    <minecraft:emerald_block>,
    <minecraft:redstone_block>,
    <minecraft:quartz_block>,
    <minecraft:glass_bottle>,

    <skyresources:sandynetherrack>,
    <skyresources:compressedcoalblock>,
    <skyresources:coalinfusedblock>,
    <skyresources:darkmatterblock>,
    <skyresources:alchemyitemcomponent:6>,
    <skyresources:baseitemcomponent:3>,
    <skyresources:lightmatterblock>,

    <tp:hardened_stone_smallbricks>,
    <tp:soul_sandstone>,
    <tp:reinforced_glass>,
    <tp:flesh_block>,
    <tp:colored_glowstone>,
    <tp:colored_glowstone:1>,
    <tp:colored_glowstone:2>,
    <tp:colored_glowstone:3>,
    <tp:colored_glowstone:4>,
    <tp:colored_glowstone:5>,
    <tp:colored_glowstone:6>,
    <tp:colored_glowstone:7>,
    <tp:colored_glowstone:8>,
    <tp:colored_glowstone:9>,
    <tp:colored_glowstone:10>,
    <tp:colored_glowstone:11>,
    <tp:colored_glowstone:12>,
    <tp:colored_glowstone:13>,
    <tp:colored_glowstone:14>,
    <tp:hardened_stone_bricks>,
    <tp:flint_block>,
    <tp:colored_lamp>,
    <tp:colored_lamp:1>,
    <tp:colored_lamp:2>,
    <tp:colored_lamp:3>,
    <tp:colored_lamp:4>,
    <tp:colored_lamp:5>,
    <tp:colored_lamp:6>,
    <tp:colored_lamp:7>,
    <tp:colored_lamp:8>,
    <tp:colored_lamp:9>,
    <tp:colored_lamp:10>,
    <tp:colored_lamp:11>,
    <tp:colored_lamp:12>,
    <tp:colored_lamp:13>,
    <tp:colored_lamp:14>,
    <tp:colored_lamp:15>,
] as IIngredient[];

var potterNotItem = [

    <minecraft:stone:1>,
    <minecraft:stone:3>,
    <minecraft:stone:5>,


] as IIngredient[];

var potterOre = [

] as IOreDictEntry[];


RecipeBuilder.get("potter")
  .setCopy(Copy.byOutput(potterItem))
  .addTool(<ore:artisansBurner>, 1)
  .create();

for item in potterItem
{
    recipes.remove(item);
}

RecipeBuilder.get("potter")
  .setCopy(Copy.byOutput(potterNotItem))
  .addTool(<ore:artisansBurner>, 1)
  .create();

for ore in potterOre
{
    recipesUtils.removeOreRecipes(ore);
}
