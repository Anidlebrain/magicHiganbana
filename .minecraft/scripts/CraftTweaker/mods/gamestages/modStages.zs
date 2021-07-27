##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     游戏阶段 模组阶段        ##
##################################################
#priority 2010
import mods.zenstages.ZenStager;

var StageZero = ZenStager.getStage(stageZeroName);
var StageOne = ZenStager.getStage(stageOneName);
var StageTwo = ZenStager.getStage(stageTwoName);
var StageThree = ZenStager.getStage(stageThreeName);
var StageFour = ZenStager.getStage(stageFourName);
var StageFive = ZenStager.getStage(stageFiveName);
var StageSix = ZenStager.getStage(stageSixName);

var StageSeven = ZenStager.getStage(stageSevenName);
var StageEight = ZenStager.getStage(stageEightName);
var StageNine = ZenStager.getStage(stageNineName);
var StageTen = ZenStager.getStage(stageTenName);
var StageEleven = ZenStager.getStage(stageElevenName);
var StageTwelve = ZenStager.getStage(stageTwelveName);

var StageDefault = ZenStager.getStage(stageDefaultName);

StageZero.addModId("skyresources");
StageZero.addModId("minecraft");
StageZero.addModId("tconstruct");
StageZero.addModId("fenceoverhaul");
StageZero.addModId("ftbquests");
StageZero.addModId("itemfilters");
StageZero.addModId("progressivebosses");
StageZero.addModId("researchtable");

StageOne.addModId("base");
StageOne.addModId("baubles");
StageOne.addModId("botania");
StageOne.addModId("forestry");
StageOne.addModId("immersiveengineering");
StageOne.addModId("roots");
StageOne.addModId("mechanics");
StageOne.addModId("mysticalworld");
StageOne.addModId("patchouli");
StageOne.addModId("tcomplement");

StageOne.addModId("akashictome");
StageOne.addModId("farmingforblockheads");
StageOne.addModId("flopper");
StageOne.addModId("harvestcraft");
StageOne.addModId("immersivepetroleum");
StageOne.addModId("xreliquary");


StageTwo.addModId("chisel");
StageTwo.addModId("randomthings");

StageTwo.addModId("elevatorid");


StageThree.addModId("apotheosis");
StageThree.addModId("bloodmagic");


StageFour.addModId("techreborn");
StageFour.addModId("modularmachinery");
StageFour.addModId("prodigytech");
StageFour.addModId("tconevo");

//20210615删除mod
//StageFour.addModId("modularmagic");
//StageFour.addModId("modulardiversity");


StageFive.addModId("naturesaura");
StageFive.addModId("twilightforest");


StageSix.addModId("ae2stuff");
StageSix.addModId("appliedenergistics2");
StageSix.addModId("extendedcrafting");
StageSix.addModId("woot");

StageSix.addModId("ae2fc");
StageSix.addModId("extracells");
StageSix.addModId("packagedauto");
StageSix.addModId("packagedavaritia");
StageSix.addModId("packagedexcrafting");
StageSix.addModId("packagedexcrafting");
StageSix.addModId("threng");


//StageSeven.addModId("deepmoblearning");
StageSeven.addModId("enderio");
StageSeven.addModId("magicbees");
StageSeven.addModId("taiga");
StageSeven.addModId("thermalexpansion");
StageSeven.addModId("thermalfoundation");


StageEight.addModId("compactmachines3");
StageEight.addModId("extrautils2");
StageEight.addModId("mekanism");
StageEight.addModId("pneumaticcraft");

StageEight.addModId("thermaldynamics");


StageNine.addModId("astralsorcery");


StageTen.addModId("thaumcraft");

StageTen.addModId("thaumicwonders");


StageEleven.addModId("galacticraftcore");


StageTwelve.addModId("avaritia");


/*
单独加
avaritiatweaks
betterbuilderswands
botania_tweaks
botanianeedsit
deepmoblearningbm
guideapi
contenttweaker

没有物品
conarm
magicfeather

再考虑
grimoireofgaia
forge

物品较少 无影响
mcjtylib_ng
*/