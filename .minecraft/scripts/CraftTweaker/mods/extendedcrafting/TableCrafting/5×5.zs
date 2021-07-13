##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     合成拓展 5×5 合成        ##
##################################################

#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;

//高级合成催化剂
recipes.remove(<extendedcrafting:material:9>);
recipesUtils.makeExtendedTable5(
    <extendedcrafting:material:9>,
    [
        "  A  ",
        " ABA ",
        "ABCBA",
        " ABA ",
        "  A  ",
    ],
    {
        A : <extendedcrafting:material:15>,
        B : <extendedcrafting:material:8>,
        C : <extendedcrafting:material:14>
    }
);

//高级合成组件
recipes.remove(<extendedcrafting:material:15>);
recipesUtils.makeExtendedTable5(
    <extendedcrafting:material:15>,
    [
        "     ",
        "AABA ",
        "BBCB ",
        "AABA ",
        "AABA ",
    ],
    {
        A : <extendedcrafting:material:2>,
        B : <ore:plateGold>,
        C : <extendedcrafting:material:7>
    }
);


//供桌
recipes.remove(<naturesaura:offering_table>);
mods.extendedcrafting.TableCrafting.addShaped(0, <naturesaura:offering_table>, [
	[<ore:leather>, <naturesaura:token_anger>, <naturesaura:token_sorrow>, <naturesaura:token_terror>, <ore:leather>], 
	[null, <naturesaura:infused_stone>, <naturesaura:token_fear>, <naturesaura:infused_stone>, null], 
	[<ore:elvenPixieDust>, null, <ore:runeManaB>, null, <ore:elvenPixieDust>], 
	[null, <naturesaura:infused_stone>, <naturesaura:infused_iron>, <naturesaura:infused_stone>, null], 
	[<naturesaura:infused_stone>, <naturesaura:infused_iron>, <ore:logWood>, <naturesaura:infused_iron>, <naturesaura:infused_stone>]
]);

//福鲁伊克斯逻辑单元
recipes.remove(<threng:material:4>);
mods.extendedcrafting.TableCrafting.addShaped(0, <threng:material:4>, [
	[null, <ore:ingotFluixSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotFluixSteel>, null], 
	[null, <threng:material:1>, <appliedenergistics2:material:23>, <threng:material:1>, null], 
	[null, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:24>, <appliedenergistics2:quartz_glass>, null], 
	[null, <threng:material:1>, <appliedenergistics2:material:22>, <threng:material:1>, null], 
	[null, <ore:ingotFluixSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotFluixSteel>, null]
]);

//1级工厂拱顶石
recipes.remove(<woot:structure:6>);
mods.extendedcrafting.TableCrafting.addShaped(0, <woot:structure:6>, [
	[<woot:shard:2>, null, <woot:factorybase>, null, <woot:shard:2>], 
	[null, null, <woot:factorycore:6>, null, null], 
	[<woot:factorybase>, <woot:factorycore:6>, <ore:itemSkull>, <woot:factorycore:6>, <woot:factorybase>], 
	[null, null, <woot:factorycore:6>, null, null], 
	[<woot:shard:2>, null, <woot:factorybase>, null, <woot:shard:2>]
]);

//工厂升级基座
recipes.remove(<woot:structure:5>);
mods.extendedcrafting.TableCrafting.addShaped(0, <woot:structure:5>, [
	[<ore:ingotFluixSteel>, <ore:ingotFluixSteel>, <ore:ingotFluixSteel>, <ore:ingotFluixSteel>, <ore:ingotFluixSteel>], 
	[<ore:ingotFluixSteel>, null, <appliedenergistics2:material:23>, null, <ore:ingotFluixSteel>], 
	[<ore:ingotFluixSteel>, <appliedenergistics2:material:22>, <woot:factorycore>, <appliedenergistics2:material:24>, <ore:ingotFluixSteel>], 
	[<ore:ingotFluixSteel>, null, <threng:material:6>, null, <ore:ingotFluixSteel>], 
	[<ore:ingotFluixSteel>, <ore:ingotFluixSteel>, <ore:ingotFluixSteel>, <ore:ingotFluixSteel>, <ore:ingotFluixSteel>]
]);

//基础机械框架
recipes.remove(<techreborn:machine_frame>);
recipesUtils.makeExtendedTable5(
    <techreborn:machine_frame>,
    [
        "AAAAA",
        "ABBBA",
        "AB BA",
        "ABBBA",
        "AAAAA",
    ],
    {
        A : <ore:plateRefinedIron>,
        B : <ore:plateTin>
    }
);

//进阶机械框架
recipes.remove(<techreborn:machine_frame:1>);
mods.extendedcrafting.TableCrafting.addShaped(0, <techreborn:machine_frame:1>, [
	[<ore:plateCarbon>, <ore:plateLead>, null, <ore:plateSteel>, <ore:plateCarbon>], 
	[<ore:plateSteel>, <ore:plateAdvancedAlloy>, null, <ore:plateAdvancedAlloy>, <ore:plateLead>], 
	[null, null, <ore:machineBlockBasic>, null, null], 
	[<ore:plateLead>, <ore:plateAdvancedAlloy>, null, <ore:plateAdvancedAlloy>, <ore:plateSteel>], 
	[<ore:plateCarbon>, <ore:plateSteel>, null, <ore:plateLead>, <ore:plateCarbon>]
]);

