
##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     匠魂强化
##=================================================

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

CotUtils.itemCreator("strengthen_life_drain", 64, false);
CotUtils.itemCreator("strengthen_wild_fire", 64, false);
CotUtils.itemCreator("strengthen_magnetism", 64, false);
CotUtils.itemCreator("strengthen_shatter", 64, false);
CotUtils.itemCreator("strengthen_rampant_growth", 64, false);
CotUtils.itemCreator("strengthen_sanctuary", 64, false);
CotUtils.itemCreator("strengthen_second_wind", 64, false);
CotUtils.itemCreator("strengthen_dandelion_winds", 64, false);
CotUtils.itemCreator("strengthen_growth_infusion", 64, false);
CotUtils.itemCreator("strengthen_harvest", 64, false);
CotUtils.itemCreator("strengthen_petal_shell", 64, false);
CotUtils.itemCreator("strengthen_radiance", 64, false);
CotUtils.itemCreator("strengthen_time_stop", 64, false);
CotUtils.itemCreator("strengthen_sense_danger", 64, false);
CotUtils.itemCreator("strengthen_geasgeas", 64, false);
CotUtils.itemCreator("strengthen_iced_touch", 64, false);
CotUtils.itemCreator("strengthen_rose_thorns", 64, false);
CotUtils.itemCreator("strengthen_acid_cloud", 64, false);
CotUtils.itemCreator("strengthen_light_drifter", 64, false);
CotUtils.itemCreator("strengthen_supplication", 64, false);
CotUtils.itemCreator("strengthen_fey_light", 64, false);

val canApplyTogetherEnchantment as CanApplyTogetherEnchantment = function(trait, enchantment) {
    return true;
};

print("生命汲取");
val lifeDrain = mods.contenttweaker.tconstruct.TraitBuilder.create("lifeDrain");
lifeDrain.color = 0xE1FFFF;
lifeDrain.maxLevel = 3;
lifeDrain.countPerLevel = 29;
lifeDrain.addItem(<item:contenttweaker:strengthen_life_drain>);
lifeDrain.localizedName = ("生命汲取");
lifeDrain.localizedDescription = ("§o多兰剑§r\n§f降低伤害，吸取造成伤害一定比例的血量");
lifeDrain.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical)
{
    var level as int = trait.getData(tool).level;
    var damage as float = originalDamage;
    var recovery as float = 0.0f;
    if (level == 1)
    {
        damage =  originalDamage / 2;
        recovery = damage * 0.08;
    }
    else if (level == 2)
    {
        damage =  originalDamage * 2 / 3;
        recovery = damage * 0.15;
    }
    else if (level == 3)
    {
        damage = originalDamage;
        recovery = damage * 0.3;
    }

    if (attacker.health + recovery >= attacker.maxHealth)
    {
        attacker.health = attacker.maxHealth;
    }
    else
    {
        attacker.health += recovery;
    }
    return damage;

};
lifeDrain.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
lifeDrain.register();


print("野火");
val wildFire = mods.contenttweaker.tconstruct.TraitBuilder.create("wildFire");
wildFire.color = 0xE1FFFF;
wildFire.maxLevel = 1;
wildFire.countPerLevel = 3;
wildFire.addItem(<item:contenttweaker:strengthen_wild_fire>);
wildFire.localizedName = ("野火");
wildFire.localizedDescription = ("§o野火烧不尽，春风吹又生§r\n§f燃烧物品，有几率把物品烧成灰烬\n原木堆=>木炭 树苗=>枯死的灌木");
wildFire.onBlockHarvestDrops = function(trait, tool, event)
{
    var dropping as IItemStack = <item:minecraft:dirt>;
    if (event.drops.length == 1)
    {
        dropping = event.drops[0].stack;
    }
    var id as string = event.block.definition.id;
    if (id == "forestry:wood_pile")
    {
        event.drops = [<item:minecraft:coal:1> * 5 % 100];
    }
    else
    {
        var flag as bool = false;
        for item in <item:ore:treeSapling>.items
        {
            print("野火" ~ id ~ " - " ~ item.definition.id);
            if (id == item.definition.id)
            {
                event.drops = [<item:minecraft:deadbush> % 100];
                flag = true;
                break;
            }
        }
        if (!flag)
        {
            if (Math.random() < 0.01)
            {
                event.drops = [<item:forestry:ash> % 100];
            }
            else if (Math.random() > 0.99)
            {
                event.drops = [<item:prodigytech:ash> % 100];
            }
        }
    }
};
wildFire.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
wildFire.register();

print("磁化之力");
val magnetism = mods.contenttweaker.tconstruct.TraitBuilder.create("magnetism");
magnetism.color = 0xE1FFFF;
magnetism.maxLevel = 10;
magnetism.countPerLevel = 64;
magnetism.addItem(<item:contenttweaker:strengthen_magnetism>);
magnetism.localizedName = ("磁化之力");
magnetism.localizedDescription = ("§o传说只要磁力足够强，就可以吸附起物品§r\n§f");
//暂时没有效果 
magnetism.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
magnetism.register();

