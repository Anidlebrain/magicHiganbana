##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     游戏阶段 维度
##================================================
#priority 2010
#
import mods.zenstages.ZenStager;

var StageTheNether = ZenStager.getStage(stageTheNetherName);
var StageTheEnd = ZenStager.getStage(stageTheEndName);
var StageTwilightForest = ZenStager.getStage(stageTwilightForestName);
var StageDeepDark = ZenStager.getStage(stageDeepDarkName);
var StageSpectre = ZenStager.getStage(stageSpectreName);

StageTheNether.addDimension(-1);
StageTheEnd.addDimension(1);

StageDeepDark.addDimension(-11325);
StageSpectre.addDimension(58); 

StageTwilightForest.addDimension(-2);
StageTwilightForest.addDimension(-3);
StageTwilightForest.addDimension(-4);
