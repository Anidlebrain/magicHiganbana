##=================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     金属部件增加
##=================================================
#priority 4000
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var part_names = ["ingot"] as string[];
var frozen_gold = MaterialSystem.getMaterialBuilder().setName("Frozen_gold").setColor(15269685).build();
frozen_gold.registerParts(part_names);