print("粉碎");
val shatter = mods.contenttweaker.tconstruct.TraitBuilder.create("shatter");
shatter.color = 0xE1FFFF;
shatter.maxLevel = 1;
shatter.countPerLevel = 5;
shatter.addItem(<item:contenttweaker:strengthen_shatter>);
shatter.localizedName = ("粉碎");
shatter.localizedDescription = ("§o你是不是想到了无中生有的锤子？§r\n§f圆石=>沙砾 沙砾=>沙子 冰=>碎冰");
shatter.onBlockHarvestDrops = function(trait, tool, event)
{
    var id as string = event.block.definition.id;
    if (id == "minecraft:cobblestone")
    {
        event.drops = [<item:minecraft:gravel> % 100];
    }
    else if(id == "minecraft:gravel")
    {
        event.drops = [<item:minecraft:sand> % 100];
    }
    else if(id == "minecraft:ice")
    {
        event.drops = [<item:forestry:crafting_material:5> * 4 % 100];
    }
};
shatter.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
shatter.register();

print("狂野生长");
val rampantGrowth = mods.contenttweaker.tconstruct.TraitBuilder.create("rampantGrowth");
rampantGrowth.color = 0xE1FFFF;
rampantGrowth.maxLevel = 3;
rampantGrowth.countPerLevel = 9;
rampantGrowth.addItem(<item:contenttweaker:strengthen_rampant_growth>);
rampantGrowth.localizedName = ("狂野生长");
rampantGrowth.localizedDescription = ("§o让骨粉的效果更好§r\n§f杀死怪物后，副手若有骨粉，将骨粉转换为强化骨粉");
rampantGrowth.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit)
{
    if (!target.alive && !target instanceof IPlayer)
    {
        var off = crafttweaker.entity.IEntityEquipmentSlot.offhand();
        var offIng as IIngredient = attacker.offHandHeldItem;
        var offItem as IItemStack = attacker.offHandHeldItem;
        if (!isNull(offItem) && offItem.definition.id == "minecraft:dye:15")
        {
            var seed as double = Math.random();
            if (!target.world.remote)
            {
                if (target.world.spawnEntity((<item:skyresources:baseitemcomponent:4>).createEntityItem(target.world, Math.floor(target.x) as int, Math.floor(target.y) as int, Math.floor(target.z) as int)))
                {
                    attacker.setItemToSlot(off, <item:minecraft:dye:15> * (offIng.amount - 1));
                }
            }
        }
    }
};
rampantGrowth.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
rampantGrowth.register();

print("神圣领域");
val sanctuary = mods.contenttweaker.tconstruct.TraitBuilder.create("sanctuary");
sanctuary.color = 0x00FF7F;
sanctuary.maxLevel = 3;
sanctuary.countPerLevel = 5;
sanctuary.addItem(<item:contenttweaker:strengthen_sanctuary>);
sanctuary.localizedName = ("神圣领域");
sanctuary.localizedDescription = ("§o领域内不容许外人的存在§r\n§f攻击附加额外的击退效果");
sanctuary.calcDamage = function(trait, tool, attacker, target, originalDamage, newKnockback, isCritical)
{
    var level as int = trait.getData(tool).level;
    var lnockback as float = 0.0f;
    if (level == 1)
    {
        lnockback = newKnockback + 10;
    }
    else if (level == 2)
    {
        lnockback = newKnockback + 20;
    }
    else if (level == 3)
    {
        lnockback = newKnockback + 40;
    }
    return lnockback;
};
sanctuary.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
sanctuary.register();

print("吐故纳新");
val secondWind = mods.contenttweaker.tconstruct.TraitBuilder.create("secondWind");
secondWind.color = 0x00FF7F;
secondWind.maxLevel = 3;
secondWind.countPerLevel = 32;
secondWind.addItem(<item:contenttweaker:strengthen_second_wind>);
secondWind.localizedName = ("吐故纳新");
secondWind.localizedDescription = ("§o辟谷之法，只需要服食天地元气§r\n§f");
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

print("澄空漫游");
val skySoarer = mods.contenttweaker.tconstruct.TraitBuilder.create("skySoarer");
skySoarer.color = 0x00FF7F;
skySoarer.maxLevel = 3;
skySoarer.countPerLevel = 32;
skySoarer.addItem(<item:contenttweaker:strengthen_sky_soarer>);
skySoarer.localizedName = ("澄空漫游");
skySoarer.localizedDescription = ("§o御六气之辩，以游无穷§r\n§f");
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


