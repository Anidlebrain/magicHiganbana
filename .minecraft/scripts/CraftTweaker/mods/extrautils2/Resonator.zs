##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     更多实用设备 共振仪
##================================================
#priority 2000
import mods.extrautils2.Resonator;

//烧制石头
Resonator.remove(<extrautils2:decorativesolid:3>);
Resonator.add(<extrautils2:decorativesolid:3>, <naturesaura:infused_stone>, 64);

//焦黑石英
Resonator.remove(<extrautils2:decorativesolid:7>);
Resonator.add(<extrautils2:decorativesolid:7>, <actuallyadditions:block_misc:2>, 64);

//基础升级
Resonator.remove(<extrautils2:ingredients:9>);
Resonator.add(<extrautils2:ingredients:9>, <thermalfoundation:material:512>, 80);

/*
//基础升级
recipes.remove(<voidcraft:voidinfuser>);
Resonator.add(<voidcraft:voidinfuser>, <voidcraft:voidinfuserinert>, 200);
*/