##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     凿子
##================================================

#priority 2000
import mods.chisel.Carving;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.addChiselByOre;

//石砖 移除 苔石砖
Carving.removeVariation("stonebrick", <minecraft:stonebrick:1>);

//焦煤块 添加 沉浸工程的 
//Carving.addVariation("blockCoalCoke", <immersiveengineering:stone_decoration:3>);

//玻璃 添加 末影接口的纯净玻璃 
//Carving.addVariation("glass", <enderio:block_fused_glass>);

//移除 根源魔法 元素土
Carving.removeGroup("rootsRunicSoilTypes");

//阿滋勒赫石砖
addChiselByOre(<ore:custombrick>);

//陨石块
addChiselByOre(<ore:skyStoneBlock>);

//烟熏石英
addChiselByOre(<ore:blockQuartzDark>);

//魔力石英
addChiselByOre(<ore:blockQuartzMana>);

//烈焰石英
addChiselByOre(<ore:blockQuartzBlaze>);

//熏香石英
addChiselByOre(<ore:blockQuartzLavender>);

//红色石英
addChiselByOre(<ore:blockQuartzRed>);

//金黄石英
addChiselByOre(<ore:blockQuartzSunny>);

//精灵石英
addChiselByOre(<ore:blockQuartzElven>);

//活石
addChiselByOre(<ore:livingrock>);

//活木
addChiselByOre(<ore:livingwood>);

//以太石
addChiselByOre(<ore:blockAethium>);

//艾洛蒂石
addChiselByOre(<ore:blockErodium>);

//艾恩尼石
addChiselByOre(<ore:blockIonite>);

//凯罗尼石
addChiselByOre(<ore:blockKyronite>);

//莱泽尔石
addChiselByOre(<ore:blockLitherite>);

//蓝丝黛尔石
addChiselByOre(<ore:blockLonsdaleite>);

//普雷蒂石
addChiselByOre(<ore:blockPladium>);


