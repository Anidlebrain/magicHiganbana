#priority 200
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.event.PlayerInteractEntityEvent;
import scripts.AnildebrainUtils.MessageUtils.getTitleMessage;

function runTitle(title as string ,color as string , bold as bool, player as IPlayer) {
    val s = server.commandManager;
    if(!bold) {
        s.executeCommand(server,"title "+ player.name +" actionbar {\"text\":\""+title+"\",\"bold\":"+"false"+",\"color\":\""+color+"\"}");
    } else {
        s.executeCommand(server,"title "+ player.name +" actionbar {\"text\":\""+title+"\",\"bold\":"+"true"+",\"color\":\""+color+"\"}");
    }
}

events.onPlayerInteractEntity(function(event as PlayerInteractEntityEvent){
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var target as IEntity = event.target;
    var hand as string = event.hand;

    var villagers as string[] = ["minecraft:villager"];

    if (villagers has target.definition.id) {
        if (world.remote && hand == "MAIN_HAND") {
            runTitle(getTitleMessage("villager.interact"), "", false, player);
        }
        event.cancel();
    }

});