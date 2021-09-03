##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 翻印工作台
##================================================
#priority 2000
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var scribeItem = [
    
    <minecraft:map>,
    <minecraft:book>,

    
    

] as IIngredient[];

RecipeBuilder.get("scribe")
  .setCopy(Copy.byOutput(scribeItem))
  .setExperienceRequired(50)
  .addTool(<ore:artisansBurner>, 1)
  .create();