##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     研究台
##================================================
#norun
import mods.ResearchTable;
import ResearchTable.Category;
import ResearchTable.Builder;
#priority 1998

var cateadvanced = ResearchTable.addCategory(<minecraft:grass>, "阶段知识传承(基本上对应任务章节)");
var catemagic = ResearchTable.addCategory(<minecraft:grass>, "魔法知识研究");
var catetechnology = ResearchTable.addCategory(<minecraft:grass>, "科技知识研究");
var catedimension = ResearchTable.addCategory(<minecraft:grass>, "维度探索");

//阶段
ResearchTable.builder("获取失去的记忆", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取失去的记忆")
    .setDescription("获取自己遗失的记忆\n注1:有些配方JEI上显示能合成，但不能合成的情况，可能是前置的条件不够，或者合成的地点不对。")
    .setRewardStages(stageZeroName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .build();

ResearchTable.builder("知识传承一", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取一阶的知识传承")
    .setDescription("获取一阶的知识传承。\n")
    .addCondition([<skyresources:fleshysnownugget>, <minecraft:crafting_table>])
    .setRewardStages(stageOneName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "获取失去的记忆")
    .build();

ResearchTable.builder("知识传承二", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取二阶的知识传承")
    .setDescription("获取二阶的知识传承。\n")
    .addCondition([<minecraft:stone> * 64, <liquid:water> * 10000])
    .setRewardStages(stageTwoName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承一")
    .build();

ResearchTable.builder("知识传承三", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取三阶的知识传承")
    .setDescription("获取三阶的知识传承。\n")
    .addCondition([<minecraft:iron_ingot> * 4, <minecraft:gold_ingot> * 4, <ore:ingotCopper> * 4])
    .setRewardStages(stageThreeName)
    .setRewardItems([<minecraft:iron_ingot> * 4])
    .setOptionalResearches(1, "知识传承二")
    .build();

ResearchTable.builder("知识传承四", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取四阶的知识传承")
    .setDescription("获取四阶的知识传承。\n")
    .addCondition([<randomthings:naturecore>])
    .setRewardStages(stageFourName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承三")
    .build();

ResearchTable.builder("知识传承五", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取五阶的知识传承")
    .setDescription("获取五阶的知识传承。\n")
    .addCondition([<skyresources:baseitemcomponent:1>, <ore:leafZorra> * 64])
    .setRewardStages(stageFiveName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承四")
    .build();

ResearchTable.builder("知识传承六", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取六阶的知识传承")
    .setDescription("获取六阶的知识传承。\n")
    .addCondition([<botania:dreamwood:5> * 16])
    .setRewardStages(stageSixName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承五")
    .build();

ResearchTable.builder("知识传承七", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取七阶的知识传承")
    .setDescription("获取七阶的知识传承。\n")
    .addCondition([<randomthings:spectrecoil_genesis>])
    .setRewardStages(stageSevenName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承六")
    .build();

ResearchTable.builder("知识传承八", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取八阶的知识传承")
    .setDescription("获取八阶的知识传承。\n")
    .addCondition([<randomthings:spectrecoil_genesis>])
    .setRewardStages(stageEightName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承七")
    .build();

ResearchTable.builder("知识传承九", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取九阶的知识传承")
    .setDescription("获取九阶的知识传承。\n")
    .addCondition([<randomthings:spectrecoil_genesis>])
    .setRewardStages(stageNineName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承八")
    .build();

ResearchTable.builder("知识传承十", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取十阶的知识传承")
    .setDescription("获取十阶的知识传承。\n")
    .addCondition([<randomthings:spectrecoil_genesis>])
    .setRewardStages(stageTenName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承九")
    .build();

ResearchTable.builder("知识传承十一", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取十一阶的知识传承")
    .setDescription("获取十一阶的知识传承。\n")
    .addCondition([<randomthings:spectrecoil_genesis>])
    .setRewardStages(stageElevenName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承十")
    .build();

ResearchTable.builder("知识传承十二", cateadvanced)
    .setIcons(<minecraft:grass>)
    .setTitle("获取十二阶的知识传承")
    .setDescription("获取十二阶的知识传承。\n")
    .addCondition([<randomthings:spectrecoil_genesis>])
    .setRewardStages(stageTwelveName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承十一")
    .build();

//维度
ResearchTable.builder("地狱", catedimension)
    .setIcons(<minecraft:grass>)
    .setTitle("探索地狱维度")
    .setDescription("探索地狱在虚空中的坐标，以便搭建地狱门传送地狱。\n"
     ~ "地狱因为被破坏，只剩下无尽的虚空，天空中漂浮这烈焰人、恶魂等怪物，若你在黑暗的地方搭建一个平台，可能会有意想不到的生物生成\n"
     ~ "地狱传送门材料单：若干黑曜石。\n")
    .addCondition([<ore:ingotIron> * 8, <liquid:lava> * 2000])
    .setRewardStages(stageTheNetherName)
    .setRewardItems([<minecraft:obsidian> * 4])
    .setOptionalResearches(1, "知识传承一")
    .build();

ResearchTable.builder("末地", catedimension)
    .setIcons(<minecraft:grass>)
    .setTitle("探索末地维度")
    .setDescription("探索末地在虚空中的坐标，以便传送末地。\n"
     ~ "末路之地是一个无尽的虚空，其中仅有一个站立的平台，和黑曜石柱（带有末影水晶）组成的维度。这个维度拥有大量的末影人，比主世界生成得更加频繁，以及还有一条寂寞的末影龙————末路之地的 Boss。\n"
     ~ "这个维度拥有大量的末影人，比主世界生成得更加频繁，以及还有一条寂寞的末影龙——末路之地的 Boss。\n"
     ~ "末地传送门材料单：1个末地传送门核心、4个金块、4个钻石块、4个荧石、8个末地石砖、16个暗物质块。\n"
     ~ "改良末地传送门：在末地传送门的基础上，增加4个蠹虫传送干扰器、4个末地烛、16个竖纹紫珀块、24个亮物质块。\n"
     ~ "注1：由于维度混乱，末地除了末影生物，还乱入了一些其他维度的生物。\n")
    .addCondition([<ore:ingotIron> * 8, <liquid:lava> * 2000])
    .setNoMaxCount()
    .setRewardStages(stageTheEndName)
    .setRewardItems([<skyresources:endportalcore>])
    .setOptionalResearches(1, "知识传承二")
    .build();

/*
ResearchTable.builder("暮色森林", catedimension)
    .setIcons(<minecraft:grass>)
    .setTitle("探索末地维度")
    .setDescription("探索暮色森林在虚空中的坐标，以便传送暮色森林。暮色森林是目前探索到的唯一的有完整生物群系的维度。\n"
     ~ "这个维度拥有各种生物和大量强大的boss。\n"
     ~ "末地传送门材料单：12朵花和2×2的水以及进入暮色的传送钥匙。\n"
     ~ "注1：由于传送的限制，暮色传送门无法从暮色回到主世界。\n"
     ~ "注2：由于维度混乱，暮色除了原本的属于自己维度的生物，还乱入了一些其他维度的生物。\n")
    .addCondition([<ore:ingotIron> * 8, <liquid:lava> * 2000])
    .setNoMaxCount()
    .setRewardStages(stageTwilightForestName)
    .setRewardItems([<randomthings:spectrekey>])
    .setOptionalResearches(1, "知识传承五")
    .build();
*/

ResearchTable.builder("暗黑世界", catedimension)
    .setIcons(<minecraft:grass>)
    .setTitle("探索暗黑世界")
    .setDescription("探索暗黑世界在虚空中的坐标，以便传送暗黑世界。暗黑世界是一个地下的世界，里面有大量的矿物和凶残的怪物。\n"
     ~ "在定位了暗黑世界的坐标后，暗黑世界可以通过漆黑传送门进入的。\n")
    .addCondition([<ore:ingotIron> * 8, <liquid:lava> * 2000])
    .setNoMaxCount()
    .setRewardStages(stageDeepDarkName)
    .setRewardItems([<extrautils2:teleporter>])
    .setOptionalResearches(1, "知识传承五")
    .build();

/*
// use `/researchtable @p all 0` to clear all progress

var cat = ResearchTable.addCategory(<minecraft:grass>, "hello");
var cat2 = ResearchTable.addCategory(<minecraft:stone>);

ResearchTable.builder("testResearch1", cat) // The second parameter has no use currently
  .setIcons(<minecraft:grass>)
  .setTitle("Alchemy") // I18n support: use language key
  .setDescription("Input your description")
  .addCondition(<ore:ingotIron> * 8, <liquid:lava> * 2000)
  .setRewardStages("stage")
  .setRewardCommands("/say \"wow, @s has found a gold!\"")
  .setRewardItems(<minecraft:gold_ingot>, <minecraft:gold_nugget>)
//.setNoMaxCount()
  .build();

ResearchTable.builder("testResearch2", cat2)
  .setTitle("Energetic Wool loooooooong")
  .setIcons(<ore:plankWood>)
  .addCondition(<minecraft:wool:32767>, 2048, "Any Wool") // language key is better
  .addEnergyCondition(123456)
  .setMaxCount(2) // How many times can a player do this research?
  .build();

ResearchTable.builder("testResearch3", cat2)
  .setTitle("Produce Seller")
  .setIcons(<minecraft:bread>)
  .setRequiredResearches("testResearch1")
//.setRequiredStages("stage", "stageYouWillNeverGet")
//.setOptionalStages(2, "stage", "stage2", "stage3")
//.setOptionalResearches(1, "testResearch1", "testResearch2", "testResearch3")
  .addCondition(<minecraft:apple> * 2147483647)
  .addCondition(<minecraft:wheat> * 2147483647)
  .addCondition(<minecraft:wheat_seeds> * 2147483647)
  // CraftTweaker cannot handle item size more than Integer.MAX_VALUE, so here is another method
  .addCondition(<minecraft:carrot>, 9223372036854775807)
  .addCondition(<minecraft:potato>, 9223372036854775807)
  .addCondition(<minecraft:egg>, 9223372036854775807)
  .build();

// ItemStages Integration
mods.ItemStages.addItemStage("one", <minecraft:wool:5>);

// Scoreboard
// Run this before using:
// /scoreboard objectives add points dummy
// /scoreboard objectives setdisplay sidebar points
// /scoreboard players add @p points 1

ResearchTable.builder("testResearch4", cat)
  .setTitle("Scoreboard Test")
  .setIcons(<minecraft:command_block>)
  .setRequiredScore("points", "your.language.key", 1, 3) // inclusive
  .setTriggerCommands("/scoreboard players remove @s points 1")
  .build();

ResearchTable.scoreIndicator("points: %d", "points");

// Reskillable Integration
ResearchTable.builder("testResearch5", cat)
  .setTitle("Reskillable Test")
  .setIcons(<minecraft:command_block>)
  .setRequiredSkill("reskillable.building", 3)
  .setRewardSkill("reskillable.building")
  .build();

// Grand Economy Integration
ResearchTable.builder("testResearch6", cat)
  .setTitle("Click for Money")
  .setIcons(<minecraft:emerald>)
//  .setRequiredMoneyGE(10000)
//  .setTriggerMoneyGE(-9999)
  .setNoMaxCount()
//  .setRewardMoneyGE(10000)
  .build();
*/