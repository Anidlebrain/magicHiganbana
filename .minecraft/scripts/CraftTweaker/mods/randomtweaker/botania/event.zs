##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 精灵门
##================================================
#modloaded higanbanautils
#priority 2000

import crafttweaker.item.IItemStack;
import mods.randomtweaker.botania.AlfPortalDroppedEvent;

//物品丢入事件
events.onAlfPortalDropped(function(event as AlfPortalDroppedEvent) {
    if(!event.alfPortal.world.remote) {
        event.alfPortal.consumeMana(500);
        //event.cancel();
    }
});
