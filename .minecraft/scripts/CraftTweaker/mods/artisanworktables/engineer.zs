##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工匠之作 工程师工作台
##================================================
#modloaded higanbanautils
#priority 2000

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var engineerItem = [
    
    <skyresources:rockcrusher>,
    <skyresources:rockcleaner>,
    <skyresources:combustioncollector>,
    <skyresources:combustioncontroller>,
    <skyresources:quickdropper>,
    <skyresources:ironfreezer>,
    <skyresources:lightfreezer>,
    <skyresources:crucibleinserter>,
    <skyresources:aqueousconcentrator>,
    <skyresources:aqueousdeconcentrator>,
    <skyresources:baseitemcomponent:1>,
    <skyresources:baseitemcomponent:2>,
    <skyresources:silverfishdisruptor>,


] as IIngredient[];

RecipeBuilder.get("engineer")
  .setCopy(Copy.byOutput(engineerItem))
  .addTool(<ore:artisansCutters>, 1)
  .create();

for item in engineerItem
{
    recipes.remove(item);
}