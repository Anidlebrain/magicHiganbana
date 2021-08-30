##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     科技复兴 控制电路加工机
##================================================
#priority 2000
import mods.techreborn.assemblingMachine;


//assemblingMachine.removeAll();
//assemblingMachine.addRecipe(IItemStack output, IIngredient input1, IIngredient input2, int ticktime, int euTick);

//空白电路板
assemblingMachine.removeRecipe(<techreborn:part:40>);
assemblingMachine.addRecipe(<techreborn:part:40>, <prodigytech:circuit_refined>, <techreborn:plates:35>, 40, 100);//40 3.2K

//电路板
assemblingMachine.removeRecipe(<techreborn:part:29>);
assemblingMachine.addRecipe(<techreborn:part:29>, <techreborn:part:40>, <techreborn:cable:5> * 4, 80, 100);

//高级空白电路
assemblingMachine.removeRecipe(<techreborn:part:41>);
assemblingMachine.addRecipe(<techreborn:part:41>, <techreborn:part:40>, <ore:plateelectrum>, 80, 200);

//高级电路板零件
assemblingMachine.removeRecipe(<techreborn:part:42>);
assemblingMachine.addRecipe(<techreborn:part:42>, <ore:plateRedstone>, <techreborn:cable:5> * 2, 40, 200);

//高级空白电路
assemblingMachine.removeRecipe(<techreborn:part:30>);
assemblingMachine.addRecipe(<techreborn:part:30>, <techreborn:part:41>, <techreborn:part:42>, 8, 288);

