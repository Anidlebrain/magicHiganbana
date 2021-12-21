
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
import scripts.AnildebrainUtils.MessageCotUtils.getTconstructMessage as getMessage;
import scripts.AnildebrainUtils.MessageCotUtils.sendPlayMessage as sendMessage;

val canApplyTogetherEnchantment as CanApplyTogetherEnchantment = function(trait, enchantment) {
    return true;
};

CotUtils.itemCreator("strengthen_life_drain", 64, false);
print(getMessage("lifedrain.name"));
val lifeDrain = mods.contenttweaker.tconstruct.TraitBuilder.create("lifeDrain");
lifeDrain.color = 0xE1FFFF;
lifeDrain.maxLevel = 3;
lifeDrain.countPerLevel = 29;
lifeDrain.addItem(<item:contenttweaker:strengthen_life_drain>);
lifeDrain.localizedName = getMessage("lifedrain.name");
lifeDrain.localizedDescription = getMessage("lifedrain.description");
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

CotUtils.itemCreator("strengthen_wild_fire", 64, false);
print(getMessage("wildfire.name"));
val wildFire = mods.contenttweaker.tconstruct.TraitBuilder.create("wildFire");
wildFire.color = 0xE1FFFF;
wildFire.maxLevel = 1;
wildFire.countPerLevel = 3;
wildFire.addItem(<item:contenttweaker:strengthen_wild_fire>);
wildFire.localizedName = getMessage("wildfire.name");
wildFire.localizedDescription = getMessage("wildfire.description");
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

CotUtils.itemCreator("strengthen_shatter", 64, false);
print(getMessage("shatter.name"));
val shatter = mods.contenttweaker.tconstruct.TraitBuilder.create("shatter");
shatter.color = 0xE1FFFF;
shatter.maxLevel = 1;
shatter.countPerLevel = 5;
shatter.addItem(<item:contenttweaker:strengthen_shatter>);
shatter.localizedName = getMessage("shatter.name");
shatter.localizedDescription = getMessage("shatter.description");
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
        event.drops = [<item:contenttweaker:ice_shard> * 4 % 100];
    }
};
shatter.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
shatter.register();

CotUtils.itemCreator("strengthen_rampant_growth", 64, false);
print(getMessage("rampantgrowth.name"));
val rampantGrowth = mods.contenttweaker.tconstruct.TraitBuilder.create("rampantGrowth");
rampantGrowth.color = 0xE1FFFF;
rampantGrowth.maxLevel = 3;
rampantGrowth.countPerLevel = 9;
rampantGrowth.addItem(<item:contenttweaker:strengthen_rampant_growth>);
rampantGrowth.localizedName = getMessage("rampantgrowth.name");
rampantGrowth.localizedDescription = getMessage("rampantgrowth.description");
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

CotUtils.itemCreator("strengthen_sanctuary", 64, false);
print(getMessage("sanctuary.name"));
val sanctuary = mods.contenttweaker.tconstruct.TraitBuilder.create("sanctuary");
sanctuary.color = 0x00FF7F;
sanctuary.maxLevel = 3;
sanctuary.countPerLevel = 5;
sanctuary.addItem(<item:contenttweaker:strengthen_sanctuary>);
sanctuary.localizedName = getMessage("sanctuary.name");
sanctuary.localizedDescription = getMessage("sanctuary.description");
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

CotUtils.itemCreator("strengthen_sense_animals", 64, false);
print(getMessage("senseanimals.name"));
val senseAnimals = mods.contenttweaker.tconstruct.TraitBuilder.create("senseAnimals");
senseAnimals.color = 0x00FF7F;
senseAnimals.maxLevel = 1;
senseAnimals.countPerLevel = 8;
senseAnimals.addItem(<item:contenttweaker:strengthen_sense_animals>);
senseAnimals.localizedName = getMessage("senseanimals.name");
senseAnimals.localizedDescription = getMessage("senseanimals.description");
senseAnimals.onUpdate = function(trait, tool, world, entity, itemSlot, isSelected)
{
    if (entity.alive && entity instanceof IPlayer)
    {
        var player as IPlayer = entity;
        if (!entity.world.remote && isSelected)
        {
            if (Math.random() < 0.1)
            {
                sendMessage(player, "tconstruct.senseanimals.message.1");
            }
            else if (Math.random() < 0.1)
            {
                sendMessage(player, "tconstruct.senseanimals.message.1");
            }
            else if (Math.random() < 0.1)
            {
                sendMessage(player, "tconstruct.senseanimals.message.1");
            }
            else if (Math.random() < 0.1)
            {
                sendMessage(player, "tconstruct.senseanimals.message.1");
            }
            else if (Math.random() < 0.1)
            {
                sendMessage(player, "tconstruct.senseanimals.message.1");
            }
            else if (Math.random() < 0.1)
            {
                sendMessage(player, "tconstruct.senseanimals.message.1");
            }
        }
    }
};
senseAnimals.canApplyTogetherEnchantment = canApplyTogetherEnchantment;
senseAnimals.register();

CotUtils.itemCreator("strengthen_growth_infusion", 64, false);
print(getMessage("growthinfusion.name"));
val growthInfusion = mods.contenttweaker.tconstruct.TraitBuilder.create("growthInfusion");
growthInfusion.color = 0x00FF7F;
growthInfusion.maxLevel = 3;
growthInfusion.countPerLevel = 5;
growthInfusion.addItem(<item:contenttweaker:strengthen_growth_infusion>);
growthInfusion.localizedName = getMessage("growthinfusion.name");
growthInfusion.localizedDescription = getMessage("growthinfusion.description");
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

CotUtils.itemCreator("strengthen_radiance", 64, false);
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
