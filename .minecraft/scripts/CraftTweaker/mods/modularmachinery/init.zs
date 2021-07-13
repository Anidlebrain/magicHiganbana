##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     模块化机械配方初始化      ##
##################################################

#priority 1999
import scripts.AnildebrainUtils.modLoader.isInvalid;

if(!isInvalid)
{
	scripts.CraftTweaker.mods.modularmachinery.mini_mana_machine.MiniManaMachineRecipes().recipesInit();
	scripts.CraftTweaker.mods.modularmachinery.knowledge_inheritance.KnowledgeInheritanceRecipes().recipesInit();
	scripts.CraftTweaker.mods.modularmachinery.precision_laser_engraver.PrecisionLaserEngraverRecipes().recipesInit();
	scripts.CraftTweaker.mods.modularmachinery.parts_manufacturing_machine.PartsManufacturingMachineRecipes().recipesInit();
	scripts.CraftTweaker.mods.modularmachinery.mana_magic.ManaMagicRecipes().recipesInit();
}

/*
// mana
addManaInput(int mana)
addManaOutput(int mana)
addManaPerTickInput(int mana)
addManaPerTickOutput(int mana)
// ember
addEmberInput(int ember)
// aura
addAuraInput(int aura, boolean forceDeain)
addAuraInput(int aura)
// starlight
addStarlightInput(int starlight, String constellationName)
// environment
setBiome(IBiome[] biomes) 
setAltitude(int min, int max) 
setTime(int min, int max) 
setDimension(int[] dimensions) 
setMoonPhase(int[] moonphases)
setWeather(String weather) 
*/
