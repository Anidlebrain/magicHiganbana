##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     空岛资源 生命注入
##================================================
#priority 2000
import mods.skyresources.infusion;

//冰种子
//freezer.addRecipe(<mechanics:burst_seed_ice>, <botania:specialflower>.withTag({type: "hydroangeas"}) * 4, 1200);

//星辉合成台
recipes.remove(<astralsorcery:blockaltar>);
infusion.addRecipe(<astralsorcery:blockaltar>, <contenttweaker:starglow_gem> * 3, <artisanworktables:worktable:5>, 15);
