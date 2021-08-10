##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     懒人AE ME电路板蚀刻机
##================================================
#priority 2000
import mods.threng.Etcher;

//Engineering Processor     工程处理器
Etcher.removeRecipe(<appliedenergistics2:material:24>);
Etcher.addRecipe(<appliedenergistics2:material:24>, <techreborn:part:2>, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>);

//Calculation Processor 运算处理器
Etcher.removeRecipe(<appliedenergistics2:material:23>);
Etcher.addRecipe(<appliedenergistics2:material:23>, <techreborn:part:2>, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);


//Logic Processor 逻辑处理器
Etcher.removeRecipe(<appliedenergistics2:material:22>);
Etcher.addRecipe(<appliedenergistics2:material:22>, <techreborn:part:2>, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);
