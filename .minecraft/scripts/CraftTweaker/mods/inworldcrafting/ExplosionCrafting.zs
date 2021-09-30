##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     沉浸工程 爆炸合成
##================================================

#priority 2000
import mods.inworldcrafting.ExplosionCrafting;

recipes.remove(<prodigytech:explosion_furnace>);
ExplosionCrafting.explodeBlockRecipe(<prodigytech:explosion_furnace>, <bloodmagic:soul_forge>, 30);
