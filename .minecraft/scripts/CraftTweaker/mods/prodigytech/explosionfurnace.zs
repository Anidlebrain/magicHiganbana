##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     奇才妙械 爆炸熔炉
##================================================
#modloaded higanbanautils
#priority 2000

import mods.prodigytech.explosionfurnace.recipes as re;
import mods.prodigytech.explosionfurnace.explosives as ex;
import mods.prodigytech.explosionfurnace.dampeners as da;


re.removeAll();

//瓷铁锭
re.addRecipe(<tconevo:material>, <prodigytech:ferramic_ingot>, 90, <bloodmagic:component:12>, 10);

//佐拉钢锭
re.addRecipe(<prodigytech:zorrasteel_raw>, <prodigytech:zorrasteel_ingot>, 360, <ore:dustCoal>, 1);

//压缩铁锭
re.addRecipe(<minecraft:iron_ingot>, <pneumaticcraft:ingot_iron_compressed>, 1440);






