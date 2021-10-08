##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     物品增加
##=================================================
#loader contenttweaker
#priority 5000
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.SoundEvent;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.IItemUse;
import mods.contenttweaker.IItemUpdate;
import mods.contenttweaker.IItemRightClick;
import mods.ctutils.utils.Math;

import scripts.AnildebrainUtils.CotUtils;

//元素符文
CotUtils.itemCreator("thunder_rune", 64, false);
CotUtils.itemCreator("dark_rune", 64, false);
CotUtils.itemCreator("earth_rune", 64, false);
CotUtils.itemCreator("gold_rune", 64, false);
CotUtils.itemCreator("light_rune", 64, false);
CotUtils.itemCreator("wood_rune", 64, false);

//爆裂粉
CotUtils.itemCreator("explosive_dust", 64, false);

//五元素晶体
CotUtils.itemCreator("crystal_water", 16, false);
CotUtils.itemCreator("crystal_fire", 16, false);
CotUtils.itemCreator("crystal_wood", 16, false);
CotUtils.itemCreator("crystal_earth", 16, false);
CotUtils.itemCreator("crystal_metal", 16, false);
//CotUtils.itemCreator("alchemical_frame", 1, false);

//炼金板
CotUtils.itemCreator("alchemical_plate", 64, false);

//炼金核心部件
CotUtils.itemCreator("alchemical_corecomponents", 1, false);

//彼岸之页
CotUtils.itemCreator("page_of_higanbana", 1, false);

//怪物精华
CotUtils.itemCreator("monster_essence", 64, false);

//暮色钥匙
CotUtils.itemCreator("twilightforest_key", 1, true);

//任务图标
CotUtils.itemCreator("hope", 1, false);
CotUtils.itemCreator("recovery", 1, false);

//锡线
CotUtils.itemCreator("tin_wire", 64, false);

//七原罪
CotUtils.itemCreator("seven_deadly_sins", 1, true);

//星辰宝石
CotUtils.itemCreator("stars_gem", 64, false);
//星辉宝石
CotUtils.itemCreator("starglow_gem", 64, false);
//天辉宝石
CotUtils.itemCreator("celestite_gem", 64, false);
//彩辉宝石
CotUtils.itemCreator("lridescent_gem", 64, false);

//氯化铝
CotUtils.itemCreator("aluminium_chloride", 64, false);

//碘晶体
CotUtils.itemCreator("iodine_crystal", 64, false);

//空间之钥
CotUtils.itemCreator("space_key", 1, true);

//基础合成宝石
CotUtils.itemCreator("basic_synthetic_gem", 64, false);

//绿宝石晶体
CotUtils.itemCreator("emerald_crystal", 64, false);

//红石晶体
CotUtils.itemCreator("redstone_crystal", 64, false);

//青金晶体
CotUtils.itemCreator("lapis_crystal", 64, false);

//钻晶体
CotUtils.itemCreator("diamond_crystal", 64, false);

//煤晶体
CotUtils.itemCreator("coal_crystal", 64, false);

//星辰炼金粉
CotUtils.itemCreator("star_alchemy_powder", 64, false);

//星罗锭
CotUtils.itemCreator("ingot_xingluo", 64, false);
//霈瀚锭
CotUtils.itemCreator("ingot_peihan", 64, false);
//冻金锭
CotUtils.itemCreator("ingot_frozen_gold", 64, false);
//聚星锭
CotUtils.itemCreator("ingot_juxing", 64, false);

//碎冰
CotUtils.itemCreator("ice_shard", 64, false);

//bianhua
CotUtils.itemCreator("higanbana", 64, false);

//链接粘合剂
CotUtils.itemCreator("link_adhesive", 64, false);

//火柴
var matchStick = VanillaFactory.createItem("match_stick");

matchStick.maxStackSize = 1;
matchStick.maxDamage = 10;
matchStick.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    var firePos = pos.getOffset(facing, 1);
    if (world.getBlockState(firePos).isReplaceable(world, firePos)) {
        var chance as double = Math.random();
        if (chance < 0.66) {
            world.setBlockState(<block:minecraft:fire>, firePos);
            player.getHeldItem(hand).damage(2, player);
        }
        else if (chance < 0.98) {
            player.sendMessage("由于天气寒冷，点火失败。");
            player.getHeldItem(hand).damage(1, player);
        }
        else {
            player.sendMessage("点火失败，导致火柴损坏");
            player.getHeldItem(hand).damage(10, player);
        }
        return ActionResult.success();
    }

    return ActionResult.pass();
};
matchStick.register();

//传承石
var inheritanceStone = VanillaFactory.createItem("inheritance_stone");

inheritanceStone.maxStackSize = 1;
inheritanceStone.glowing = true;
inheritanceStone.itemRightClick = function(stack, world, player, hand) {
    player.give(<item:modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mini_mana_machine"}));
    return "SUCCESS";
};
inheritanceStone.register();
