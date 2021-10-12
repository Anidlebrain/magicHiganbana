##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     cot 处理函数
##=================================================

#loader contenttweaker
#priority 30000
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Color;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.SoundEvent;
import mods.contenttweaker.VanillaFactory;

static toolName as string[] =
[
    "pickaxe",
];

static tab as CreativeTab = VanillaFactory.createCreativeTab("magichiganbana", <minecraft:dragon_egg> as crafttweaker.item.IItemStack);
tab.register();

function itemCreator(name as string,
                     maxn as int,
                     glow as bool) {
    var itemC = VanillaFactory.createItem(name);
    itemC.maxStackSize = maxn;
    itemC.glowing = glow;
    itemC.creativeTab = tab;
    itemC.register();
}

function fluidCreator(name as string, color as int, isLava as bool){
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

function materialCreator(name as string, color as int, partNames as string[])
{
    var metal = MaterialSystem.getMaterialBuilder().setName(name).setColor(color).build();
    metal.registerParts(partNames);
}

function blockCreator(name as string, material as BlockMaterial, toolType as int)
{
    var blockC = VanillaFactory.createBlock(name, material);
    blockC.setToolClass(toolName[toolType]);
    blockC.creativeTab = tab;
    blockC.register();
}