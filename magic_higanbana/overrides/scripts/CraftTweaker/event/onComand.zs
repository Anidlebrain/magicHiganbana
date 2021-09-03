##===============================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     指令管理器
##===============================================

#priority 200
import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.event.EntityLivingDeathEvent;
import mods.ctutils.utils.Math;
import crafttweaker.data.IData;
import mods.ctutils.world.IGameRules;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.ZenUtilsCommandSender;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.TabCompletion;


var clearupCommand as ZenCommand = ZenCommand.create("clearup");
clearupCommand.getCommandUsage = function(sender) {
    return "commands.clearup.usage";
};
clearupCommand.requiredPermissionLevel = 0; 
clearupCommand.execute = function(command, server, sender, args) {
    server.commandManager.executeCommand(server, "/kill @e[type=Item]");
    var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
    if(!isNull(player)) {
        player.sendChat("§6已清除所有掉落物");
    }
};
clearupCommand.register();

var cheatCommand as ZenCommand = ZenCommand.create("cheat");
cheatCommand.getCommandUsage = function(sender) {
    return "commands.cheat.usage";
};
cheatCommand.requiredPermissionLevel = 0;
cheatCommand.execute = function(command, server, sender, args) {
    var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
    if (args.length == 1) {
        player.sendStatusMessage("§6未知指令", true);
    }
    else if (args.length == 2 || args.length >= 4) {
        player.sendChat("§6参数错误");
    }
    else if(!isNull(player)) {
        //print("cheat args[0]" ~ args[0]);
        if (args[0] == "Anidlebrain") {
            player.sendChat("§6已开启作弊模式，此操作不可逆!");
            val ischeat as int = player.data.IsCheat.asInt();
            player.update(player.data + {IsCheat : 1 as int});
            //print("cheat args[1]" ~ args[1]);
            if(args[1] == "creative") {
                server.commandManager.executeCommand(server, "/gamemode creative " ~ player.name);
            }
            else if(args[1] == "stage") {
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageTheNetherName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageTheEndName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageTwilightForestName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageDeepDarkName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageSpectreName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageZeroName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageOneName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageTwoName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageThreeName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageFourName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageFiveName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageSixName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageSevenName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageEightName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageTenName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageElevenName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageTwelveName);
                server.commandManager.executeCommand(server, "/gamestage add " ~ player.name ~ " " ~ stageDefaultName);
            } 
        }
        else {
            player.sendChat("§6未知指令");
        }
    }  
};
cheatCommand.register();


var survivalCommand as ZenCommand = ZenCommand.create("survival");
survivalCommand.getCommandUsage = function(sender) {
    return "commands.survival.usage";
};
survivalCommand.requiredPermissionLevel = 0; 
survivalCommand.execute = function(command, server, sender, args) {
    
    var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
    if(!isNull(player)) {
        server.commandManager.executeCommand(server, "/gamemode survival" ~ player.name);
    }
};
survivalCommand.register();


var isCommand as ZenCommand = ZenCommand.create("is");
isCommand.getCommandUsage = function(sender) {
    return "commands.island.usage";
};
isCommand.requiredPermissionLevel = 0; 
isCommand.execute = function(command, server, sender, args) {
    
};
isCommand.register();
