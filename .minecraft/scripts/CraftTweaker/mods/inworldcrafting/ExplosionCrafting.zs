##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     世界合成 爆炸合成
##================================================
#modloaded higanbana
#priority 2000

import mods.inworldcrafting.ExplosionCrafting;

recipes.remove(<prodigytech:explosion_furnace>);
ExplosionCrafting.explodeBlockRecipe(<prodigytech:explosion_furnace>, <bloodmagic:soul_forge>, 30);