print("动物感知");
val senseAnimals = mods.contenttweaker.tconstruct.TraitBuilder.create("senseAnimals");
senseAnimals.color = 0x00FF7F;
senseAnimals.maxLevel = 1;
senseAnimals.countPerLevel = 8;
senseAnimals.addItem(<item:contenttweaker:strengthen_sense_animals>);
senseAnimals.localizedName = ("动物感知");
senseAnimals.localizedDescription = ("§o可以听到动物的声音§r\n§f");
senseAnimals.onUpdate = function(trait, tool, world, entity, itemSlot, isSelected)
{
    if (entity.alive && entity instanceof IPlayer)
    {
        var player as IPlayer = entity;
        if (!entity.world.remote && isSelected)
        {
            if (Math.random() < 0.1)
            {
                player.sendChat("哞~哞~");
            }
            else if (Math.random() < 0.1)
            {
                player.sendChat("汪~汪~");
            }
            else if (Math.random() < 0.1)
            {
                player.sendChat("喵~喵~");
            }
            else if (Math.random() < 0.1)
            {
                player.sendChat("咯~咯~");
            }
            else if (Math.random() < 0.1)
            {
                player.sendChat("叽~叽~");
            }
            else if (Math.random() < 0.1)
            {
                player.sendChat("嘎~嘎~");
            }
        }
    }
};
senseAnimals.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
senseAnimals.register();

print("蒲公英之风");
val dandelionWinds = mods.contenttweaker.tconstruct.TraitBuilder.create("dandelionWinds");
dandelionWinds.color = 0x00FF7F;
dandelionWinds.maxLevel = 1;
dandelionWinds.countPerLevel = 3;
dandelionWinds.addItem(<item:contenttweaker:strengthen_dandelion_winds>);
dandelionWinds.localizedName = ("蒲公英之风");
dandelionWinds.localizedDescription = ("§o生命的延续§r\n§f");
//保留 蒲公英之风
dandelionWinds.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
dandelionWinds.register();

print("生机灌注");
val growthInfusion = mods.contenttweaker.tconstruct.TraitBuilder.create("growthInfusion");
growthInfusion.color = 0x00FF7F;
growthInfusion.maxLevel = 3;
growthInfusion.countPerLevel = 5;
growthInfusion.addItem(<item:contenttweaker:strengthen_growth_infusion>);
growthInfusion.localizedName = ("生机灌注");
growthInfusion.localizedDescription = ("§o生机现，万物复苏§r\n§f等级越高，转化几率越高\n重型雪块=>泥土 泥土=>草方块 枯死的灌木=>树苗等");
growthInfusion.onBlockHarvestDrops = function(trait, tool, event)
{
    var id as string = event.block.definition.id;
    var level as int = trait.getData(tool).level;
    if (id == "skyresources:heavysnow")
    {
        var probability as double = 0.8 * level;
        if(Math.random() < probability)
        {
            event.drops = [<item:minecraft:dirt> % 100];
        }
    }
    else if(id == "minecraft:snow")
    {
        var probability as double = 0.05 * level;
        if(Math.random() < probability)
        {
            event.drops = [<item:minecraft:dirt> % 100];
        }
    }
    else if(id == "minecraft:dirt")
    {
        var probability as double = 0.1 * level;
        if(Math.random() < probability)
        {
            event.drops = [<item:minecraft:grass> % 100];
        }
    }
    else if(id == "minecraft:deadbush")
    {
        var probability as double = 0.3 * level;
        if(Math.random() < probability)
        {
            if(Math.random() < 0.15)
            {
                event.drops = [<item:minecraft:sapling> % 100];
            }
            else if(Math.random() < 0.30)
            {
                event.drops = [<item:minecraft:sapling:1> % 100];
            }
            else if(Math.random() < 0.45)
            {
                event.drops = [<item:minecraft:sapling:2> % 100];
            }
            else if(Math.random() < 0.60)
            {
                event.drops = [<item:minecraft:sapling:3> % 100];
            }
            else if(Math.random() < 0.75)
            {
                event.drops = [<item:minecraft:sapling:4> % 100];
            }
            else if(Math.random() < 0.90)
            {
                event.drops = [<item:minecraft:sapling:5> % 100];
            }
            else 
            {
                event.drops = [<item:minecraft:stick> % 100];
            }
        }
    }
};
growthInfusion.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
growthInfusion.register();

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

print("阳炎射线");
val radiance = mods.contenttweaker.tconstruct.TraitBuilder.create("radiance");
radiance.color = 0x00FF7F;
radiance.maxLevel = 3;
radiance.countPerLevel = 4;
radiance.addItem(<item:contenttweaker:strengthen_radiance>);
radiance.localizedName = ("阳炎射线");
radiance.localizedDescription = ("§o光合作用§r\n§f光照时使用工具有几率不消耗耐久");
radiance.onToolDamage = function(trait, tool, damage, newDamage, entity)
{
    var level as int = trait.getData(tool).level;
    var thisDamage = newDamage;
    if(entity.world.isDayTime() == true && entity.world.isRaining() == false)
    {
        if (level == 1)
        {
            if(Math.random() > 0.4)
            {
                thisDamage = 0;
            }
        }
        else if (level == 2)
        {
            if(Math.random() > 0.2)
            {
                thisDamage = 0;
            }
        }
        else if (level == 3)
        {
            thisDamage = 0;
        }
    }

    return thisDamage;
};
radiance.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
radiance.register();

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

