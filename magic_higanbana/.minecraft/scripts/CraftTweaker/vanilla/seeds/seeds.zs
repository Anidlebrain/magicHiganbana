##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     打草 掉落物
##================================================
#profile 2000
vanilla.seeds.removeSeed(<roots:terra_spores:0>);
vanilla.seeds.removeSeed(<minecraft:wheat_seeds:0>);
vanilla.seeds.removeSeed(<roots:wildroot:0>);
vanilla.seeds.removeSeed(<mysticalworld:aubergine_seed:0>);
vanilla.seeds.removeSeed(<extrautils2:enderlilly:0>);

//混合种子
vanilla.seeds.addSeed(<mysticalworld:assorted_seeds> % 50);
//vanilla.seeds.addSeed(<roots:terra_spores> % 1);
vanilla.seeds.addSeed(<roots:wildroot> % 1);
//vanilla.seeds.addSeed(<roots:wildewheet_seed> % 10);
vanilla.seeds.addSeed(<minecraft:wheat_seeds> % 5);
vanilla.seeds.addSeed(<minecraft:pumpkin_seeds> % 10);
