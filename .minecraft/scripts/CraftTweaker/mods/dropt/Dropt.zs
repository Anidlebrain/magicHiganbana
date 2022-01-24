##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     掉落物修改
##================================================
#modloaded higanbana
#priority 2000

import mods.dropt.Dropt;
import mods.dropt.Range;

Dropt.list("redstone_drop_list")
    .priority(0)
    .add(Dropt.rule()
        //红石
        .matchBlocks(["minecraft:redstone_ore", "minecraft:lit_redstone_ore"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(100), "ANY", 1)
            .items([<minecraft:redstone>],  Dropt.range(1, 3))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(200), "ANY", 2)
            .items([<minecraft:redstone>],  Dropt.range(2, 4))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(300), "ANY", 3)
            .items([<minecraft:redstone>],  Dropt.range(3, 5))
        )
    )
;
