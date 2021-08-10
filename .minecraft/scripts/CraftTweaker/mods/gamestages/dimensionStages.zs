##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     游戏阶段 维度
##================================================
#priority 2010
#norun
import mods.zenstages.ZenStager;

var StageTheNether = ZenStager.getStage(stageTheNetherName);
var StageTheEnd = ZenStager.getStage(stageTheEndName);
var StageTwilightForest = ZenStager.getStage(stageTwilightForestName);
var StageDeepDark = ZenStager.getStage(stageDeepDarkName);
var StageSpectre = ZenStager.getStage(stageSpectreName);

StageTheNether.addDimension(-1);
StageTheEnd.addDimension(1);
StageTwilightForest.addDimension(7);
StageDeepDark.addDimension(-11325);
StageSpectre.addDimension(-3438008521); 

