##==========================================================================================================================
##          [Info]:     mods加载判断
##          [source]:   https://github.com/ProjectHDS/Herodotus/blob/master/.minecraft/scripts/hds_main/utils/modloader.zs 
##==========================================================================================================================
#priority 114514199

static isInvalid as bool = false;
static invalidMods as string[] = [
    "torcherino",
    "xijun",
    "bacteria",
    "decomp_table",
    "deconstrcution_table",
    "decon_table",
    "decontable",
    "decon",
    "uncraftingtable",
    "cyclic",
    "deconstruction",
    "grimpack",
    "xray",
    "oreping",
    "reinforcedtools",
    "scenter",
    "extrabotany",
    "oresniffer",
    "eplus",
    "stm",
    "ISM"
];

for i in invalidMods {
    if(loadedMods in i) {
        isInvalid = true;
        print("[ModLoader] Found invalid mods, no gameplay scripts will be loaded anymore.");
        break;
    }
}

//calling
//import scripts.AnildebrainUtils.ModLoader.isInvalid;
if(!isInvalid) {
    print("[ModLoader] The check for invalid mods has been completed, and all scripts will now be loaded.");
}