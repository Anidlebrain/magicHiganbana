##==============================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     玩家 事件管理器
##===============================================
#priority 200
import crafttweaker.command.ICommandSender;
import crafttweaker.data.IData;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.CommandEvent;

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.ExplosionStartEvent;
import crafttweaker.event.PlayerChangedDimensionEvent;

import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.world.IWorld;

import mods.ctutils.world.World;
import mods.ctutils.world.IGameRules;
import mods.ctutils.player.Player;
import mods.ctutils.commands.Commands;
import mods.ctutils.utils.Math;

import scripts.AnildebrainUtils.ModLoader.isInvalid;
import scripts.AnildebrainUtils.MessageUtils;



static storageData as IData[string] = {};
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    /*
    if(!event.commandSender.world.remote) {
        return ;
    }
    */
    val sender as ICommandSender = mods.ctutils.commands.Commands.getServerCommandSender();
    val player as IPlayer = event.player;
    val rules as IGameRules = World.getGameRules(player.world);

    if (isInvalid) {
        while (true) {
            MessageUtils.sendPlayMessage(player, "mods.warning");
        }
    }
    else
    {
        if (!rules.hasRule("verification")) {
            rules.addGameRule("verification", "2", "Numeric");
        }

        player.update({InheritanceLevel : 0 as int} + player.data);
        player.update({IsCheat : 0 as int} + player.data);
        player.update({DreamJournl : 0 as int} + player.data);
        val Level as int = player.data.InheritanceLevel.asInt();


        if (isNull(storageData[player.id]) && !Player.isFake(player) && Level == 0) {
            player.give(<contenttweaker:page_of_higanbana>);
            player.update(player.data + {InheritanceLevel : (Level + 1) as int});
        }

        MessageUtils.sendPlayMessage(player, "mods.warning");
        player.sendMessage(MessageUtils.getWelcomeMessage("words.1") ~ player.name ~ "!");
        //player.sendMessage(MessageUtils.getWelcomeMessage("words.2"));
        player.sendMessage(MessageUtils.getWelcomeMessage("words.3"));
        player.sendMessage(MessageUtils.getWelcomeMessage("words.4"));
        player.sendMessage(MessageUtils.getWelcomeMessage("words.5"));
        player.sendMessage(MessageUtils.getWelcomeMessage("words.6"));
    }
    
});


events.onPlayerTick(function(event as PlayerTickEvent) {
    /*
    val player as IPlayer = event.player;
    if (!player.world.remote && !Player.isFake(player)) {
        storageData[player.id] = player.data;
    }
    */
});

events.onPlayerRespawn(function(event as PlayerRespawnEvent) {
    /*
    val player as IPlayer = event.player;
    if (!player.world.remote && !isNull(storageData[player.id])) {
        player.update(storageData[player.id]);
    }
    */
});
/*
print("error - events - 3");
events.onCommand(function(event as CommandEvent){
    print("error - events - 4");
    if(!event.commandSender.world.remote && event.command.name == "is" ) {
        event.command.name = "island";
    }
    print("error - events - 5");
    if (event.commandSender instanceof IPlayer) {
        val player as IPlayer = event.commandSender;
        val ischeat as int = player.data.IsCheat.asInt();
        print("error - events - 6");
        if (!event.commandSender.world.remote && event.command.name == "gamemode" 
        && (event.parameters in "1" || event.parameters in "creative")) {
            // event.command.name 获取命令名
            // event.parameters 为包含命令参数的字符串数组
            // in操作符检查一个字符串数组是否有某个元素
            if(ischeat == 0) {
                event.commandSender.sendMessage("§4§l还没有飞升成仙，无法数据化自己！！");
                event.cancel(); //取消事件
            }
            
        }
        if (!event.commandSender.world.remote && event.command.name == "give" ) {
            if(ischeat == 0) {
                event.commandSender.sendMessage("§4§l不劳而获不是对滴！！");
                event.cancel(); //取消事件
            }
        }
        if (!event.commandSender.world.remote && event.command.name == "clear" ) {
            if(ischeat == 0) {
                event.commandSender.sendMessage("§4§l东西还是自己丢吧。");
                event.cancel();
            }
        }
        if (!event.commandSender.world.remote && event.command.name == "gamestage" ) {
            if(ischeat == 0) {
                event.commandSender.sendMessage("§4§l知识需要通过研究获得。");
                event.cancel();
            }            
        }
        
        if (!event.commandSender.world.remote && event.command.name == "island" 
            && event.parameters in "create" ) {
                val ser as ICommandSender = Commands.getServerCommandSender();
                server.commandManager.executeCommand(ser, "/gamemode survival" ~ player.name);
                event.commandSender.sendMessage("/tf invite" ~ player.name);
                //server.commandManager.executeCommand(ser, "/tf invite" ~ player.name);
        }
        if (!event.commandSender.world.remote && event.command.name == "island" 
            && event.parameter[0] == "join" ) {
                val ser as ICommandSender = Commands.getServerCommandSender();
                event.commandSender.sendMessage("gamemode survival" ~ player.name);
                event.commandSender.sendMessage("/tf invite" ~ event.parameter[1]);
                //server.commandManager.executeCommand(ser, "/gamemode survival" ~ player.name);
                //server.commandManager.executeCommand(ser, "/tf invite" ~ event.parameter[1]);
        }
    }

});
print("error - events - 7");
*/

