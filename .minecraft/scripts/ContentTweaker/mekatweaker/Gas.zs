##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     通用机械 气体添加
##================================================
//#loader mekatweaker
#modloaded higanbana
#priority 4995

import mods.mekatweaker.GasFactory;
import mods.mekatweaker.Gas;
import crafttweaker.liquid.ILiquidStack;

function addGas(liquid as ILiquidStack)
{
    print(liquid.name);
    var gas = GasFactory.createFromFluid(liquid);
    gas.register();
}

addGas(<liquid:anhydrous_ether>);
addGas(<liquid:ether>);
addGas(<liquid:grignard_reagent>);
addGas(<liquid:iodine>);
addGas(<liquid:ethanol>);

