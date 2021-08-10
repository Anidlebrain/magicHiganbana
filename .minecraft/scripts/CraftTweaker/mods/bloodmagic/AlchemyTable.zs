##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     血魔法 炼金术桌
##================================================

#priority 2000
import mods.bloodmagic.AlchemyTable;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.reliquaryRecipe;


//骨头
reliquaryRecipe(<item:minecraft:bone> * 4, 
    [<item:xreliquary:mob_ingredient>], 1);

//肋骨
reliquaryRecipe(<item:xreliquary:mob_ingredient>, 
    [<item:minecraft:bone>, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2], 1);


//凋零肋骨
reliquaryRecipe(<item:xreliquary:mob_ingredient:1>, 
    [<item:minecraft:skull:1>, <item:xreliquary:mob_ingredient>, <item:minecraft:diamond> * 2, <item:minecraft:diamond> * 2, <item:minecraft:diamond> * 2], 1);

//凋零骷髅头
reliquaryRecipe(<item:minecraft:skull:1>, 
    [<item:minecraft:skull>, <item:xreliquary:mob_ingredient:1>, <item:xreliquary:mob_ingredient:1>, <item:xreliquary:mob_ingredient:1>], 1);


//螯角
reliquaryRecipe(<item:xreliquary:mob_ingredient:2>, 
    [<item:minecraft:string>, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2], 1);

//蜘蛛眼
reliquaryRecipe(<item:minecraft:spider_eye> * 2, 
    [<item:xreliquary:mob_ingredient:2>], 1);

//蜘蛛眼
reliquaryRecipe(<item:minecraft:string> * 5, 
    [<item:xreliquary:mob_ingredient:2>], 1);


//酶腺
reliquaryRecipe(<item:xreliquary:mob_ingredient:3>, 
    [<item:minecraft:gunpowder>, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2], 1);

//火药
reliquaryRecipe(<item:minecraft:gunpowder> * 6, 
    [<item:xreliquary:mob_ingredient:3>], 1);


//粘液珍珠
reliquaryRecipe(<item:xreliquary:mob_ingredient:4>, 
    [<item:minecraft:slime_ball>, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2], 1);

//粘液球
reliquaryRecipe(<item:minecraft:slime_ball> * 6, 
    [<item:xreliquary:mob_ingredient:4>], 1);


//蝙蝠翅膀
reliquaryRecipe(<item:xreliquary:mob_ingredient:5>, 
    [<minecraft:feather>, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2], 1);


//僵尸之心
reliquaryRecipe(<item:xreliquary:mob_ingredient:6>, 
    [<minecraft:rotten_flesh>, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2, <item:minecraft:iron_ingot> * 2], 1);

//腐肉
reliquaryRecipe(<minecraft:rotten_flesh> * 4, 
    [<item:xreliquary:mob_ingredient:6>], 1);


//熔岩之心
reliquaryRecipe(<item:xreliquary:mob_ingredient:7>, 
    [<minecraft:magma_cream>, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2], 1);

//岩浆膏
reliquaryRecipe(<minecraft:magma_cream> * 2, 
    [<item:xreliquary:mob_ingredient:7>], 1);

//烈焰棒
reliquaryRecipe(<minecraft:blaze_rod> * 2, 
    [<item:xreliquary:mob_ingredient:7>], 1);


//风暴之眼
reliquaryRecipe(<item:xreliquary:mob_ingredient:8>, 
    [<item:xreliquary:mob_ingredient:3>, <item:skyresources:alchemyitemcomponent:7> * 2, <item:skyresources:alchemyitemcomponent:7> * 2, <item:skyresources:alchemyitemcomponent:7> * 2, <item:skyresources:alchemyitemcomponent:7> * 2, <item:skyresources:alchemyitemcomponent:7> * 2], 1);

//火药
reliquaryRecipe(<item:minecraft:gunpowder> * 10, 
    [<item:xreliquary:mob_ingredient:8>], 1);


//霜冻核心
reliquaryRecipe(<item:xreliquary:mob_ingredient:10>, 
    [<item:minecraft:pumpkin>, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2], 1);

