##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     根源魔法 仪式: 召唤生物
##================================================
#priority 2000
import mods.roots.SummonCreatures;
import crafttweaker.entity.IEntityDefinition;

SummonCreatures.removeEntity(<entity:minecraft:cow>);
SummonCreatures.removeEntity(<entity:minecraft:parrot>);

//鱿鱼
//SummonCreatures.removeEntity(<entity:minecraft:squid>);

//狐狸
//SummonCreatures.removeEntity(<entity:mysticalworld:entity_fox>);
SummonCreatures.removeEntity(<entity:minecraft:mule>);
SummonCreatures.removeEntity(<entity:minecraft:pig>);

//甲虫
//SummonCreatures.removeEntity(<entity:mysticalworld:entity_beetle>);
//猫头鹰
//SummonCreatures.removeEntity(<entity:mysticalworld:entity_owl>);
SummonCreatures.removeEntity(<entity:minecraft:horse>);

SummonCreatures.removeEntity(<entity:minecraft:ocelot>);
SummonCreatures.removeEntity(<entity:minecraft:rabbit>);
SummonCreatures.removeEntity(<entity:minecraft:wolf>);

SummonCreatures.removeEntity(<entity:minecraft:mooshroom>);
SummonCreatures.removeEntity(<entity:minecraft:sheep>);
SummonCreatures.removeEntity(<entity:minecraft:chicken>);

//北极熊
//SummonCreatures.removeEntity(<entity:minecraft:polar_bear>);
//羊驼
//SummonCreatures.removeEntity(<entity:minecraft:llama>);
//鹿
//SummonCreatures.removeEntity(<entity:mysticalworld:entity_deer>);

//青蛙
//SummonCreatures.removeEntity(<entity:mysticalworld:entity_frog>);
SummonCreatures.removeEntity(<entity:minecraft:donkey>);
//芽精灵
//SummonCreatures.removeEntity(<entity:mysticalworld:entity_sprout>);

SummonCreatures.removeEntity(<entity:minecraft:bat>);

SummonCreatures.clearLifeEssence();

//守卫者 骡 远古守卫者 

//凋零骷髅
SummonCreatures.addEntity(<entity:minecraft:wither_skeleton>, [<item:xreliquary:mob_ingredient:1>, <item:minecraft:arrow>, <item:minecraft:bow>]);

//流髑
SummonCreatures.addEntity(<entity:minecraft:stray>, [<item:skyresources:heavysnowball>, <item:minecraft:arrow>, <item:minecraft:bow>, <item:xreliquary:mob_ingredient>]);

//尸壳
SummonCreatures.addEntity(<entity:minecraft:husk>, [<item:minecraft:sand>, <item:xreliquary:mob_ingredient:6>, <item:thaumcraft:brain>]);

//僵尸村民
SummonCreatures.addEntity(<entity:minecraft:zombie_villager>, [<item:minecraft:emerald_block>, <item:xreliquary:mob_ingredient:6>, <item:thaumcraft:brain>]);

//驴
SummonCreatures.addEntity(<entity:minecraft:donkey>, [<item:minecraft:hay_block>, <item:minecraft:golden_carrot>, <item:minecraft:leather>]);

//唤魔者
SummonCreatures.addEntity(<entity:minecraft:evocation_illager>, [<item:minecraft:emerald>, <item:xreliquary:phoenix_down>, <item:minecraft:banner>]);

//卫道士
SummonCreatures.addEntity(<entity:minecraft:vindication_illager>, [<item:minecraft:iron_axe>, <item:minecraft:emerald>, <item:minecraft:banner>]);

//幻术师
SummonCreatures.addEntity(<entity:minecraft:illusion_illager>, [<item:minecraft:spectral_arrow>, <item:minecraft:bow>, <item:botania:invisibilitycloak>, <item:minecraft:lingering_potion>]);

//苦力怕
SummonCreatures.removeEntity(<entity:minecraft:creeper>);
SummonCreatures.addEntity(<entity:minecraft:creeper>, [<item:xreliquary:mob_ingredient:3>]);

//骷髅
SummonCreatures.removeEntity(<entity:minecraft:skeleton>);
SummonCreatures.addEntity(<entity:minecraft:skeleton>, [<item:minecraft:arrow>, <item:minecraft:bow>, <item:xreliquary:mob_ingredient>]);

//蜘蛛
SummonCreatures.removeEntity(<entity:minecraft:spider>);
SummonCreatures.addEntity(<entity:minecraft:spider>, [<item:minecraft:web>, <item:xreliquary:mob_ingredient:2>]);

//僵尸
SummonCreatures.removeEntity(<entity:minecraft:zombie>);
SummonCreatures.addEntity(<entity:minecraft:zombie>, [<item:xreliquary:mob_ingredient:6>, <item:thaumcraft:brain>]);

//史莱姆
SummonCreatures.addEntity(<entity:minecraft:slime>, [<item:xreliquary:mob_ingredient:4>]);

