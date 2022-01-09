##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     生物掉落 洞穴蜘蛛
##================================================
#modloaded higanbana
#priority 2000

import crafttweaker.entity.IEntityDefinition;

val entity = <entity:minecraft:cave_spider>;
entity.clearDrops();

entity.addDrop(<minecraft:string> % 80, 1, 3);


entity.addPlayerOnlyDrop(<minecraft:web> % 1);

entity.addPlayerOnlyDrop(<xreliquary:mob_ingredient:2> % 50);

entity.addPlayerOnlyDrop(<minecraft:spider_eye> % 20);
