##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 工作台合成
##================================================
#modloaded higanbana
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
    RecipeBuilder.get("potter")
      .setShaped(
          inputPatternGet(["BAB", " B", "BBB"], {
              "A" : <roots:petals>,
              "B" : <embers:block_caminite_brick>}))
      .addOutput(<botania:altar>)
      .addTool(<ore:artisansAthame>, 7)
      .create();

    recipes.remove(<botania:altar:1>);
    RecipeBuilder.get("potter")
      .setShaped(
          inputPatternGet(["BAB", " B", "BBB"], {
              "A" : <roots:petals>,
              "B" : <botania:biomestonea:8>}))
      .addOutput(<botania:altar:1>)
      .addTool(<ore:artisansAthame>, 7)
      .create();
    
    recipes.remove(<botania:altar:2>);
    RecipeBuilder.get("potter")
      .setShaped(
          inputPatternGet(["BAB", " B", "BBB"], {
              "A" : <roots:petals>,
              "B" : <botania:biomestonea:9>}))
      .addOutput(<botania:altar:2>)
      .addTool(<ore:artisansAthame>, 7)
      .create();
    
    recipes.remove(<botania:altar:3>);
    RecipeBuilder.get("potter")
      .setShaped(
          inputPatternGet(["BAB", " B", "BBB"], {
              "A" : <roots:petals>,
              "B" : <botania:biomestonea:10>}))
      .addOutput(<botania:altar:3>)
      .addTool(<ore:artisansAthame>, 7)
      .create();
    
    recipes.remove(<botania:altar:4>);
    RecipeBuilder.get("potter")
      .setShaped(
          inputPatternGet(["BAB", " B", "BBB"], {
              "A" : <roots:petals>,
              "B" : <botania:biomestonea:3>}))
      .addOutput(<botania:altar:4>)
      .addTool(<ore:artisansAthame>, 7)
      .create();
    
    recipes.remove(<botania:altar:5>);
    RecipeBuilder.get("potter")
      .setShaped(
          inputPatternGet(["BAB", " B", "BBB"], {
              "A" : <roots:petals>,
              "B" : <botania:biomestonea:4>}))
      .addOutput(<botania:altar:5>)
      .addTool(<ore:artisansAthame>, 7)
      .create();
    
    recipes.remove(<botania:altar:6>);
    RecipeBuilder.get("potter")
      .setShaped(
          inputPatternGet(["BAB", " B", "BBB"], {
              "A" : <roots:petals>,
              "B" : <botania:biomestonea:5>}))
      .addOutput(<botania:altar:6>)
      .addTool(<ore:artisansAthame>, 7)
      .create();
    
    recipes.remove(<botania:altar:7>);
    RecipeBuilder.get("potter")
      .setShaped(
          inputPatternGet(["BAB", " B", "BBB"], {
              "A" : <roots:petals>,
              "B" : <botania:biomestonea:6>}))
      .addOutput(<botania:altar:7>)
      .addTool(<ore:artisansAthame>, 7)
      .create();
    
    recipes.remove(<botania:altar:8>);
    RecipeBuilder.get("potter")
      .setShaped(
          inputPatternGet(["BAB", " B", "BBB"], {
              "A" : <roots:petals>,
              "B" : <botania:biomestonea:7>}))
      .addOutput(<botania:altar:8>)
      .addTool(<ore:artisansAthame>, 7)
      .create();

    //烈焰网 => 烈焰棒
    recipes.removeByRecipeName("botania:conversions/blazeblock_deconstruct");

    //稀释魔力池
    recipes.removeByRecipeName("botania:pool_0");
    RecipeBuilder.get("mason")
      .setShaped([
        [<botania:livingrock>, null, <botania:livingrock>],
        [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]])
      .addOutput(<botania:pool:2>)
      .addTool(<ore:artisansChisel>, 3)
      .create();

    //魔力池
    recipes.removeByRecipeName("botania:pool_2");
    RecipeBuilder.get("mage")
      .setShaped([
        [<botania:livingrock>, <ore:manaDiamond>, <botania:livingrock>],
        [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]])
      .addOutput(<botania:pool>)
      .addTool(<ore:artisansGrimoire>, 8)
      .create();
    RecipeBuilder.get("mage")
      .setShapeless([<botania:pool:2>, <botania:manaresource:2>])
      .addTool(<ore:artisansGrimoire>, 8)
      .addOutput(<botania:pool>)
      .create();

    //魔力发射器
    recipes.remove(<botania:spreader>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
        [<randomthings:runedust:12>, <minecraft:dispenser>, <randomthings:runedust:12>],
        [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]])
      .addOutput(<botania:spreader>)
      .addTool(<ore:artisansAthame>, 2)
      .create();

    //炼金催化器
    recipes.remove(<botania:alchemycatalyst>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<ore:livingrock>, <minecraft:noteblock>, <ore:livingrock>],
        [<minecraft:brewing_stand>, <botania:manaresource:23>, <minecraft:brewing_stand>],
        [<ore:livingrock>, <contenttweaker:alchemical_plate>, <ore:livingrock>]])
      .addOutput(<botania:alchemycatalyst>)
      .addTool(<ore:artisansGrimoire>, 3)
      .create();

    //符文祭坛
    recipes.remove(<botania:runealtar>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
        [<botania:livingrock>, <bloodmagic:sigil_elemental_affinity>, <botania:livingrock>]])
      .addOutput(<botania:runealtar>)
      .addTool(<ore:artisansAthame>, 4)
      .create();

    //泰拉凝聚板
    recipes.remove(<botania:terraplate>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<ore:blockCobalt>, <ore:blockCobalt>, <ore:blockCobalt>],
        [<botania:rune>, <ore:ingotManasteel>, <botania:rune:1>],
        [<botania:rune:8>, <botania:rune:2>, <botania:rune:3>]])
      .addTool(<ore:artisansGrimoire>, 5)
      .addOutput(<botania:terraplate>)
      .create();

    //魔力透镜
    recipes.remove(<botania:lens>);
    RecipeBuilder.get("mage")
      .setShaped([
        [null, <botania:manaresource>],
        [<botania:manaresource>, <botania:managlasspane>, <botania:manaresource>],
        [null, <botania:manaresource>]])
      .addTool(<ore:artisansAthame>, 6)
      .addOutput(<botania:lens>)
      .create();
    
    //随想之茧
    recipes.remove(<botania:cocoon>);
    RecipeBuilder.get("mage")
      .setShaped([
        [<randomthings:ingredient:12>, <randomthings:ingredient:12>, <randomthings:ingredient:12>],
        [BLOOD_ORB, <botania:manaresource:22>, BLOOD_ORB],
        [<randomthings:ingredient:12>, <botania:manaresource:8>, <randomthings:ingredient:12>]])
      .addTool(<ore:artisansGrimoire>, 2)
      .addOutput(<botania:cocoon>)
      .create();
    
    //时钟之眼
    recipes.remove(<botania:cosmetic:17>);
    RecipeBuilder.get("mage")
      .setShaped([
        [null, <botania:manaresource:23>],
        [<botania:manaresource:23>, <botania:manaresource:16>, <botania:manaresource:23>],
        [null, <botania:manaresource:23>]])
      .addTool(<ore:artisansAthame>, 3)
      .addOutput(<botania:cosmetic:17>)
      .create();

    //魔力透镜 转变
    recipesUtils.addShapeless(<gugu-utils:lenstransform>, [<botania:lens>, <ore:ingotGaiasteel>, <ore:ingotGaiasteel>]);

    //魔力透镜 超频
    recipesUtils.addShapeless(<gugu-utils:lensoverclocking>, [<botania:lens>, <botanicadds:rune_energy>]);

    //恶魔南瓜头
    recipes.remove(<botania:felpumpkin>);
    RecipeBuilder.get("farmer")
      .setShaped([
        [null, <ore:string>],
        [<ore:bone>, <minecraft:pumpkin>, <minecraft:rotten_flesh>],
        [null, <ore:gunpowder>]])
      .addTool(<artisanworktables:artisans_razor_wood>, 1)
      .addOutput(<botania:felpumpkin>)
      .setExtraOutputOne(<minecraft:pumpkin_seeds>, 0.8)
      .create();
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

    //杵和臼
    itemHelper.removeItem(<botania:pestleandmortar>);
}

if (!isInvalid)
{
    init();
}