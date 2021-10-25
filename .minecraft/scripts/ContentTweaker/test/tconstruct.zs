
##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     匠魂强化
##=================================================
#norun
#loader contenttweaker
#modloaded tconstruct
#priority 5000
import crafttweaker.command.ICommandSender;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.player.IPlayer;
import mods.ctutils.utils.Math;
import mods.ctutils.commands.Commands;
import mods.ctutils.world.World;
import mods.ctutils.world.IGameRules;
import mods.ctutils.player.Player;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.ZenUtilsCommandSender;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.TabCompletion;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.tconstruct.Material;
import mods.tconstruct.traits.CanApplyTogetherEnchantment;

import scripts.AnildebrainUtils.CotUtils;
import scripts.AnildebrainUtils.messageCotUtils.getTconstructMessage as getMessage;
import scripts.AnildebrainUtils.messageCotUtils.sendPlayMessage as sendMessage;

val canApplyTogetherEnchantment as CanApplyTogetherEnchantment = function(trait, enchantment) {
    return true;
};

CotUtils.itemCreator("strengthen_magnetism", 64, false);
print(getMessage("magnetism.name"));
val magnetism = mods.contenttweaker.tconstruct.TraitBuilder.create("magnetism");
magnetism.color = 0xE1FFFF;
magnetism.maxLevel = 10;
magnetism.countPerLevel = 64;
magnetism.addItem(<item:contenttweaker:strengthen_magnetism>);
magnetism.localizedName = getMessage("magnetism.name");
magnetism.localizedDescription = getMessage("magnetism.description");
//暂时没有效果 
magnetism.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
magnetism.register();

CotUtils.itemCreator("strengthen_second_wind", 64, false);
print(getMessage("secondWind.name"));
val secondWind = mods.contenttweaker.tconstruct.TraitBuilder.create("secondWind");
secondWind.color = 0x00FF7F;
secondWind.maxLevel = 3;
secondWind.countPerLevel = 32;
secondWind.addItem(<item:contenttweaker:strengthen_second_wind>);
secondWind.localizedName = getMessage("secondWind.name");
secondWind.localizedDescription = getMessage("secondWind.description");
secondWind.onUpdate = function(trait, tool, world, entity, itemSlot, isSelected)
{
    var level as int = trait.getData(tool).level;
    if (entity.alive && entity instanceof IPlayer)
    {
        var player as IPlayer = entity;
        if (!entity.world.remote && isSelected)
        {
            val sender as ICommandSender = Commands.getServerCommandSender();
            if (level == 1)
            {
                server.commandManager.executeCommand(sender, "/effect " ~ player.name ~ " 23 1 0");
                player.mainHandHeldItem.damageItem(10, player);
                //player.mainHandHeldItem.damage(10, player);
                //tool.damage(20, player);
                //player.getHeldItem(hand).damage(10, player);
            }
            else if (level == 2)
            {
                server.commandManager.executeCommand(sender, "/effect " ~ player.name ~ " 23 1 1");
                player.mainHandHeldItem.damageItem(10, player);
                //tool.damage(10, player);
                //player.getHeldItem(hand).damage(10, player);
            }
            else if (level == 3)
            {
                server.commandManager.executeCommand(sender, "/effect " ~ player.name ~ " 23 1 2");
                player.mainHandHeldItem.damageItem(10, player);
                //player.mainHandHeldItem.damage(10, player);
                //tool.damage(5, player);
                //player.getHeldItem(hand).damage(10, player);
            }
        }
    }
};
secondWind.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
secondWind.register();

CotUtils.itemCreator("strengthen_sky_soarer", 64, false);
print(getMessage("skysoarer.name"));
val skySoarer = mods.contenttweaker.tconstruct.TraitBuilder.create("skySoarer");
skySoarer.color = 0x00FF7F;
skySoarer.maxLevel = 3;
skySoarer.countPerLevel = 32;
skySoarer.addItem(<item:contenttweaker:strengthen_sky_soarer>);
skySoarer.localizedName = getMessage("skysoarer.name");
skySoarer.localizedDescription = getMessage("skysoarer.description");
skySoarer.onUpdate = function(trait, tool, world, entity, itemSlot, isSelected)
{
    var level as int = trait.getData(tool).level;
    if (entity.alive && entity instanceof IPlayer)
    {
        var player as IPlayer = entity;
        val sender as ICommandSender = Commands.getServerCommandSender();
        if (!entity.world.remote && isSelected)
        {
            if (level == 1)
            {
                server.commandManager.executeCommand(sender, "/effect " ~ player.name ~ " 25 1 0");
                player.mainHandHeldItem.damageItem(10, player);
                //player.getHeldItem(hand).damage(10, player);
            }
            else if (level == 2)
            {
                server.commandManager.executeCommand(sender, "/effect " ~ player.name ~ " 25 1 1");
                player.mainHandHeldItem.damageItem(10, player);
            }
            else if (level == 3)
            {
                server.commandManager.executeCommand(sender, "/effect " ~ player.name ~ " 25 1 2");
                player.mainHandHeldItem.damageItem(10, player);
            }
        }
    }
};
skySoarer.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
skySoarer.register();

