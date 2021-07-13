##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     生物掉落物 尸壳          ##
##################################################
#priority 2000
import crafttweaker.entity.IEntityDefinition;

val entity = <entity:minecraft:husk>;
entity.clearDrops();

entity.addDrop(<minecraft:rotten_flesh> % 80, 1, 3);

entity.addPlayerOnlyDrop(<minecraft:skull:2> % 0.01);
entity.addPlayerOnlyDrop(<thaumcraft:brain> % 5, 1, 1);
entity.addPlayerOnlyDrop(<xreliquary:mob_ingredient:6> % 50, 1, 1);
entity.addPlayerOnlyDrop(<botania:blacklotus> % 0.01);
