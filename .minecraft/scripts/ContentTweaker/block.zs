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
alchemicalFrame.setToolClass("pickaxe");
alchemicalFrame.setToolLevel(1);
alchemicalFrame.setBlockSoundType(<soundtype:wood>);
alchemicalFrame.setSlipperiness(0.3);
alchemicalFrame.fullBlock = false;

alchemicalFrame.register();

//天空块
CotUtils.blockCreator("sky_block", <blockmaterial:iron>, 0);

function createCrystal(name as string)
{
    var clusterName as string = "block_crystal_cluster_" ~ name;
    CotUtils.blockCreator(clusterName, <blockmaterial:iron>, 0);
    
    var crystalName as string = "block_crystal_" ~ name;
    CotUtils.blockCreator(crystalName, <blockmaterial:iron>, 0);

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

//辰烬石
CotUtils.blockCreator("chenjin_stone", <blockmaterial:rock>, 0);

//辰烬石
CotUtils.blockCreator("dark_magic_stone", <blockmaterial:rock>, 0);

//星辰块
CotUtils.blockCreator("block_starmetal", <blockmaterial:rock>, 0);


/*
<blockmaterial:sponge>
<blockmaterial:anvil>
<blockmaterial:ice>
<blockmaterial:air>
<blockmaterial:clay>
<blockmaterial:rock>
<blockmaterial:lava>
<blockmaterial:barrier>
<blockmaterial:redstone_light>
<blockmaterial:leaves>
<blockmaterial:web>
<blockmaterial:coral>
<blockmaterial:grass>
<blockmaterial:cake>
<blockmaterial:crafted_snow>
<blockmaterial:plants>
<blockmaterial:cactus>
<blockmaterial:fire>
<blockmaterial:wood>
<blockmaterial:dragon_egg>
<blockmaterial:portal>
<blockmaterial:vine>
<blockmaterial:circuits>
<blockmaterial:gourd>
<blockmaterial:glass>
<blockmaterial:packed_ice>
<blockmaterial:piston>
<blockmaterial:structure_void>
<blockmaterial:water>
<blockmaterial:sand>
<blockmaterial:snow>
<blockmaterial:carpet>
<blockmaterial:iron>
<blockmaterial:ground>
<blockmaterial:tnt>
<blockmaterial:cloth>
*/

/*
<soundtype:sand>
<soundtype:glass>
<soundtype:ladder>
<soundtype:snow>
<soundtype:anvil>
<soundtype:plant>
<soundtype:field_185859_l>
<soundtype:metal>
<soundtype:wood>
<soundtype:ground>
<soundtype:stone>
<soundtype:cloth>
*/