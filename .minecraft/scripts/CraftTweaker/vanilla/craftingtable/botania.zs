##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 工作台合成
##================================================
#modloaded higanbanautils
#priority 2000

import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.ModLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;
import crafttweaker.item.IItemStack;

function init()
{
    recipesInit();
    itemRemove();
}

function recipesInit()
{
    //花药台
    recipes.remove(<botania:altar>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<prodigytech:ash_bricks>, <roots:petals>, <prodigytech:ash_bricks>],
        [null, <embers:block_caminite_brick>, null],
        [<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>]])
      .addOutput(<botania:altar>)
      .create();

    //杵和臼
    recipes.remove(<botania:pestleandmortar>);

    //烈焰网 => 烈焰棒
    recipes.removeByRecipeName("botania:conversions/blazeblock_deconstruct");

    //魔力池
    recipes.removeByRecipeName("botania:pool_0");

    //稀释魔力池
    recipes.removeByRecipeName("botania:pool_2");
    RecipeBuilder.get("mage")
      .setShaped([
        [null, null, null],
        [<botania:livingrock>, null, <botania:livingrock>],
        [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]])
      .addOutput(<botania:pool:2>)
      .create();

    //魔力发射器
    recipes.remove(<botania:spreader>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
        [<randomthings:runedust:12>, <minecraft:dispenser>, <randomthings:runedust:12>],
        [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]])
      .addOutput(<botania:spreader>)
      .create();

    //炼金催化器
    recipes.remove(<botania:alchemycatalyst>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<ore:livingrock>, <minecraft:noteblock>, <ore:livingrock>],
        [<minecraft:brewing_stand>, <botania:manaresource:23>, <minecraft:brewing_stand>],
        [<ore:livingrock>, <contenttweaker:alchemical_plate>, <ore:livingrock>]])
      .addOutput(<botania:alchemycatalyst>)
      .create();

    //符文祭坛
    recipes.remove(<botania:runealtar>);
    RecipeBuilder.get("mage")
      .setShaped([
        [null, null, null],
        [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
        [<botania:livingrock>, <bloodmagic:sigil_elemental_affinity>, <botania:livingrock>]])
      .addOutput(<botania:runealtar>)
      .create();

    //泰拉凝聚板
    recipes.remove(<botania:terraplate>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<ore:blockCobalt>, <ore:blockCobalt>, <ore:blockCobalt>],
        [<botania:rune>, <ore:ingotManasteel>, <botania:rune:1>],
        [<botania:rune:8>, <botania:rune:2>, <botania:rune:3>]])
      .addTool(<ore:artisansGrimoire>, 1)
      .addOutput(<botania:terraplate>)
      .create();

    //魔力透镜
    recipes.remove(<botania:lens>);
    RecipeBuilder.get("mage")
      .setShaped([
        [null, <botania:manaresource>, null],
        [<botania:manaresource>, <botania:managlasspane>, <botania:manaresource>],
        [null, <botania:manaresource>, null]])
      .addTool(<ore:artisansShears>, 1)
      .addOutput(<botania:lens>)
      .create();
    
    //随想之茧
    recipes.remove(<botania:cocoon>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<randomthings:ingredient:12>, <randomthings:ingredient:12>, <randomthings:ingredient:12>],
        [BLOOD_ORB, <botania:manaresource:22>, BLOOD_ORB],
        [<randomthings:ingredient:12>, <botania:manaresource:8>, <randomthings:ingredient:12>]])
      .addTool(<ore:artisansGrimoire>, 1)
      .addOutput(<botania:cocoon>)
      .create();
    
    //时钟之眼
    recipes.remove(<botania:cosmetic:17>);
    RecipeBuilder.get("mage")
      .setShaped([
        [null, <botania:manaresource:23>, null],
        [<botania:manaresource:23>, <botania:manaresource:16>, <botania:manaresource:23>],
        [null, <botania:manaresource:23>, null]])
      .addTool(<ore:artisansGrimoire>, 3)
      .addOutput(<botania:cosmetic:17>)
      .create();

    //魔力透镜 转变
    recipesUtils.addShapeless(<gugu-utils:lenstransform>, [<botania:lens>, <ore:ingotGaiasteel>, <ore:ingotGaiasteel>]);

    //魔力透镜 超频
    recipesUtils.addShapeless(<gugu-utils:lensoverclocking>, [<botania:lens>, <botanicadds:rune_energy>]);
}

function itemRemove()
{
    var items as IItemStack[] = [
        <botania:quartztypeblaze:3>,
        <botania:quartztypeblaze:4>,
        <botania:quartztypedark:3>,
        <botania:quartztypedark:4>,
        <botania:quartztypeelf:3>,
        <botania:quartztypeelf:4>,
        <botania:quartztypelavender:3>,
        <botania:quartztypelavender:4>,
        <botania:quartztypemana:3>,
        <botania:quartztypemana:4>,
        <botania:quartztypered:3>,
        <botania:quartztypered:4>,
        <botania:quartztypesunny:3>,
        <botania:quartztypesunny:4>,
    ];

    for item in items
    {
        itemHelper.removeItemAndOre(item);
    }
}

if (!isInvalid)
{
    init();
}