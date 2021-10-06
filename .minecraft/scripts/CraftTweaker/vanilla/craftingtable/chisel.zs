##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     凿子相关 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;

function init()
{
    //recipesInit();
}

function recipesInit()
{
    recipes.removeByRecipeName("minecraft:stonebrick");
    //recipes.removeByRecipeName("minecraft:mossy_stonebrick");
    recipes.removeByRecipeName("minecraft:chiseled_stonebrick");
    recipes.removeByRecipeName("twilightforest:nagastone/nagastone_spiral");

    recipes.removeByRecipeName("minecraft:polished_andesite");

    recipes.removeByRecipeName("thaumcraft:brickarcane");

    recipes.removeByRecipeName("thermalfoundations:storage_resource");
    recipes.removeByRecipeName("forestry:charcoal_block");
    recipes.removeByRecipeName("mekanism:basicblock_3");

    recipes.removeByRecipeName("twilightforest:castleblock/castle_pillar_encased_none");
    recipes.removeByRecipeName("twilightforest:castleblock/castle_pillar_encased");
    recipes.removeByRecipeName("twilightforest:castleblock/castle_pillar_bold");
    recipes.removeByRecipeName("twilightforest:castleblock/castle_pillar_bold_none");

    recipes.removeByRecipeName("appliedenergistics2:decorative/certus_quartz_pillar");
    recipes.removeByRecipeName("appliedenergistics2:decorative/chiseled_quartz_block");

    recipes.removeByRecipeName("minecraft:polished_diorite");

    recipes.removeByRecipeName("minecraft:end_bricks");

    recipes.removeByRecipeName("enderio:compatibillity_glass_pane");

    recipes.removeByRecipeName("immersiveengineering/treated_wood/treated_wood_cycle2");
    recipes.removeByRecipeName("immersiveengineering/treated_wood/treated_wood_cycle1");
    recipes.removeByRecipeName("immersiveengineering/treated_wood/treated_wood_cycle0");

    recipes.removeByRecipeName("immersiveengineering/metal_decoration/steel_scaffolding_cycle2");
    recipes.removeByRecipeName("immersiveengineering/metal_decoration/steel_scaffolding_cycle1");
    recipes.removeByRecipeName("immersiveengineering/metal_decoration/steel_scaffolding_cycle0");

    recipes.removeByRecipeName("immersiveengineering/metal_decoration/aluminum_scaffolding_cycle2");
    recipes.removeByRecipeName("immersiveengineering/metal_decoration/aluminum_scaffolding_cycle1");
    recipes.removeByRecipeName("immersiveengineering/metal_decoration/aluminum_scaffolding_cycle0");

    recipes.removeByRecipeName("immersiveengineering/metal_decoration/aluminum_scaffolding_cycle0");

    recipes.removeByRecipeName("astralsorcery/black_marble_bricks");
    recipes.removeByRecipeName("astralsorcery/black_marble_pillar");
    recipes.removeByRecipeName("astralsorcery/black_marble_arch");
    recipes.removeByRecipeName("astralsorcery/black_marble_chiseled");
    recipes.removeByRecipeName("astralsorcery/black_marble_engraved");
    recipes.removeByRecipeName("astralsorcery/black_marble_runed");

    recipes.removeByRecipeName("tconstruct:smeltery/seared/bricks/paver_bricks_default");
    recipes.removeByRecipeName("tconstruct:smeltery/seared/bricks/bricks");

    recipes.removeByRecipeName("minecraft:smooth_sandstone");
    recipes.removeByRecipeName("minecraft:smooth_red_sandstone");

    recipes.removeByRecipeName("roots:runestone_chiseled");
    recipes.removeByRecipeName("roots:runestone_brick_from_chisel");
    recipes.removeByRecipeName("roots:runestone_brick");
    recipes.removeByRecipeName("roots:runestone_brick_alt");

    recipes.removeByRecipeName("minecraft:pillar_quartz_block");

    recipes.removeByRecipeName("astralsorcery:shaped/marble_bricks");
    recipes.removeByRecipeName("astralsorcery:shaped/marble_pillar");
    recipes.removeByRecipeName("astralsorcery:shaped/marble_arch");
    recipes.removeByRecipeName("astralsorcery:shaped/marble_chiseled");
    recipes.removeByRecipeName("astralsorcery:shaped/marble_engraved");
    recipes.removeByRecipeName("astralsorcery:shaped/marble_runed");

    recipes.removeByRecipeName("minecraft:polished_granite");
}

function itemRemove()
{
    //itemHelper.removeItem(<skyresources:blazepowderblock>);
}

if (!isInvalid)
{
    init();
}