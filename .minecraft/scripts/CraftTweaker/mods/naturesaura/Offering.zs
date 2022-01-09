##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     自然灵气 供桌
##================================================
#modloaded higanbana
#priority 2000

import mods.naturesaura.Offering;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.addOfferingRecipe;

//mods.naturesaura.Offering.addRecipe(String name, IIngredient input, int inputAmount, IIngredient startItem, IItemStack output)

//雷石
recipes.remove(<lightningcraft:stone_block>);
addOfferingRecipe(<lightningcraft:stone_block>, <botanicadds:dreamrock> * 3, <contenttweaker:thunder_rune>);