//雪球
reliquaryRecipe(<item:minecraft:snowball> * 10, 
    [<item:xreliquary:mob_ingredient:10>], 1);

//浮冰
reliquaryRecipe(<item:minecraft:snowball> * 8, 
    [<item:xreliquary:mob_ingredient:10>, <item:minecraft:ice> * 8], 1);

//鱿鱼之嘴
reliquaryRecipe(<item:xreliquary:mob_ingredient:11>, 
    [<item:minecraft:dye>, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2], 1);

//墨囊
reliquaryRecipe(<item:minecraft:dye> * 6, 
    [<item:xreliquary:mob_ingredient:11>], 1);

//守卫者之刺
reliquaryRecipe(<item:xreliquary:mob_ingredient:16>, 
    [<item:minecraft:prismarine_shard>, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2], 1);

//海晶砂砾
reliquaryRecipe(<item:minecraft:prismarine_crystals> * 5, 
    [<item:xreliquary:mob_ingredient:16>], 1);

//海晶石碎片
reliquaryRecipe(<item:minecraft:prismarine_shard> * 3, 
    [<item:xreliquary:mob_ingredient:16>], 1);


//朦胧之眼
reliquaryRecipe(<item:xreliquary:mob_ingredient:12>, 
    [<item:minecraft:ender_eye>, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:gold_ingot> * 2], 1);

//末影之眼
reliquaryRecipe(<item:minecraft:ender_eye> * 2, 
    [<item:xreliquary:mob_ingredient:12>], 1);

//肥沃精华
reliquaryRecipe(<item:xreliquary:mob_ingredient:9>, 
    [<minecraft:dye:2>, <item:xreliquary:mob_ingredient:3>, <item:xreliquary:mob_ingredient>, <item:xreliquary:mob_ingredient:4>], 2);

//炼狱之爪
reliquaryRecipe(<item:xreliquary:mob_ingredient:13>, 
    [<item:minecraft:leather>, <item:xreliquary:mob_ingredient:7>, <item:xreliquary:mob_ingredient>, <item:xreliquary:mob_ingredient:4>], 2);

//海妖壳甲残片
reliquaryRecipe(<item:xreliquary:mob_ingredient:14>, 
    [<item:xreliquary:mob_ingredient:12>, <item:xreliquary:mob_ingredient:12>, <item:xreliquary:mob_ingredient:12>, <item:xreliquary:mob_ingredient:4>], 2);

//猩红之布
reliquaryRecipe(<item:xreliquary:mob_ingredient:15>, 
    [<item:xreliquary:mob_ingredient:10>, <item:xreliquary:mob_ingredient:10>, <item:minecraft:wool>, <item:minecraft:wool>], 2);

//光明祭坛
reliquaryRecipe(<item:xreliquary:altar:0>, 
    [<item:minecraft:obsidian>, <item:minecraft:redstone_lamp:0>, <item:xreliquary:mob_ingredient:11>, <item:xreliquary:mob_ingredient:3>], 2);

//结界火炬
reliquaryRecipe(<item:xreliquary:interdiction_torch>, 
    [<item:xreliquary:mob_ingredient:5>, <item:xreliquary:mob_ingredient:11>, <item:xreliquary:mob_ingredient:7>, <item:minecraft:blaze_rod>], 2);

//天使之羽
reliquaryRecipe(<item:xreliquary:angelic_feather>, 
    [<item:xreliquary:mob_ingredient:5>, <item:minecraft:feather>, <item:xreliquary:mob_ingredient:11>, <item:xreliquary:mob_ingredient:9>], 2);

//严寒之剪
reliquaryRecipe(<item:xreliquary:shears_of_winter>, 
    [<item:xreliquary:mob_ingredient:10>, <item:minecraft:shears>, <item:minecraft:diamond> * 3], 2);


//毁灭触媒
reliquaryRecipe(<item:xreliquary:destruction_catalyst>, 
    [<item:randomthings:blazeandsteel>, <item:minecraft:gold_ingot>, <item:xreliquary:mob_ingredient:7>, <item:xreliquary:mob_ingredient:3>], 3);

