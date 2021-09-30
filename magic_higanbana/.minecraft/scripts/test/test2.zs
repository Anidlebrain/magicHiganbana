#norun
#priority 4000
#loader contenttweaker

//导包
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.DropTableBuilder;

var complextable = DropTableBuilder.newSlot()
                    .addItem("minecraft:diamond", 1, 2)
                    .addItem("minecraft:coal", 9)
                    .enableFortune()
                    .newSlot()
                    .addItem("oredict:stone")
                    .newSlot()
                    .addItem("minecraft:cobblestone")
                    .addItem("empty");

var lapistable = DropTableBuilder.newSlot()
                   .addItem("minecraft:lapis_lazuli", 1, 4)
                   .addItem("minecraft:lapis_lazuli", 1, 5)
                   .addItem("minecraft:lapis_lazuli", 1, 6)
                   .addItem("minecraft:lapis_lazuli", 1, 7)
                   .addItem("minecraft:lapis_lazuli", 1, 8)
                   .enableFortune1();
				   
var lapisData = MaterialSystem.getMaterialBuilder()
                  .setColor(12345678).setName("Fake Lapis").setColor(12345678).build()
                  .registerPart("ore").getData();
var complexData = MaterialSystem.getMaterialBuilder()
                    .setColor(12345678).setName("Complex Ore").setColor(12345678).build()
                    .registerPart("ore").getData();
lapisData.addDataValue("drops",lapistable);
complexData.addDataValue("drops",complextable+lapistable);