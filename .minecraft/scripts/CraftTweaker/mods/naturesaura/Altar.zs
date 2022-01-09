##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     自然灵气 自然祭坛
##================================================
#modloaded higanbana
#priority 2000

import mods.naturesaura.Altar;
//mods.naturesaura.Altar.addRecipe(String name, IIngredient input, IItemStack output, IIngredient catalyst, int aura, int time)

// 1600000 -> 120 13333.3333333 1W 

//灌注铁锭
Altar.removeRecipe(<naturesaura:infused_iron>);
Altar.addRecipe("naturesaura/Altar/infused_iron", <prodigytech:zorrasteel_ingot>, <naturesaura:infused_iron>, null, 15000, 100);

//灌注铁块
Altar.removeRecipe(<naturesaura:infused_iron_block>);
Altar.addRecipe("naturesaura/Altar/infused_iron_block", <prodigytech:zorrasteel_block>, <naturesaura:infused_iron_block>, null, 105000, 100);

//灌注石
Altar.removeRecipe(<naturesaura:infused_stone>);
Altar.addRecipe("naturesaura/Altar/infused_stone", <botania:livingrock>, <naturesaura:infused_stone>, null, 10000, 100);