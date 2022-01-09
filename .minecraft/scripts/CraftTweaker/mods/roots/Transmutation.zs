##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     根源魔法 仪式: 自然嬗变
##================================================
#modloaded higanbana
#priority 2000

import crafttweaker.block.IBlockState;
import mods.roots.predicates.Predicates;
import mods.roots.predicates.BlockStateBelow;
import mods.roots.predicates.PropertyPredicate;
import mods.roots.Transmutation;

Transmutation.addStateToStateRecipe("transmutation_recipe_naturecore",
    PropertyPredicate.create(<blockstate:botania:pylon:variant=natura> as IBlockState, ["variant"]),
    <blockstate:randomthings:naturecore>, null);