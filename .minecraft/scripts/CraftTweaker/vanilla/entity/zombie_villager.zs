##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     生物掉落物 僵尸村民      ##
##################################################
#priority 2000
import crafttweaker.entity.IEntityDefinition;

val entity = <entity:minecraft:zombie_villager>;
entity.clearDrops();

entity.addDrop(<minecraft:rotten_flesh> % 80, 1, 3);
entity.addDrop(<minecraft:glowstone_dust> % 20, 1, 1);

entity.addPlayerOnlyDrop(<minecraft:skull:2> % 0.01);
entity.addPlayerOnlyDrop(<thaumcraft:brain> % 5, 1, 1);
entity.addPlayerOnlyDrop(<xreliquary:mob_ingredient:6> % 50, 1, 1);
entity.addPlayerOnlyDrop(<botania:blacklotus> % 0.01);