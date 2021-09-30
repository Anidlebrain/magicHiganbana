##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     沉浸工程 高炉
##================================================
#priority 2000

import mods.immersiveengineering.BlastFurnace;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.removeImmersiveengIneeringFuel;


removeImmersiveengIneeringFuel(<ore:blockCharcoal>);
BlastFurnace.addFuel(<ore:blockCharcoal>, 2000);

removeImmersiveengIneeringFuel(<ore:charcoal>);
BlastFurnace.addFuel(<ore:charcoal>, 200);

removeImmersiveengIneeringFuel(<ore:blockFuelCoke>);
BlastFurnace.addFuel(<ore:blockFuelCoke>, 3000);

removeImmersiveengIneeringFuel(<ore:fuelCoke>);
BlastFurnace.addFuel(<ore:fuelCoke>, 300);

//BlastFurnace.addFuel(<contenttweaker:good_fuel>, 2400);


