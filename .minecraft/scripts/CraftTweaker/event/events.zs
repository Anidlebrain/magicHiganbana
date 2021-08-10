##==============================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     事件管理器
##===============================================

#priority 200
import crafttweaker.command.ICommandSender;
import crafttweaker.data.IData;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.block.IBlock;
import mods.ctutils.world.World;
import mods.ctutils.world.IGameRules;
import mods.ctutils.player.Player;
import mods.ctutils.commands.Commands;
import mods.ctutils.utils.Math;
import scripts.AnildebrainUtils.modLoader.isInvalid;


static storageData as IData[string] = {};
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    val sender as ICommandSender = mods.ctutils.commands.Commands.getServerCommandSender();
    val player as IPlayer = event.player;
    val rules as IGameRules = World.getGameRules(player.world);

    if (isInvalid) {
        while (true)
        {
            player.sendMessage("请不要随意添加mod");
        }
    }
    else
    {
        server.commandManager.executeCommand(sender, "/gamerule keepInventory true");
        //server.commandManager.executeCommand(sender, "/gamerule mobGriefing true");
        server.commandManager.executeCommand(sender, "/say Anidlebrain test");
        server.commandManager.executeCommand(sender, "/gamerule announceAdvancements false");
        server.commandManager.executeCommand(sender, "/gamerule naturalRegeneration false");

        if (!rules.hasRule("verification")) {
            rules.addGameRule("verification", "2", "Numeric");
        }

        player.update({InheritanceLevel : 0 as int} + player.data);
        player.update({IsCheat : 0 as int} + player.data);

        val Level as int = player.data.InheritanceLevel.asInt();


        if (isNull(storageData[player.id]) && !Player.isFake(player) && Level == 0) {
            player.give(<contenttweaker:page_of_higanbana>);
            player.update(player.data + {InheritanceLevel : (Level + 1) as int});
        }

        player.sendMessage("欢迎你," ~ player.name ~ "!");
        //player.sendMessage("所有配方请参考JEI。");
        player.sendMessage("彼岸之法整合包已经预先设置好以下规则：");
        player.sendMessage("复活可以继承死亡之前的物品；");
        player.sendMessage("苦力怕等怪物可以破坏方块；");
        player.sendMessage("被降下诅咒导致无法正常回复生命值。");
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