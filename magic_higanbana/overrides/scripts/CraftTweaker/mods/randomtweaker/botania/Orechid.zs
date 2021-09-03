##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 凝矿兰
##================================================
#priority 2000
import mods.randomtweaker.botania.Orechid;

print("1");
Orechid.delOreWeight(<minecraft:stone>, <ore:oreMithril>);
print("2");
Orechid.delOreWeight(<minecraft:stone>, <ore:dustSulfur>);
print("3");
Orechid.delOreWeight(<minecraft:stone>, <ore:oreTungsten>);
print("4");
Orechid.delOreWeight(<minecraft:stone>, <ore:oreOsmium>);
print("5");
Orechid.delOreWeight(<minecraft:stone>, <ore:oreQuartzBlack>);
print("6");

//零素矿石
Orechid.addOreWeight(<botania:livingrock>, <ore:oreEezo>, 549);
print("7");
//熔晶矿石
Orechid.addOreWeight(<botania:livingrock>, <ore:oreOsram>, 951);
print("8");
//杜兰特矿石
Orechid.addOreWeight(<botania:livingrock>, <ore:oreDuranite>, 843);
print("9");
//绯红铁矿石
Orechid.addOreWeight(<botania:livingrock>, <ore:oreKarmesine>, 765);
print("10");
//欧维姆矿石
Orechid.addOreWeight(<botania:livingrock>, <ore:oreOvium>, 957);
