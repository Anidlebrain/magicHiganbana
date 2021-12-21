##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     根源魔法 炼金嬗变
##================================================
#modloaded higanbanautils
#priority 2000

import mods.roots.Chrysopoeia;

Chrysopoeia.removeRecipeByOutput(<minecraft:iron_ingot>);
Chrysopoeia.removeRecipeByOutput(<minecraft:iron_nugget>);
Chrysopoeia.removeRecipeByOutput(<minecraft:gold_ingot>);
Chrysopoeia.removeRecipeByOutput(<minecraft:gold_nugget>);

//工作台=>工作站
for i in 0 .. 15
{
    var name = "worktable_to_artisanworktables" ~ i;
    Chrysopoeia.addRecipe(name, <artisanworktables:worktable>.definition.makeStack(i), <artisanworktables:workstation>.definition.makeStack(i));
}

