##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     气动工艺 装配系统
##================================================
#priority 2000
import mods.pneumaticcraft.assembly;
// 注：addDrillLaserRecipe 没有效果 原因不明

recipes.remove(<compactmachines3:psd>);

//assembly.addLaserRecipe(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}), <compactmachines3:psd>);
assembly.addDrillRecipe(<mekanism:machineblock3>, <compactmachines3:psd>);
//assembly.addDrillLaserRecipe(<pneumaticcraft:remote>, <compactmachines3:psd>);