//蝾螈之眼
reliquaryRecipe(<item:xreliquary:salamander_eye>, 
    [<item:xreliquary:mob_ingredient:11>, <item:minecraft:ender_eye>, <item:xreliquary:mob_ingredient:7>, <item:xreliquary:mob_ingredient:10>], 3);


//僵尸心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment>, 
    [<item:minecraft:rotten_flesh> * 3, <item:xreliquary:mob_ingredient:6> * 6, <item:minecraft:bone> * 2], 3);

//骷髅心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:1>, 
    [<item:minecraft:bone> * 2, <item:minecraft:flint>, <item:xreliquary:mob_ingredient> * 6], 3);

//凋零骷髅心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:2>, 
    [<item:minecraft:bone> * 2, <item:minecraft:skull:1>, <item:xreliquary:mob_ingredient:1> * 6], 3);

//爬行者心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:3>, 
    [<item:minecraft:gunpowder> * 2, <item:minecraft:bone>, <item:xreliquary:mob_ingredient:3> * 6], 3);

//猪人心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:5>, 
    [<item:minecraft:rotten_flesh> * 2, <item:minecraft:golden_sword>, <item:xreliquary:mob_ingredient:6> * 6], 3);

//女巫心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:5>, 
    [<item:minecraft:glass_bottle> * 2, <item:minecraft:spider_eye>, <item:xreliquary:witch_hat> * 6], 3);

//洞穴蜘蛛心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:6>, 
    [<item:minecraft:string> * 2, <minecraft:potion>.withTag({Potion: "minecraft:long_poison"}), <item:xreliquary:mob_ingredient:2> * 6], 3);

//蜘蛛心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:7>, 
    [<item:minecraft:string> * 2, <item:minecraft:spider_eye>, <item:xreliquary:mob_ingredient:2> * 6], 3);

//末影心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:8>, 
    [<item:minecraft:ender_eye> * 2, <item:xreliquary:mob_ingredient:11> * 8], 3);

//恶魂心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:9>, 
    [<item:minecraft:ghast_tear> * 6, <item:minecraft:bone> * 3, <item:xreliquary:mob_ingredient:3>], 3);

//史莱姆心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:10>, 
    [<item:minecraft:slime_ball> * 3, <item:xreliquary:mob_ingredient:4> * 6], 3);

//熔岩怪心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:11>, 
    [<item:minecraft:magma_cream> * 4, <item:xreliquary:mob_ingredient:7> * 6], 3);

//烈焰人心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:12>, 
    [<item:minecraft:blaze_rod> * 4, <item:xreliquary:mob_ingredient:7> * 6], 3);

//守卫者心珠
reliquaryRecipe(<item:xreliquary:mob_charm_fragment:13>, 
    [<item:minecraft:prismarine_shard> * 4, <item:xreliquary:mob_ingredient:16> * 6], 3);

//怜悯之十字架
reliquaryRecipe(<item:xreliquary:mercy_cross>, 
    [<item:minecraft:gold_ingot> * 4, <item:minecraft:leather>, <item:xreliquary:mob_ingredient>, <item:xreliquary:mob_ingredient:1>, <item:xreliquary:mob_ingredient:6>, <minecraft:skull:1>], 4);

//蛇杖
reliquaryRecipe(<item:xreliquary:serpent_staff>, 
    [<item:minecraft:ender_eye>, <item:minecraft:stick>, <item:xreliquary:mob_ingredient>, <item:xreliquary:mob_ingredient:2>, <item:xreliquary:mob_ingredient:2>, <item:xreliquary:mob_ingredient:14>], 4);

//迈达斯的点金石
reliquaryRecipe(<item:xreliquary:midas_touchstone>, 
    [<item:minecraft:anvil:0>, <item:minecraft:gold_block> * 3, <item:xreliquary:mob_ingredient:3> * 3, <item:xreliquary:mob_ingredient:7> * 3, <item:xreliquary:void_tear:0>], 4);

