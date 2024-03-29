##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     应用能源2 压印器
##================================================
#modloaded higanbana
#priority 2000

import mods.appliedenergistics2.Inscriber;



//Engineering Processor     工程处理器
Inscriber.removeRecipe(<appliedenergistics2:material:24>);
Inscriber.addRecipe(<appliedenergistics2:material:24>, <techreborn:part:2>, false, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>);

Inscriber.removeRecipe(<appliedenergistics2:material:17>);
Inscriber.addRecipe(<appliedenergistics2:material:17>, <techreborn:plates:5>, true, <appliedenergistics2:material:14>);

//Calculation Processor 运算处理器
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
Inscriber.addRecipe(<appliedenergistics2:material:23>, <techreborn:part:2>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);


//Logic Processor 逻辑处理器
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
Inscriber.addRecipe(<appliedenergistics2:material:22>, <techreborn:part:2>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);

Inscriber.removeRecipe(<appliedenergistics2:material:18>);
Inscriber.addRecipe(<appliedenergistics2:material:18>, <immersiveengineering:metal:40>, true, <appliedenergistics2:material:15>);
Inscriber.addRecipe(<appliedenergistics2:material:18>, <techreborn:plates:1>, true, <appliedenergistics2:material:15>);