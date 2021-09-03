##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     匠魂 铸造
##================================================
#priority 2000
import mods.tconstruct.Casting;

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);

//板铸磨
Casting.addTableRecipe(<tconstruct:cast_custom:3>, <techreborn:plates:3>, <fluid:gold>, 576, true);

//精英工作台
//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
Casting.addBasinRecipe(<extendedcrafting:table_elite>, <extendedcrafting:table_advanced>, <liquid:terrasteel>, 3888, true, 2000);