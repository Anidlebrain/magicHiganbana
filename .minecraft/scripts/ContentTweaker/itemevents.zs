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
import scripts.AnildebrainUtils.messageCotUtils;

//火柴
var matchStick = VanillaFactory.createItem("match_stick");

matchStick.maxStackSize = 1;
matchStick.maxDamage = 10;
//matchStick.creativeTab = CotUtils.tab;
matchStick.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    var firePos = pos.getOffset(facing, 1);
    if (world.getBlockState(firePos).isReplaceable(world, firePos)) {
        var chance as double = Math.random();
        if (chance < 0.66) {
            world.setBlockState(<block:minecraft:fire>, firePos);
            player.getHeldItem(hand).damage(2, player);
        }
        else if (chance < 0.98) {
            player.sendMessage(messageCotUtils.getEventMessage("match_stick.1"));
            player.getHeldItem(hand).damage(1, player);
        }
        else {
            player.sendMessage(messageCotUtils.getEventMessage("match_stick.2"));
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
//inheritanceStone.creativeTab = CotUtils.tab;
inheritanceStone.itemRightClick = function(stack, world, player, hand) {
    player.give(<item:modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mini_mana_machine"}));
    return "SUCCESS";
};
inheritanceStone.register();