//炼狱钩爪
reliquaryRecipe(<item:xreliquary:infernal_claws>, 
    [<item:minecraft:leather>, <item:xreliquary:mob_ingredient:13> * 5, <item:xreliquary:mob_ingredient:4>, <item:xreliquary:mob_ingredient:13> * 7], 4);

//诞妄提灯
reliquaryRecipe(<item:xreliquary:lantern_of_paranoia>, 
    [<item:minecraft:iron_ingot> * 3, <item:skyresources:alchemicalglass> * 2, <item:xreliquary:mob_ingredient:4>, <item:xreliquary:mob_ingredient:7>], 4);

//幸运钱币
reliquaryRecipe(<item:xreliquary:fortune_coin>,
    [<item:xreliquary:mob_ingredient:5>, <item:xreliquary:mob_ingredient:4>, <item:xreliquary:mob_ingredient:11>, <item:minecraft:gold_block> * 2], 4);

//烈狱之泪
reliquaryRecipe(<item:xreliquary:infernal_tear>, 
    [<item:xreliquary:mob_ingredient:7> * 2, <item:xreliquary:mob_ingredient:13>, <item:xreliquary:witch_hat>, <item:xreliquary:void_tear>], 4);

//旅居者手杖
reliquaryRecipe(<item:xreliquary:sojourner_staff>, 
    [<item:xreliquary:mob_ingredient:7> * 2, <item:xreliquary:void_tear>, <item:minecraft:gold_block>, <item:minecraft:blaze_rod>], 4);

//冰妖之杖
reliquaryRecipe(<item:xreliquary:ice_magus_rod>, 
    [<item:xreliquary:mob_ingredient:10> * 2, <item:xreliquary:void_tear>, <item:minecraft:diamond> * 3, <item:minecraft:iron_ingot>], 4);

//魔骨
reliquaryRecipe(<item:xreliquary:magicbane>, 
    [<item:xreliquary:mob_ingredient:11> * 2, <item:minecraft:gold_ingot> * 2, <item:minecraft:iron_ingot>], 4);

//犬牙钓鱼竿
reliquaryRecipe(<item:xreliquary:rod_of_lyssa>, 
    [<item:xreliquary:mob_ingredient:13>, <item:xreliquary:mob_ingredient:5>, <item:xreliquary:mob_ingredient:11>, <item:minecraft:fishing_rod>], 4);

//虚空之泪
reliquaryRecipe(<item:xreliquary:void_tear>, 
    [<item:xreliquary:mob_ingredient:4>, <item:xreliquary:mob_ingredient:11>, <item:minecraft:dye:4> * 2, <item:minecraft:ghast_tear> * 2], 4);


//英雄之章
reliquaryRecipe(<item:xreliquary:hero_medallion>, 
    [<item:xreliquary:mob_ingredient:11>, <item:xreliquary:infernal_tear>, <item:xreliquary:fortune_coin>, <item:xreliquary:witch_hat>], 5);

//冰河之杖
reliquaryRecipe(<item:xreliquary:glacial_staff>, 
    [<item:xreliquary:mob_ingredient:10>, <item:xreliquary:void_tear>, <item:xreliquary:ice_magus_rod>, <item:xreliquary:void_tear>], 5);

//熔岩圣杯
reliquaryRecipe(<item:xreliquary:infernal_chalice>, 
    [<item:xreliquary:mob_ingredient:7> * 2, <item:xreliquary:infernal_claws>, <item:xreliquary:infernal_tear>, <item:xreliquary:emperor_chalice>], 5);

//列风者
reliquaryRecipe(<item:xreliquary:rending_gale>, 
    [<item:xreliquary:mob_ingredient:5> * 3, <item:xreliquary:mob_ingredient:8> * 2, <item:xreliquary:void_tear>, <item:minecraft:gold_block>], 5);


//符文石
for i in 0 .. 15 {
    AlchemyTable.addRecipe(<roots:runestone>, [<minecraft:stone>, <randomthings:runedust>.definition.makeStack(i)], 20, 20, 1);
}













