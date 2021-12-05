#priority 3000

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import scripts.AnildebrainUtils.ItemHelper.itemHelper;


var oreDictNames as string[] = [
    "Aluminum", "Bronze", "Constantan", "Copper", "Electrum", "Invar", "Iridium", "Lead",
    "Nickel", "Platinum", "Silver", "Steel", "Tin", "Uranium",
    
    "Gold", "Iron", "Coal", "Diamond", "Emerald", "Lapis", "NetherQuartz", "Obsidian", "Quartz",
    "Saltpeter", "Sulfur", "Wood", ""

];

var partNames as string[] = [
    "ingot", "ore", "plate", "gear", "block", "nugget", "dust"
];

var modIds as string[] = [
    "techreborn", "immersiveengineering"
];

for partName in partNames {
    for key in oreDictNames {
        var ore as IOreDictEntry = oreDict.get(partName ~ key);
        var ores as [IItemStack] = ore.items;
        var flag = false;
        for modId in modIds {
            for oreItem in ores {
                var owner = oreItem.definition.owner;
                if (owner == modId) {
                    flag = true;
                    for otherItem in ores {
                    if(!otherItem.matches(oreItem) && 
                        otherItem.definition.owner != "chisel" &&
                        otherItem.definition.owner != "contenttweaker") {
                            itemHelper.removeItemAndOre(otherItem);
                        }
                    }
                    break;
                }
            }
            if (flag) {
                break;
            }
        }
    }
}
