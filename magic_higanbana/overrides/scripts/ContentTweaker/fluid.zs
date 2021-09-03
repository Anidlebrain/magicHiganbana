##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     流体增加
##=================================================
#loader contenttweaker

#priority 5000

import scripts.AnildebrainUtils.CotUtils;

//盐酸
//CotUtils.addFluid("HCL", 0xFFFACD, true);

//乙醚 化学灌注机 乙醇 + 硫酸 = 乙醚 + 水
CotUtils.addFluid("ether", 0xFCFCFC, false);

//无水乙醚  精炼 蒸馏 
CotUtils.addFluid("Anhydrous_ether", 0xF5F5F5, false);

//氢氧化钠  Na+H2O = NaOH + ...  化学反应室
CotUtils.addFluid("sodium_hydroxide", 0xF5F5F5, false);


//碘酒  海草 + 乙醇 溶解    碘酒 氧化 结晶 碘晶体
CotUtils.addFluid("iodine", 0x990033, false);

// 聚乙烯
//CotUtils.itemCreator("HOPE", 0xF5F5F5, false);

// 格氏试剂
CotUtils.addFluid("grignard_reagent", 0xF5F5F5, false);
