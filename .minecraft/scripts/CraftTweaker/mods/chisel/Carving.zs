##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     凿子
##================================================
#modloaded higanbana
#priority 2000

import mods.chisel.Carving;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.addChiselByOre;

//石砖 移除 苔石砖
//Carving.removeVariation("stonebrick", <minecraft:stonebrick:1>);

//移除 根源魔法 元素土
Carving.removeGroup("rootsRunicSoilTypes");

//雷石 添加 雷石台阶
//Carving.addVariation("lightningcraft.chisel.thunder", <lightningcraft:slab_block_double>);

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


