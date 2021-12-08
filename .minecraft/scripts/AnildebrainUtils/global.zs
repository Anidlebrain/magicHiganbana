##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     全局变量
##=================================================
#priority 4000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.AnildebrainUtils.BaseUtils;
import thaumcraft.aspect.CTAspectStack;
import mods.astralsorcery.Utils;
import scripts.AnildebrainUtils.messageUtils;

global ORGANIC_GREEN_DYE as IOreDictEntry = <ore:dyeGreen>;
global ORGANIC_BROWN_DYE as IOreDictEntry = <ore:dyeBrown>;
global ORGANIC_BLACK_DYE as IOreDictEntry = <ore:dyeBlack>;

global BLOOD_ORB as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}) | 
                  <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"});

global DYE_ORE as IOreDictEntry[] = [
    <ore:dyeWhite>,
    <ore:dyeOrange>,
    <ore:dyeMagenta>,
    <ore:dyeLightBlue>,
    <ore:dyeYellow>,
    <ore:dyeLime>,
    <ore:dyePink>,
    <ore:dyeGray>,
    <ore:dyeLightGray>,
    <ore:dyeCyan>,
    <ore:dyePurple>,
    <ore:dyeBlue>,
    <ore:dyeBrown>,
    <ore:dyeGreen>,
    <ore:dyeRed>,
    <ore:dyeBlack>
] as IOreDictEntry[];

global AS_CRYSTAL1 as IIngredient = Utils.getCrystalORIngredient(false, false);
global AS_CRYSTAL2 as IIngredient = Utils.getCrystalORIngredient(false, true);
global AS_CRYSTAL3 as IIngredient = Utils.getCrystalORIngredient(true, false);
global AS_CRYSTAL4 as IIngredient = Utils.getCrystalORIngredient(true, true);

global FAILEDPRODUCT as IItemStack = <contenttweaker:ashes>.withLore([
    messageUtils.getLoreMessage("failed.product.1"),
    messageUtils.getLoreMessage("failed.product.2")]);

//神秘时代 要素
global Aer as CTAspectStack = <aspect:aer>;
global Terra as CTAspectStack = <aspect:terra>;
global Ignis as CTAspectStack = <aspect:ignis>;
global Aqua as CTAspectStack = <aspect:aqua>;
global Ordo as CTAspectStack = <aspect:ordo>;
global Perditio as CTAspectStack = <aspect:perditio>;
global Vacuos as CTAspectStack = <aspect:vacuos>;
global Lux as CTAspectStack = <aspect:lux>;
global Alkimia as CTAspectStack = <aspect:alkimia>;
global Fabrico as CTAspectStack = <aspect:fabrico>;
global Praecantatio as CTAspectStack = <aspect:praecantatio>;
global Praemunio as CTAspectStack = <aspect:praemunio>;
global Thunder as CTAspectStack = <aspect:thunder>;


//阶段名称
global stageTheNetherName as string = BaseUtils.cleanName("TheNether");
global stageTheEndName as string = BaseUtils.cleanName("TheEnd");
global stageTwilightForestName as string = BaseUtils.cleanName("TwilightForest");
global stageDeepDarkName as string = BaseUtils.cleanName("DeepDark");
global stageSpectreName as string = BaseUtils.cleanName("Spectre");

global stageZeroName as string = BaseUtils.cleanName("initial");
global stageOneName as string = BaseUtils.cleanName("alchemy beginning");
global stageTwoName as string = BaseUtils.cleanName("Vitality appears");
global stageThreeName as string = BaseUtils.cleanName("life Sacrifice");
global stageFourName as string = BaseUtils.cleanName("industrial revolution");
global stageFiveName as string = BaseUtils.cleanName("Natural blessing");
global stageSixName as string = BaseUtils.cleanName("The age of mechanization");
global stageSevenName as string = BaseUtils.cleanName("Ender technology");
global stageEightName as string = BaseUtils.cleanName("Intelligent machinery");
global stageNineName as string = BaseUtils.cleanName("Looking at the starsc");
global stageTenName as string = BaseUtils.cleanName("The profound mystery of the world");
global stageElevenName as string = BaseUtils.cleanName("The sea of stars");
global stageTwelveName as string = BaseUtils.cleanName("Flowers bloom on the other side");

global stageDefaultName as string = BaseUtils.cleanName("Default");

//管道
global stagePipeName as string = BaseUtils.cleanName("Pipeline Science");

//环境科技
global ETName as string = BaseUtils.cleanName("Environmental Tech");