// 掉落物通过 dropt mod 修改，不在这里修改
/*
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    // 该事件由方块破坏满足挖掘等级，将有掉落物时触发
    // event.drops为WeightedItemStack数组 ZenGetter & ZenSetter，修改其即可修改掉落物。
    // WeightedItemStack有stack ZenGetter 返回 IItemStack
    // 可用event.player获取挖掘的玩家对象
    // 可用event.isPlayer检测是否为玩家挖掘方块触发该事件，而不是TNT啥的。
    if (!event.world.remote) { // world.remote
        // 跳过挖方块无掉落和精准的情况
        if (event.drops.length == 0 || event.silkTouch) {
            return; 
        }
        val block as IBlock = event.block; // 获取所挖的方块
        print(block.definition.id);
        for drop in event.drops {
            print(toString(drop.stack.definition.id));
        }
        if (block.definition.id == "minecraft:lit_redstone_ore" || block.definition.id == "minecraft:redstone_ore") { 
            val fortune as int = event.fortuneLevel; // 时运附魔等级
            print(fortune);
            if (fortune == 0) {
                print("1");
                event.drops = [<minecraft:redstone> % 100];
            } else {
                event.drops = [<minecraft:redstone> * Math.ceil(3 * (Math.random() + 0.5) * fortune) % 100];
            }
        }
    }
    for drop in event.drops {
        print(toString(drop.stack.definition.id));
    }
});
*/
/*
events.onPlayerSleepInBed(function(event as PlayerSleepInBedEvent) {
    var player = event.player;
    if (!isNull(player.getAttunedConstellation())) {

        val dreamJournl as int = player.data.DreamJournl.asInt();
        if (dreamJournl == 0) {
            player.update(player.data + {DreamJournl : (1) as int});
            player.getAttunedConstellation();
        }
    }
    //return "OK";
});
*/

events.onExplosionStart(function(event as ExplosionStartEvent) {
    //event.explosion.clearAffectedBlockPositions();
});

events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {

    var player = event.player;
    print(player.name ~ " dim: " ~ event.fromWorld.getDimension() ~ " to " ~ event.toWorld.getDimension());
    val dreamJournl as int = player.data.DreamJournl.asInt();
    if (event.fromWorld.getDimension() == 0 && event.toWorld.getDimension() == -1) {
        if (dreamJournl == 1) {
            player.update(player.data + {"dreamJournl" : (dreamJournl + 1) as int});
            MessageUtils.sendPlayMessage(player, "true.start.1");
            MessageUtils.sendPlayMessage(player, "true.start.2");
        }
        else if (dreamJournl < 1) {
            MessageUtils.sendPlayMessage(player, "false.start");
        }
    }

    else if (event.fromWorld.getDimension() == 0 && event.toWorld.getDimension() == 1) {
        if (dreamJournl == 2) {
            player.update(player.data + {"dreamJournl" : (dreamJournl + 1) as int});
            MessageUtils.sendPlayMessage(player, "true.start.1");
            MessageUtils.sendPlayMessage(player, "true.start.2");

        }
        else if (dreamJournl < 2) {
            MessageUtils.sendPlayMessage(player, "false.start");
        }
    }

    else if (event.fromWorld.getDimension() == 0 && event.toWorld.getDimension() == -2) {
        if (dreamJournl == 3) {
            player.update(player.data + {"dreamJournl" : (dreamJournl + 1) as int});
            MessageUtils.sendPlayMessage(player, "true.start.1");
            MessageUtils.sendPlayMessage(player, "true.start.2");
        }
        else if (dreamJournl < 3) {
            MessageUtils.sendPlayMessage(player, "false.start");
        }
    }

    else if (event.fromWorld.getDimension() == 0 && event.toWorld.getDimension() == 58) {
        
        if (dreamJournl == 4) {
            player.update(player.data + {"dreamJournl" : (dreamJournl + 1) as int});
            player.giverDreamJournl();
        }
        else if (dreamJournl < 4) {
            MessageUtils.sendPlayMessage(player, "false.start");
        }
    }
});