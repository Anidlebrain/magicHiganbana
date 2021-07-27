##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     cot 处理函数             ##
##################################################

#loader contenttweaker
#priority 30000
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.SoundEvent;


function itemCreator(name as string,
					 maxn as int,
					 glow as bool) {
	var itemt = VanillaFactory.createItem(name);
	itemt.maxStackSize = maxn;
	itemt.glowing = glow;
	itemt.register();
}

function addFluid(name as string, color as int, isLava as bool){
    var fluidt as Fluid = VanillaFactory.createFluid(name, color);
    fluidt.temperature = 300;
    fluidt.viscosity = 1000;
    fluidt.density = 1000;
    fluidt.luminosity = 0;
    if (isLava)
	{
        fluidt.material = <blockmaterial:lava>;
        fluidt.stillLocation = "base:fluids/molten";
        fluidt.flowingLocation = "base:fluids/molten_flowing";
    } else
	{
        fluidt.material = <blockmaterial:water>;
        fluidt.stillLocation = "base:fluids/liquid";
        fluidt.flowingLocation = "base:fluids/liquid_flow";
    }
    fluidt.register();
	print("Add fluid " ~ name);
}