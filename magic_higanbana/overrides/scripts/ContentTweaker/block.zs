#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

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

//天空块
var skyBlock = VanillaFactory.createBlock("sky_block", <blockmaterial:wood>);
skyBlock.setLightOpacity(3);
skyBlock.setLightValue(0);
skyBlock.setBlockHardness(5.0);
skyBlock.setBlockResistance(5.0);
skyBlock.setToolClass("pickaxe");
skyBlock.setToolLevel(0);
skyBlock.setBlockSoundType(<soundtype:wood>);
skyBlock.setSlipperiness(0.3);

skyBlock.register();