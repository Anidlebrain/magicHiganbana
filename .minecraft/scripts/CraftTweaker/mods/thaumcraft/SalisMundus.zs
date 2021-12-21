##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     神秘时代 世界盐
##================================================
#modloaded higanbanautils
#priority 2000

import mods.thaumcraft.SalisMundus;
/*
//mods.thaumcraft.SalisMundus.addSingleConversion(IBlock in, IItemStack out, @Optional String research);
SalisMundus.addSingleConversion(<blockstate:minecraft:dirt>.block, <minecraft:bedrock>);

//mods.thaumcraft.SalisMundus.addSingleConversion(IOreDictEntry in, IItemStack out, @Optional String research);
mods.thaumcraft.SalisMundus.addSingleConversion(IOreDictEntry in, IItemStack out, @Optional String research);
SalisMundus.addSingleConversion(<ore:blockIron>, <minecraft:bedrock>);
*/

//奥术工作台
SalisMundus.removeSingleConversion(<thaumcraft:arcane_workbench>);
SalisMundus.addSingleConversion(<artisanworktables:worktable:7>.asBlock(), <thaumcraft:arcane_workbench>, "FIRSTSTEPS");

