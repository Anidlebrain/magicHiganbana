##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     打草 掉落物
##================================================
#modloaded higanbanautils
#priority 2000

for seed in vanilla.seeds.seeds
{
    vanilla.seeds.removeSeed(seed.stack);
}

//混合种子
vanilla.seeds.addSeed(<mysticalworld:assorted_seeds> % 50);
//vanilla.seeds.addSeed(<roots:terra_spores> % 1);
vanilla.seeds.addSeed(<roots:wildroot> % 1);
//vanilla.seeds.addSeed(<roots:wildewheet_seed> % 10);
vanilla.seeds.addSeed(<minecraft:wheat_seeds> % 5);
vanilla.seeds.addSeed(<minecraft:pumpkin_seeds> % 10);
