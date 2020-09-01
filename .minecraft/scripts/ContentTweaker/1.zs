#loader contenttweaker
#priority 4000
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


//定义函数
function itemCreator(name as string,
					 maxn as int,
					 glow as bool){
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

//任务图标
itemCreator("hope", 1, false);
itemCreator("recovery", 1, false);


var item = VanillaFactory.createItem("fake_flint");

item.maxStackSize = 1;
item.maxDamage = 50;
item.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    var firePos = pos.getOffset(facing, 1);
    if (world.getBlockState(firePos).isReplaceable(world, firePos)) {
        world.setBlockState(<block:minecraft:fire>, firePos);
        player.getHeldItem(hand).damage(1, player);
        return ActionResult.success();
    }

    return ActionResult.pass();
};
item.register();