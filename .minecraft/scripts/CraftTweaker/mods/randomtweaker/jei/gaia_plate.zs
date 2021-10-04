
##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 JEI-盖亚凝聚板
##================================================
#priority 2001
#norun
import mods.jei.JEI;
import mods.randomtweaker.jei.JEIPanel;
import mods.randomtweaker.jei.JEIRecipe;



var keyJEI as JEIPanel = JEI.createJEIPanel("gaia_plate", "tile.botanicadds:gaia_plate");
keyJEI.setJEIBackGroup(JEI.createJEIBackground(170, 130));
keyJEI.addRecipeCatalyst(<botanicadds:gaia_plate>);
keyJEI.addJEISlot(JEI.createItemSlot(true, 75, 0, false));
keyJEI.addJEISlot(JEI.createItemSlot(true, 57, 0, false));
keyJEI.addJEISlot(JEI.createItemSlot(true, 93, 0, false));
keyJEI.addJEISlot(JEI.createItemSlot(true, 39, 0, false));
keyJEI.addJEISlot(JEI.createItemSlot(true, 111, 0, false));
keyJEI.addJEISlot(JEI.createItemSlot(true, 21, 0, false));
keyJEI.addJEISlot(JEI.createItemSlot(true, 129, 0, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 75, 60, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 75, 38, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 60, 87, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 60, 105, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 90, 87, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 90, 105, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 75, 78, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 75, 96, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 75, 114, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 105, 96, false));
keyJEI.addJEISlot(JEI.createItemSlot(false, 45, 96, false));
keyJEI.setIcon(<botanicadds:gaia_plate>);
keyJEI.addJEIElement(JEI.createJEIArrowElement(76, 19, 3));
//keyJEI.addJEIElement(JEI.createJEICustomElement(48, 0, 64, 46, 0, 0, "botania:textures/gui/pureDaisyOverlay.png"));
//keyJEI.addJEIElement(JEI.createJEIManaBarElement(200, 100, 100));
/*
keyJEI.onJEITooltip = function(mouseX, mouseY){
    var arr as string[] = ["test"];
    if (mouseX == 50 && mouseY == 50){
        return arr;
    }
};
*/
keyJEI.register();


JEI.createJEIRecipe("gaia_plate")
    .setInputs([<botania:manaresource>, <botania:manaresource:1>, <botania:manaresource:2>])
    .addOutput(<botanicadds:gaia_plate>)
    .addOutput(<botania:manaresource:4>)
    .addOutput(<botanicadds:elven_lapis_block>)
    .addOutput(<botanicadds:elven_lapis_block>)
    .addOutput(<botanicadds:elven_lapis_block>)
    .addOutput(<botanicadds:elven_lapis_block>)
    .addOutput(<botanicadds:dreamrock>)
    .addOutput(<botanicadds:dreamrock>)
    .addOutput(<botanicadds:dreamrock>)
    .addOutput(<botanicadds:dreamrock>)
    .addOutput(<botanicadds:dreamrock>)
    .addJEIElement(JEI.createJEIManaBarElement(30, 57, 3300))
    .build();

JEI.createJEIRecipe("gaia_plate")
    .setInputs([<botania:manaresource:8>, <botania:manaresource:9>, <botania:manaresource:14>])
    .addOutput(<botanicadds:gaia_plate>)
    .addOutput(<botanicadds:gaiasteel_ingot>)
    .addOutput(<botanicadds:elven_lapis_block>)
    .addOutput(<botanicadds:elven_lapis_block>)
    .addOutput(<botanicadds:elven_lapis_block>)
    .addOutput(<botanicadds:elven_lapis_block>)
    .addOutput(<botanicadds:dreamrock>)
    .addOutput(<botanicadds:dreamrock>)
    .addOutput(<botanicadds:dreamrock>)
    .addOutput(<botanicadds:dreamrock>)
    .addOutput(<botanicadds:dreamrock>)
    .addJEIElement(JEI.createJEIManaBarElement(30, 57, 10000))
    .build();

/*
var keyJEI1 as JEIPanel = JEI.createJEIPanel("keys1", "key1");
keyJEI1.setJEIBackGroup(JEI.createJEIBackground(150, 50));
keyJEI1.addRecipeCatalyst(<minecraft:apple>);
keyJEI1.addRecipeCatalyst(<minecraft:stick>);
keyJEI1.addJEISlot(JEI.createItemSlot(true, 16, 18));
keyJEI1.addJEISlot(JEI.createItemSlot(false, 50, 18));
keyJEI1.addJEISlot(JEI.createLiquidSlot(true, 100, 18, 16, 34, 1000, false));
keyJEI1.onJEITooltip = function(mouseX, mouseY){
    var arr as string[] = ["test"];
    if (mouseX == 50 && mouseY == 50){
        return arr;
    }
};
keyJEI1.register();
<jei:uid>.getJEISlots()[0].x = 10;
*/