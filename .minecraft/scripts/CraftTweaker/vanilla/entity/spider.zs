##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     生物掉落 蜘蛛
##================================================
#modloaded higanbana
#priority 2000

import crafttweaker.entity.IEntityDefinition;

val entity = <entity:minecraft:cave_spider>;
entity.clearDrops();

entity.addDrop(<minecraft:string> % 80, 1, 3);

entity.addPlayerOnlyDrop(<xreliquary:mob_ingredient:2> % 45);
entity.addPlayerOnlyDrop(<minecraft:spider_eye> % 15);