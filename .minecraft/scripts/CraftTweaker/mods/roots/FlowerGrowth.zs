##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     根源魔法 仪式: 繁花争艳
##================================================
#modloaded higanbana
#priority 2000

import mods.roots.FlowerGrowth;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.addFlowerGrowth;


for i in 0 .. 15 {
    //植物魔法神秘花
    addFlowerGrowth(<botania:flower>, i);
    //
}

//微光苋 
addFlowerGrowth(<astralsorcery:blockcustomflower>, 0);

//水银花
addFlowerGrowth(<thaumcraft:shimmerleaf>, 0);

//烈焰草
addFlowerGrowth(<thaumcraft:cinderpearl>, 0);


