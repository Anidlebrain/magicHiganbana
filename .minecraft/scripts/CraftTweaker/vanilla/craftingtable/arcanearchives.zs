##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     实用拓展 奥术缓存
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    itemRemove();
    recipesInit();
}

function recipesInit()
{

    //宝石切割台
    recipes.remove(<arcanearchives:gemcutters_table>);
    RecipeBuilder.get("jeweler")
      .setShaped([
        [<arcanearchives:raw_quartz>, <ore:quartzLavender>, <thaumcraft:inlay>, <ore:quartzLavender>, <arcanearchives:raw_quartz>],
        [<ore:quartzSunny>, null, <astralsorcery:itemcraftingcomponent:3>, null, <ore:quartzBlaze>],
        [<thaumcraft:inlay>, <astralsorcery:blockinfusedwood>, <artisanworktables:workshop:4>, <astralsorcery:blockinfusedwood>, <thaumcraft:inlay>],
        [<ore:quartzSunny>, null, <astralsorcery:blockinfusedwood>, null, <ore:quartzBlaze>],
        [<arcanearchives:raw_quartz>, <ore:quartzElven>, <thaumcraft:inlay>, <ore:quartzElven>, <arcanearchives:raw_quartz>]])
      .setSecondaryIngredients([<minecraft:emerald>, <techreborn:gem>, <tconstruct:materials:16>, <techreborn:gem:1>, <astralsorcery:itemcraftingcomponent>])
      .addTool(<ore:artisansHammer>, 348)
      .addOutput(<arcanearchives:gemcutters_table>)
      .setExtraOutputOne(<minecraft:quartz>, 0.88)
      .setExtraOutputTwo(<arcanearchives:quartz_sliver>, 0.6)
      .setExtraOutputThree(<arcanearchives:quartz_sliver>, 0.6)
      .create();

    //奥术法典
    recipes.remove(<arcanearchives:tome_arcana>);
    RecipeBuilder.get("scribe")
      .setShapeless([<minecraft:book>, <arcanearchives:raw_quartz>])
      .addOutput(<arcanearchives:tome_arcana>.withTag({Book: "arcanearchives:xml/tome.xml"}))
      .create();
    
    //雕刻宝石
    RecipeBuilder.get("jeweler")
      .setShaped([
        [<arcanearchives:raw_quartz>]])
      .setSecondaryIngredients([<arcanearchives:raw_quartz>, <arcanearchives:raw_quartz>, <arcanearchives:raw_quartz>, <arcanearchives:raw_quartz>])
      .addTool(<artisanworktables:artisans_gemcutter_wood>, 1)
      .addOutput(<arcanearchives:shaped_quartz>)
      .setExtraOutputOne(<arcanearchives:raw_quartz>, 0.5)
      .setExtraOutputTwo(<arcanearchives:raw_quartz>, 0.2)
      .setExtraOutputThree(<arcanearchives:raw_quartz>, 0.01)
      .create();
}

function itemRemove()
{
    itemHelper.removeItem(<arcanearchives:radiant_crafting_table>);
}

if (!isInvalid)
{
    init();
}