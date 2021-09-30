##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     根源魔法 仪式: 繁花争艳
##================================================

#priority 2000
import mods.roots.FlowerGrowth;

for i in 0 .. 15 {
    //植物魔法神秘花
    FlowerGrowth.addRecipeBlock("mystical_flower" ~ i, <botania:flower>.asBlock(), i);
    //
}

//微光苋 
FlowerGrowth.addRecipeBlock("custom_flower", <astralsorcery:blockcustomflower>.asBlock(), 0);

//水银花
FlowerGrowth.addRecipeBlock("shimmer_leaf", <thaumcraft:shimmerleaf>.asBlock(), 0);

//烈焰草
FlowerGrowth.addRecipeBlock("cinder_pearl", <thaumcraft:cinderpearl>.asBlock(), 0);


