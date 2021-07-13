##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     凿子                    ##
##################################################

#priority 2000
import mods.chisel.Carving;

//石砖 移除 苔石砖
Carving.removeVariation("stonebrick", <minecraft:stonebrick:1>);

//焦煤块 添加 沉浸工程的 
//Carving.addVariation("blockCoalCoke", <immersiveengineering:stone_decoration:3>);

//玻璃 添加 末影接口的纯净玻璃 
//Carving.addVariation("glass", <enderio:block_fused_glass>);

//移除 根源魔法 元素土
Carving.removeGroup("rootsRunicSoilTypes");


