##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     虚空工艺 虚空灌注祭坛
##================================================
#priority 2000
#modloaded voidcraft
import moretweaker.voidcraft.VoidInfusion;
/*
VoidInfusion.add(IItemStack output, IIngredient input, int voidicFluid);

VoidInfusion.remove(IIngredient output);


*/

//虚空磨粉机
VoidInfusion.remove(<voidcraft:voidmacerator>);
VoidInfusion.add(<voidcraft:voidmacerator>, <thermalexpansion:machine:1>, 1000);
VoidInfusion.add(<voidcraft:voidmacerator>, <actuallyadditions:block_grinder>, 1000);

//虚空石
VoidInfusion.add(<chisel:voidstone:2>, <ore:stone>, 500);
VoidInfusion.add(<chisel:voidstone:2>, <botania:livingrock>, 200);
VoidInfusion.add(<chisel:voidstone:2>, <naturesaura:infused_stone>, 100);


