##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     方块增加
##=================================================
#loader contenttweaker
#priority 5000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import scripts.AnildebrainUtils.CotUtils;

//炼金框架
var alchemicalFrame = VanillaFactory.createBlock("alchemical_frame", <blockmaterial:wood>);
alchemicalFrame.setLightOpacity(3);
alchemicalFrame.setLightValue(0);
alchemicalFrame.setBlockHardness(5.0);
alchemicalFrame.setBlockResistance(5.0);
alchemicalFrame.setToolClass("pickaxe");
alchemicalFrame.setToolLevel(0);
alchemicalFrame.setBlockSoundType(<soundtype:wood>);
alchemicalFrame.setSlipperiness(0.3);
alchemicalFrame.fullBlock = false;

alchemicalFrame.register();

//炼金框架
var sky_block = VanillaFactory.createBlock("sky_block", <blockmaterial:wood>);
sky_block.setLightOpacity(3);
sky_block.setLightValue(0);
sky_block.setBlockHardness(5.0);
sky_block.setBlockResistance(5.0);
sky_block.setToolClass("pickaxe");
sky_block.setToolLevel(0);
sky_block.setBlockSoundType(<soundtype:wood>);
sky_block.setSlipperiness(0.3);
sky_block.fullBlock = false;

sky_block.register();

function createCrystal(name as string)
{
    var clusterName as string = "block_crystal_cluster_" ~ name;
    var block_crystal_cluster = VanillaFactory.createBlock(clusterName, <blockmaterial:wood>);
    block_crystal_cluster.setLightOpacity(3);
    block_crystal_cluster.setLightValue(0);
    block_crystal_cluster.setBlockHardness(5.0);
    block_crystal_cluster.setBlockResistance(5.0);
    block_crystal_cluster.setToolClass("pickaxe");
    block_crystal_cluster.setToolLevel(0);
    block_crystal_cluster.setBlockSoundType(<soundtype:wood>);
    block_crystal_cluster.setSlipperiness(0.3);
    block_crystal_cluster.register();
    
    var crystalName as string = "block_crystal_" ~ name;
    var block_crystal = VanillaFactory.createBlock(crystalName, <blockmaterial:wood>);
    block_crystal.setLightOpacity(3);
    block_crystal.setLightValue(0);
    block_crystal.setBlockHardness(5.0);
    block_crystal.setBlockResistance(5.0);
    block_crystal.setToolClass("pickaxe");
    block_crystal.setToolLevel(0);
    block_crystal.setBlockSoundType(<soundtype:wood>);
    block_crystal.setSlipperiness(0.3);
    block_crystal.register();

    var itemClusterName as string = "crystal_cluster_" ~ name;
    CotUtils.itemCreator(itemClusterName, 64, false);

    var itemCrystalName as string = "crystal_" ~ name;
    CotUtils.itemCreator(itemCrystalName, 64, false);
}

createCrystal("gold");
createCrystal("osmium");
createCrystal("copper");
createCrystal("tin");
createCrystal("silver");
createCrystal("lead");