recipes.remove(<techreborn:machine_frame:2>);
mods.extendedcrafting.TableCrafting.addShaped(0, <techreborn:machine_frame:2>, [
	[null, <ore:plateiridiumAlloy>, <ore:platechrome>, <ore:plateiridiumAlloy>, null], 
	[<ore:platePlatinum>, null, <ore:plateTitanium>, null, <ore:platePlatinum>], 
	[<ore:platechrome>, <ore:plateTitanium>, <ore:machineBlockAdvanced>, <ore:plateTitanium>, <ore:platechrome>], 
	[<ore:platePlatinum>, null, <ore:plateTitanium>, null, <ore:platePlatinum>], 
	[null, <ore:plateiridiumAlloy>, <ore:platechrome>, <ore:plateiridiumAlloy>, null]
]);

//基础机械外壳
recipes.remove(<techreborn:machine_casing>);
mods.extendedcrafting.TableCrafting.addShaped(0, <techreborn:machine_casing>, [
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>], 
	[null, <ore:circuitBasic>, <appliedenergistics2:material:18>, <ore:circuitBasic>, null], 
	[<ore:circuitBasic>, <appliedenergistics2:material:16>, <ore:machineBlockBasic>, <appliedenergistics2:material:16>, <ore:circuitBasic>], 
	[null, <ore:circuitBasic>, <appliedenergistics2:material:17>, <ore:circuitBasic>, null], 
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>]
]);

//进阶机械外壳
recipes.remove(<techreborn:machine_casing:1>);
mods.extendedcrafting.TableCrafting.addShaped(0, <techreborn:machine_casing:1>, [
	[<ore:platemagnalium>, <ore:platemagnalium>, <ore:platemagnalium>, <ore:platemagnalium>, <ore:platemagnalium>], 
	[null, <ore:circuitAdvanced>, <threng:material:6>, <ore:circuitAdvanced>, null], 
	[<ore:circuitAdvanced>, <threng:material:6>, <ore:machineBlockAdvanced>, <threng:material:6>, <ore:circuitAdvanced>], 
	[null, <ore:circuitAdvanced>, <threng:material:6>, <ore:circuitAdvanced>, null], 
	[<ore:platemagnalium>, <ore:platemagnalium>, <ore:platemagnalium>, <ore:platemagnalium>, <ore:platemagnalium>]
]);

//进阶机械外壳
recipes.remove(<techreborn:machine_casing:2>);
mods.extendedcrafting.TableCrafting.addShaped(0, <techreborn:machine_casing:2>, [
	[<ore:platechrome>, <ore:platechrome>, <ore:platechrome>, <ore:platechrome>, <ore:platechrome>], 
	[null, <ore:circuitElite>, <threng:material:14>, <ore:circuitElite>, null], 
	[<ore:circuitElite>, <threng:material:14>, <ore:machineBlockHighlyAdvanced>, <threng:material:14>, <ore:circuitElite>], 
	[null, <ore:circuitElite>, <threng:material:14>, <ore:circuitElite>, null], 
	[<ore:platechrome>, <ore:platechrome>, <ore:platechrome>, <ore:platechrome>, <ore:platechrome>]
]);

//能量过载器
recipes.remove(<extrautils2:poweroverload>);
mods.extendedcrafting.TableCrafting.addShaped(0, <extrautils2:poweroverload>, [
	[<ore:circuitMaster>, <ore:dustEnergion>, <ore:dustEnergion>, <ore:dustEnergion>, <ore:circuitMaster>], 
	[<ore:dustEnergion>, <enderio:block_gauge>, <woot:cell>, <enderio:block_gauge>, <ore:dustEnergion>], 
	[<ore:dustEnergion>, <enderio:block_gauge>, <woot:factorycore:5>, <enderio:block_gauge>, <ore:dustEnergion>], 
	[<ore:dustEnergion>, <enderio:block_gauge>, <woot:cell>, <enderio:block_gauge>, <ore:dustEnergion>], 
	[<ore:circuitMaster>, <ore:dustEnergion>, <ore:dustEnergion>, <ore:dustEnergion>, <ore:circuitMaster>]
]);

//机械电路板
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockcasing:5>, [
	[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], 
	[<modularmachinery:itemmodularium>, <appliedenergistics2:material:17>, <techreborn:part:42>, <appliedenergistics2:material:16>, <modularmachinery:itemmodularium>], 
	[<modularmachinery:itemmodularium>, <techreborn:part:42>, <ore:circuitAdvanced>, <techreborn:part:42>, <modularmachinery:itemmodularium>], 
	[<modularmachinery:itemmodularium>, <appliedenergistics2:material:16>, <techreborn:part:42>, <appliedenergistics2:material:18>, <modularmachinery:itemmodularium>], 
	[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]
]);

//机械齿轮
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockcasing:3>, [
	[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], 
	[<modularmachinery:itemmodularium>, <ore:gearBoundMetal>, <ore:gearSentientMetal>, <ore:gearBoundMetal>, <modularmachinery:itemmodularium>], 
	[<modularmachinery:itemmodularium>, <ore:gearSentientMetal>, <appliedenergistics2:material:23>, <ore:gearSentientMetal>, <modularmachinery:itemmodularium>], 
	[<modularmachinery:itemmodularium>, <ore:gearBoundMetal>, <ore:gearSentientMetal>, <ore:gearBoundMetal>, <modularmachinery:itemmodularium>], 
	[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]
]);