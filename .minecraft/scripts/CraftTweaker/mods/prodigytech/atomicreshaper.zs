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

atomicreshaper.removeRecipe(<ore:oreQuartzBlack>);


//粘性树脂
atomicreshaper.addRecipe(<xreliquary:mob_ingredient:4>, <techreborn:part:31>, 75);

//金叶
atomicreshaper.addRecipe(<prodigytech:zorra_leaf>, <naturesaura:gold_leaf>, 5);