//恶魂
SummonCreatures.addEntity(<entity:minecraft:ghast>, [<item:minecraft:fire_charge>, <item:xreliquary:holy_hand_grenade>, <item:xreliquary:wraith_node>]);

//僵尸猪人
SummonCreatures.removeEntity(<entity:minecraft:zombie_pigman>);
SummonCreatures.addEntity(<entity:minecraft:zombie_pigman>, [<item:xreliquary:mob_ingredient:6>, <item:thaumcraft:brain>, <item:minecraft:gold_ingot>]);

//末影人
SummonCreatures.addEntity(<entity:minecraft:enderman>, [<item:xreliquary:mob_ingredient:11>]);

//洞穴蜘蛛
SummonCreatures.addEntity(<entity:minecraft:cave_spider>, [<item:minecraft:web>, <item:xreliquary:mob_ingredient:2>, <item:minecraft:poisonous_potato>]);

//烈焰人
SummonCreatures.addEntity(<entity:minecraft:blaze>, [<item:minecraft:blaze_powder>, <item:minecraft:fire_charge>]);

//凋零骷髅 =》 头？
//SummonCreatures.addEntity(<entity:minecraft:wither>, [<item:xreliquary:mob_ingredient:1>, <item:xreliquary:mob_ingredient:1>, <item:xreliquary:mob_ingredient:1>]);

//女巫
SummonCreatures.removeEntity(<entity:minecraft:witch>);
SummonCreatures.addEntity(<entity:minecraft:witch>, [<item:xreliquary:witch_hat>]);

//潜影贝
SummonCreatures.addEntity(<entity:minecraft:shulker>, [<item:minecraft:chorus_fruit>, <item:minecraft:shield>]);

//猪
SummonCreatures.addEntity(<entity:minecraft:pig>, [<item:minecraft:potato>, <item:minecraft:carrot>, <item:minecraft:beetroot>]);

//羊
SummonCreatures.addEntity(<entity:minecraft:sheep>, [<item:roots:wildewheet>, <item:roots:wildewheet>, <item:minecraft:tallgrass:1>]);

//牛
SummonCreatures.addEntity(<entity:minecraft:cow>, [<item:minecraft:wheat>, <item:minecraft:wheat>, <item:minecraft:tallgrass:1>]);

//鸡
SummonCreatures.addEntity(<entity:minecraft:chicken>, [<item:minecraft:wheat_seeds>, <item:minecraft:wheat_seeds>]);

//狼
SummonCreatures.addEntity(<entity:minecraft:wolf>, [<item:minecraft:bone>, <item:minecraft:bone>]);

//哞菇
SummonCreatures.addEntity(<entity:minecraft:mooshroom>, [<item:minecraft:wheat>, <item:minecraft:wheat>, <item:minecraft:tallgrass:1>, <item:minecraft:red_mushroom>]);

//豹猫
SummonCreatures.addEntity(<entity:minecraft:ocelot>, [<item:minecraft:fish>, <item:tconstruct:edible:20>, <item:harvestcraft:gravlaxitem>]);

//马
SummonCreatures.addEntity(<entity:minecraft:horse>, [<item:minecraft:hay_block>, <item:minecraft:golden_apple>, <item:minecraft:leather>]);

//兔子
SummonCreatures.addEntity(<entity:minecraft:rabbit>, [<item:minecraft:carrot>, <item:minecraft:carrot>]);

//鹦鹉
SummonCreatures.addEntity(<entity:minecraft:parrot>, [<item:minecraft:cookie>, <item:mysticalworld:assorted_seeds>]);

//暴雪人
SummonCreatures.addEntity(<entity:thermalfoundation:blizz>, [<item:bloodmagic:component:32>, <item:botania:grasshorn:2>]);

//狂风人
SummonCreatures.addEntity(<entity:thermalfoundation:blitz>, [<item:bloodmagic:component:2>, <item:botania:grasshorn:0>]);

//岩石人
SummonCreatures.addEntity(<entity:thermalfoundation:basalz>, [<item:bloodmagic:component:24>, <item:botania:grasshorn:1>]);

var firendlyCreatures = [
    <entity:minecraft:pig>,
    <entity:minecraft:sheep>,
    <entity:minecraft:chicken>,
    <entity:minecraft:cow>,
    <entity:mysticalworld:entity_beetle>,
    <entity:mysticalworld:entity_deer>,
    <entity:mysticalworld:entity_endermini>,
    <entity:mysticalworld:entity_fox>,
    <entity:mysticalworld:entity_frog>,
    <entity:mysticalworld:entity_lava_cat>,
    <entity:mysticalworld:entity_owl>,
    <entity:mysticalworld:entity_silkworm>,
    <entity:mysticalworld:entity_sprout>
] as IEntityDefinition[];


for entity in firendlyCreatures {
    SummonCreatures.addLifeEssence(entity);
}




