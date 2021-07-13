##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     掉落物修改               ##
##################################################

#priority 2000

import mods.dropt.Dropt;
import mods.dropt.Range;

Dropt.list("redstone_drop_list")
    .priority(0)
    .add(Dropt.rule()
        //红石
        .matchBlocks(["minecraft:redstone_ore", "minecraft:lit_redstone_ore"])
        .addDrop(Dropt.drop()
            .items([<minecraft:redstone>],  Dropt.range(2, 5))
        )
    )
;
