##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     生物掉落 僵尸猪人
##================================================
#priority 2000
import crafttweaker.entity.IEntityDefinition;

val entity = <entity:minecraft:zombie_pigman>;
entity.clearDrops();

entity.addDrop(<minecraft:rotten_flesh> % 80, 1, 3);
entity.addDrop(<minecraft:glowstone_dust> % 20, 1, 1);

entity.addPlayerOnlyDrop(<minecraft:skull:2> % 0.01);
entity.addPlayerOnlyDrop(<thaumcraft:brain> % 5, 1, 1);
entity.addPlayerOnlyDrop(<xreliquary:mob_ingredient:6> % 50, 1, 1);
//黑莲花
entity.addPlayerOnlyDrop(<botania:blacklotus> % 0.01);
//金
entity.addPlayerOnlyDrop(<skyresources:orealchdust:1> % 5);
