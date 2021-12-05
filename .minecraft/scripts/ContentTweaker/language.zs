##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     本地化语言设置
##=================================================

#priority -1
import scripts.AnildebrainUtils.messageUtils.modifyLocalLang;

var modifyLangs as string[] = [
    //神秘时代
    "false.start",
    "book.start.title",
    "book.start.1",
    "book.start.2",
    "book.start.3",
    "got.crystals",
    "got.dream",
    "item.ingot.thaumium.name",
    "item.nugget.thaumium.name",
    "item.plate.thaumium.name",

    //奇才秒械
    "item.prodigytech.ferramic_ingot.name",
    "item.prodigytech.ferramic_nugget.name",
    "item.prodigytech.ferramic_gear.name",
    "item.prodigytech.ferramic_dust.name",
    "item.prodigytech.ferramic_dust_tiny.name",
    "advancements.prodigytech.main.explosion_furnace.description",
    "tile.prodigytech.magnetic_reassembler.tooltip",
    "item.prodigytech.circuit_plate.name",
    "tile.prodigytech.solderer.tooltip",
    "tile.prodigytech.ore_refinery.name",
    "container.prodigytech.ore_refinery",
    "container.prodigytech.jei.ptrefinery",
    "tile.prodigytech.ore_refinery.tooltip",

    //工匠之作
    //"tile.artisanworktables.worktable.chemist.name",
    //"tile.artisanworktables.workstation.chemist.name",
    //"tile.artisanworktables.workshop.chemist.name",

] as string[];

for str in modifyLangs {
    modifyLocalLang(str);
}