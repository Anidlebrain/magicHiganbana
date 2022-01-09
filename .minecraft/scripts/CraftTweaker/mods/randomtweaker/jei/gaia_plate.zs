
##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 JEI-盖亚凝聚板
##================================================
#modloaded higanbana
#priority 2001

import mods.jei.JEI;
import mods.randomtweaker.jei.IJeiPanel;
import mods.randomtweaker.jei.IJeiRecipe;
import mods.randomtweaker.jei.IJeiUtils;


var keyJEI as IJeiPanel = JEI.createJei("gaia_plate", "tile.botanicadds:gaia_plate");
keyJEI.setBackground(IJeiUtils.createBackground(170, 130));
keyJEI.addRecipeCatalyst(<botanicadds:gaia_plate>);
keyJEI.addSlot(IJeiUtils.createItemSlot(75, 0, true, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(57, 0, true, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(93, 0, true, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(39, 0, true, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(111, 0, true, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(21, 0, true, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(129, 0, true, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(75, 60, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(75, 38, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(60, 87, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(60, 105, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(90, 87, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(90, 105, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(75, 78, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(75, 96, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(75, 114, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(105, 96, false, false));
keyJEI.addSlot(IJeiUtils.createItemSlot(45, 96, false, false));
keyJEI.setIcon(<botanicadds:gaia_plate>);
keyJEI.addElement(IJeiUtils.createArrowElement(76, 19, 3));
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


JEI.createJeiRecipe("gaia_plate")
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
    .addElement(IJeiUtils.createJeiManaBarElement(30, 57, 3300))
    .build();

JEI.createJeiRecipe("gaia_plate")
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
    .addElement(IJeiUtils.createJeiManaBarElement(30, 57, 10000))
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