CotUtils.itemCreator("strengthen_dandelion_winds", 64, false);
print(getMessage("dandelionWinds.name"));
val dandelionWinds = mods.contenttweaker.tconstruct.TraitBuilder.create("dandelionWinds");
dandelionWinds.color = 0x00FF7F;
dandelionWinds.maxLevel = 1;
dandelionWinds.countPerLevel = 3;
dandelionWinds.addItem(<item:contenttweaker:strengthen_dandelion_winds>);
dandelionWinds.localizedName = getMessage("dandelionWinds.name");
dandelionWinds.localizedDescription = getMessage("dandelionWinds.description");
//保留 蒲公英之风
dandelionWinds.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
dandelionWinds.register();

CotUtils.itemCreator("strengthen_harvest", 64, false);
print("收获");
val harvest = mods.contenttweaker.tconstruct.TraitBuilder.create("harvest");
harvest.color = 0x00FF7F;
harvest.maxLevel = 1;
harvest.countPerLevel = 3;
harvest.addItem(<item:contenttweaker:strengthen_harvest>);
harvest.addItem(<item:roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_harvest"}}));
harvest.localizedName = ("收获");
harvest.localizedDescription = ("§o收获§r\n§f");
//保留 自动收获
harvest.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
harvest.register();

CotUtils.itemCreator("strengthen_petal_shell", 64, false);
print("花仙盾");
val petalShell = mods.contenttweaker.tconstruct.TraitBuilder.create("petalShell");
petalShell.color = 0x00FF7F;
petalShell.maxLevel = 5;
petalShell.countPerLevel = 18;
petalShell.addItem(<item:contenttweaker:strengthen_petal_shell>);
petalShell.localizedName = ("花仙盾");
petalShell.localizedDescription = ("§o我有盾我无敌§r\n§f降低受到的伤害");
petalShell.onBlock = function(trait, tool, attacker, event)
{
    
};
petalShell.onPlayerHurt = function(trait, tool, player, attacker, event)
{
    //保留
};
petalShell.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
petalShell.register();

CotUtils.itemCreator("strengthen_time_stop", 64, false);
print("时间停止");
val timeStop = mods.contenttweaker.tconstruct.TraitBuilder.create("timeStop");
timeStop.color = 0x00FF7F;
timeStop.maxLevel = 1;
timeStop.countPerLevel = 48;
timeStop.addItem(<item:contenttweaker:strengthen_time_stop>);
timeStop.localizedName = ("时间停止");
timeStop.localizedDescription = ("§o时间停止§r\n§f感觉周围的时间禁止下来了");
timeStop.onUpdate = function(trait, tool, world, entity, itemSlot, isSelected)
{
    var level as int = trait.getData(tool).level;
    val sender as ICommandSender = Commands.getServerCommandSender();
    if (entity.alive && entity instanceof IPlayer)
    {
        var player as IPlayer = entity;
        if (!entity.world.remote)
        {
            server.commandManager.executeCommand(sender, "/effect " ~ player.name ~ " 2 1 254 true");
        }
    }
};
timeStop.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
timeStop.register();

CotUtils.itemCreator("strengthen_sense_danger", 64, false);
print("危险感知");
val senseDanger = mods.contenttweaker.tconstruct.TraitBuilder.create("senseDanger");
senseDanger.color = 0x00FF7F;
senseDanger.maxLevel = 1;
senseDanger.countPerLevel = 2;
senseDanger.addItem(<item:contenttweaker:strengthen_sense_danger>);
senseDanger.localizedName = ("危险感知");
senseDanger.localizedDescription = ("§o这世界好危险§r\n§f");
senseDanger.onUpdate = function(trait, tool, world, entity, itemSlot, isSelected)
{
    if (entity.alive && entity instanceof IPlayer)
    {
        var player as IPlayer = entity;
        if (!entity.world.remote && isSelected)
        {
            if (Math.random() < 0.01)
            {
                player.sendChat("危险快跑");
            }
        }
    }
};
senseDanger.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
senseDanger.register();

CotUtils.itemCreator("strengthen_geasgeas", 64, false);
print("誓约");
val geasgeas = mods.contenttweaker.tconstruct.TraitBuilder.create("geasgeas");
geasgeas.color = 0x00FF7F;
geasgeas.maxLevel = 1;
geasgeas.countPerLevel = 37;
geasgeas.addItem(<item:contenttweaker:strengthen_geasgeas>);
geasgeas.localizedName = ("誓约");
geasgeas.localizedDescription = ("§o我发誓xxxx§r\n§f");
geasgeas.onUpdate = function(trait, tool, world, entity, itemSlot, isSelected)
{  

};
geasgeas.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
geasgeas.register();

CotUtils.itemCreator("strengthen_iced_touch", 64, false);
print("冰霜之触");
val icedTouch = mods.contenttweaker.tconstruct.TraitBuilder.create("icedTouch");
icedTouch.color = 0x00FF7F;
icedTouch.maxLevel = 1;
icedTouch.countPerLevel = 16;
icedTouch.addItem(<item:contenttweaker:strengthen_iced_touch>);
icedTouch.localizedName = ("冰霜之触");
icedTouch.localizedDescription = ("§o冰天雪地§r\n§f");
/*
icedTouch.onUpdate = function(trait, tool, world, entity, itemSlot, isSelected)
{
    var level as int = trait.getData(tool).level;
    if (entity.alive && entity instanceof IPlayer)
    {
        player as IPlayer = entity;
        if (!world.remote && itemSlot == 1 && isSelected == true)
        {
            var v1 as double = Math.random() * 1000;
            var v2 as double = Math.random() * 1000;
            if(v1 * v2 < 10000)
            {
                world.spawnEntity((<entity:minecraft:snowman>).createEntityItem(world, Math.floor(entity.x), Math.floor(entity.y), Math.floor(entity.z)));
            }
            else if(v1 * v2 < 15)
            {
                world.spawnEntity((<entity:thermalfoundation:blizz>).createEntityItem(world, Math.floor(entity.x), Math.floor(entity.y), Math.floor(entity.z)));
            }
        }
    }
};
*/
icedTouch.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
icedTouch.register();

CotUtils.itemCreator("strengthen_rose_thorns", 64, false);
print("玫瑰荆棘");
val roseThorns = mods.contenttweaker.tconstruct.TraitBuilder.create("roseThorns");
roseThorns.color = 0x00FF7F;
roseThorns.maxLevel = 1;
roseThorns.countPerLevel = 7;
roseThorns.addItem(<item:contenttweaker:strengthen_rose_thorns>);
roseThorns.localizedName = ("玫瑰荆棘");
roseThorns.localizedDescription = ("§o苦难中绽放光彩§r\n§f");
//保留 玫瑰荆棘
roseThorns.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
roseThorns.register();

CotUtils.itemCreator("strengthen_acid_cloud", 64, false);
print("酸雨");
val acidCloud = mods.contenttweaker.tconstruct.TraitBuilder.create("acidCloud");
acidCloud.color = 0x00FF7F;
acidCloud.maxLevel = 5;
acidCloud.countPerLevel = 6;
acidCloud.addItem(<item:contenttweaker:strengthen_acid_cloud>);
acidCloud.localizedName = ("酸雨");
acidCloud.localizedDescription = ("§o保护环境，人人有责§r\n§f");
acidCloud.onToolDamage = function(trait, tool, damage, newDamage, entity)
{
    var level as int = trait.getData(tool).level;
    return  (damage + newDamage) * level;
};
acidCloud.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
acidCloud.register();

CotUtils.itemCreator("strengthen_light_drifter", 64, false);
print("超然游魂");
val lightDrifter = mods.contenttweaker.tconstruct.TraitBuilder.create("lightDrifter");
lightDrifter.color = 0x00FF7F;
lightDrifter.maxLevel = 1;
lightDrifter.countPerLevel = 7;
lightDrifter.addItem(<item:contenttweaker:strengthen_light_drifter>);
lightDrifter.localizedName = ("超然游魂");
lightDrifter.localizedDescription = ("§o三山五岳，五湖四海，六合八荒，九天十地§r\n§f");
//保留 超然游魂
lightDrifter.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
lightDrifter.register();

CotUtils.itemCreator("strengthen_supplication", 64, false);
print("森流祈愿");
val supplication = mods.contenttweaker.tconstruct.TraitBuilder.create("supplication");
supplication.color = 0x00FF7F;
supplication.maxLevel = 1;
supplication.countPerLevel = 7;
supplication.addItem(<item:contenttweaker:strengthen_supplication>);
supplication.addItem(<item:roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_supplication"}}));
supplication.localizedName = ("森流祈愿");
supplication.localizedDescription = ("§o大自然的祈福§r\n§f");
//保留 森流祈愿
supplication.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
supplication.register();

CotUtils.itemCreator("strengthen_fey_light", 64, false);
print("精灵微光");
val feyLight = mods.contenttweaker.tconstruct.TraitBuilder.create("feyLight");
feyLight.color = 0x00FF7F;
feyLight.maxLevel = 1;
feyLight.countPerLevel = 7;
feyLight.addItem(<item:contenttweaker:strengthen_fey_light>);
feyLight.localizedName = ("精灵微光");
feyLight.localizedDescription = ("§o星星之火可以燎原§r\n§f");
//保留 精灵微光
feyLight.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
feyLight.register();