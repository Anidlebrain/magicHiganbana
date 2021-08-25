##===============================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     工具提示
##===============================================
import crafttweaker.item.IItemStack;
#priority 2000


//碗
<item:minecraft:bowl>.addTooltip("这是一个神奇的碗，丢入水里能够吸收水。");

//生存者钓竿
<skyresources:survivalistfishingrod>.addTooltip("垂钓生存必须物，方名为生存者钓竿！");

//蓝图
//刷石机
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:stone_making_machine_20200913"})
.addTooltip("这只是一个示范，忽略底下的控制器，搭一个类似的结构。");
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:stone_making_machine_20200913"})
.addTooltip("液态水晶和岩浆石会自动产生原石。");

//木质框架
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:wood_combustionheater_machine_20200913"})
.addTooltip("这只是一个示范，忽略底下的控制器，搭一个类似的结构。");
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:wood_combustionheater_machine_20200913"})
.addTooltip("木质框架里面放入加热器");
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:wood_combustionheater_machine_20200913"})
.addTooltip("加热器里面放入可燃物，往中间（加热器上面空的位置）在HU足够的时候丢入物品，按下按钮即可合成。");
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:wood_combustionheater_machine_20200913"})
.addTooltip("注：可以按比例合成，只要你的HU足够。");

//知识传承
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:knowledge_inheritance"})
.addTooltip("冰天雪地的荒芜，灾后的重建，但愿雨后能看见" ~ format.gold("彩虹") ~ ";");
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:knowledge_inheritance"})
.addTooltip("世代传承的意志，时代的变迁，但愿文明能一直延续。");

/*
<bloodmagic:slate:0>.clearTooltip();
<bloodmagic:slate:1>.clearTooltip();
<bloodmagic:slate:2>.clearTooltip();
<bloodmagic:slate:3>.clearTooltip();
<bloodmagic:slate:4>.clearTooltip();
*/