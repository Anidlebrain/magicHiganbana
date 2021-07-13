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


//定义函数
function itemCreator(name as string,
					 maxn as int,
					 glow as bool) {
	var itemt = VanillaFactory.createItem(name);
	itemt.maxStackSize = maxn;
	itemt.glowing = glow;
	itemt.register();
}


itemCreator("thunder_rune", 64, false);
itemCreator("dark_rune", 64, false);
itemCreator("earth_rune", 64, false);
itemCreator("gold_rune", 64, false);
itemCreator("light_rune", 64, false);
itemCreator("wood_rune", 64, false);
itemCreator("explosive_dust", 64, false);

itemCreator("crystal_water", 16, false);
itemCreator("crystal_fire", 16, false);
itemCreator("crystal_wood", 16, false);
itemCreator("crystal_earth", 16, false);
itemCreator("crystal_metal", 16, false);
itemCreator("alchemical_frame", 1, false);
itemCreator("alchemical_plate", 64, false);
itemCreator("alchemical_corecomponents", 1, false);

itemCreator("page_of_higanbana", 1, false);

itemCreator("monster_essence", 1, false);

itemCreator("twilightforest_key", 1, true);

//任务图标
itemCreator("hope", 1, false);
itemCreator("recovery", 1, false);

//锡线
itemCreator("tin_wire", 64, false);

//七原罪
itemCreator("seven_deadly_sins", 1, true);

itemCreator("", 64, true);

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


var inheritanceStone = VanillaFactory.createItem("inheritance_stone");

inheritanceStone.maxStackSize = 1;
inheritanceStone.glowing = true;
inheritanceStone.itemRightClick = function(stack, world, player, hand) {
    player.give(<item:modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mini_mana_machine"}));
    return "SUCCESS";
};
inheritanceStone.register();

