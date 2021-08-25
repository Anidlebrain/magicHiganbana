##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     合成拓展 9×9 合成
##================================================

#priority 2000
#norun
import scripts.AnildebrainUtils.RecipesUtils;

//铁质外壳
recipes.remove(<actuallyadditions:block_misc:9>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:block_misc:9> * 2, [
    [<ore:gemAquamarine>, null, <ore:ingotIron>, null, <ore:gemAquamarine>], 
    [null, <ore:gemQuartzBlack>, null, <ore:gemQuartzBlack>, null], 
    [<ore:ingotIron>, null, <ore:gearIron>, null, <ore:ingotIron>], 
    [null, <ore:gemQuartzBlack>, null, <ore:gemQuartzBlack>, null], 
    [<ore:gemAquamarine>, null, <ore:ingotIron>, null, <ore:gemAquamarine>]
]);

//煤炭发电机
recipes.remove(<actuallyadditions:block_coal_generator>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:block_coal_generator>, [
    [<astralsorcery:blockblackmarble>, null, null, null, <astralsorcery:blockblackmarble>], 
    [null, <ore:blockGlassColorless>, <ore:cobblestone>, <ore:blockGlassColorless>, null], 
    [null, <ore:cobblestone>, <actuallyadditions:block_misc:9>, <ore:cobblestone>, null], 
    [null, <ore:blockGlassColorless>, <ore:cobblestone>, <ore:blockGlassColorless>, null], 
    [<astralsorcery:blockblackmarble>, null, null, null, <astralsorcery:blockblackmarble>]
]);

//原子再构机
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:block_atomic_reconstructor>, [
    [<ore:stoneMarble>, null, <ore:alloyBasic>, null, <ore:stoneMarble>], 
    [null, <ore:blockGlassColorless>, <ore:ingotIron>, <ore:blockGlassColorless>, null], 
    [<ore:alloyBasic>, <ore:ingotIron>, <actuallyadditions:block_coal_generator>, <ore:ingotIron>, <ore:alloyBasic>], 
    [null, <ore:blockGlassColorless>, <ore:ingotIron>, <ore:blockGlassColorless>, null], 
    [<ore:stoneMarble>, null, <ore:alloyBasic>, null, <ore:stoneMarble>]
]);

//农场
recipes.remove(<actuallyadditions:block_farmer>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:block_farmer>, [
    [<ore:stoneMarble>, null, <actuallyadditions:item_crystal>, null, <ore:stoneMarble>], 
    [null, <ore:blockGlassColorless>, <ore:seed>, <ore:blockGlassColorless>, null], 
    [<actuallyadditions:item_crystal>, <ore:seed>, <actuallyadditions:block_misc:9>, <ore:seed>, <actuallyadditions:item_crystal>], 
    [null, <ore:blockGlassColorless>, <ore:seed>, <ore:blockGlassColorless>, null], 
    [<ore:stoneMarble>, null, <actuallyadditions:item_crystal>, null, <ore:stoneMarble>]
]);

//物品展示台
recipes.remove(<actuallyadditions:block_display_stand>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:block_display_stand>, [
    [<ore:ingotIron>, null, <actuallyadditions:item_crystal>, null, <ore:ingotIron>], 
    [null, <ore:blockGlassColorless>, null, <ore:blockGlassColorless>, null], 
    [<actuallyadditions:item_crystal>, null, <actuallyadditions:block_misc:9>, null, <actuallyadditions:item_crystal>], 
    [null, <ore:blockGlassColorless>, null, <ore:blockGlassColorless>, null], 
    [<ore:ingotIron>, null, <actuallyadditions:item_crystal>, null, <ore:ingotIron>]
]);

//油菜压榨机
recipes.remove(<actuallyadditions:block_canola_press>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:block_canola_press>, [
    [<actuallyadditions:item_crystal_empowered:5>, null, <ore:gemAquamarine>, null, <actuallyadditions:item_crystal_empowered:5>], 
    [null, <ore:blockGlassColorless>, <ore:cropCanola>, <ore:blockGlassColorless>, null], 
    [<ore:gemAquamarine>, <ore:cropCanola>, <actuallyadditions:block_misc:9>, <ore:cropCanola>, <ore:gemAquamarine>], 
    [null, <ore:blockGlassColorless>, <ore:cropCanola>, <ore:blockGlassColorless>, null], 
    [<actuallyadditions:item_crystal_empowered:5>, null, <ore:gemAquamarine>, null, <actuallyadditions:item_crystal_empowered:5>]
]);

//发酵机
recipes.remove(<actuallyadditions:block_fermenting_barrel>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:block_fermenting_barrel>, [
    [null, null, <actuallyadditions:item_crystal_empowered>, null, null], 
    [null, <ore:blockGlassColorless>, <ore:cropCanola>, <ore:blockGlassColorless>, null], 
    [<actuallyadditions:item_crystal_empowered>, <ore:cropCanola>, <actuallyadditions:block_misc:9>, <ore:cropCanola>, <actuallyadditions:item_crystal_empowered>], 
    [null, <ore:blockGlassColorless>, <ore:cropCanola>, <ore:blockGlassColorless>, null], 
    [null, null, <actuallyadditions:item_crystal_empowered>, null, null]
]);


//线圈
recipes.remove(<actuallyadditions:item_misc:7>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:item_misc:7>, [
    [null, null, <actuallyadditions:item_crystal_empowered>, null, null], 
    [null, <ore:string>, null, <ore:string>, null], 
    [<actuallyadditions:item_crystal_empowered>, null, <ore:xuRedstoneCoil>, null, <actuallyadditions:item_crystal_empowered>], 
    [null, <ore:string>, null, <ore:string>, null], 
    [null, null, <actuallyadditions:item_crystal_empowered>, null, null]
]);


//能量中继器
recipes.remove(<actuallyadditions:block_laser_relay>);
mods.extendedcrafting.TableCrafting.addShaped(0, <actuallyadditions:block_laser_relay> * 4, [
    [<ore:obsidian>, null, <actuallyadditions:item_crystal_empowered>, null, <ore:obsidian>], 
    [null, null, <appliedenergistics2:energy_cell>, null, null], 
    [<actuallyadditions:item_crystal_empowered>, <appliedenergistics2:energy_cell>, <actuallyadditions:item_misc:8>, <appliedenergistics2:energy_cell>, <actuallyadditions:item_crystal_empowered>], 
    [null, null, <appliedenergistics2:energy_cell>, null, null], 
    [<ore:obsidian>, null, <actuallyadditions:item_crystal_empowered>, null, <ore:obsidian>]
]);