##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     奇才妙械 原子重塑机
##================================================
#priority 2000
import mods.prodigytech.atomicreshaper;

//电路板
atomicreshaper.removeRecipe(<prodigytech:circuit_plate>);
atomicreshaper.removeRecipe(<minecraft:paper>);

//秘银矿石
atomicreshaper.removeRecipe(<ore:oreMithril>);
atomicreshaper.removeRecipe(<thermalfoundation:ore:8>);
atomicreshaper.removeRecipe(<ore:bricksStone>);

atomicreshaper.removeRecipe(<ore:oreQuartzBlack>);


//粘性树脂
atomicreshaper.addRecipe(<xreliquary:mob_ingredient:4>, <techreborn:part:31>, 75);

//金叶
atomicreshaper.addRecipe(<prodigytech:zorra_leaf>, <naturesaura:gold_leaf>, 5);

