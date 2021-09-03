##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     根源魔法 精灵工作台
##================================================
#priority 2000
import mods.roots.Fey;

//符文石
Fey.removeRecipe(<roots:runestone>);
Fey.addRecipe("roots/Fey/runestone", <roots:runestone> * 3,
    [<botania:livingrock>,
     <botania:livingrock>,
     <botania:livingrock>,
     <ore:randomThingsRuneDust>,
     <ore:randomThingsRuneDust>], 40);

recipes.remove(<chisel:tyrian>);
Fey.addRecipe("chisel/Fey/tyrian", <chisel:tyrian> * 4,
    [<minecraft:iron_ingot> | <minecraft:gold_ingot> | <minecraft:dye:4>,
     <minecraft:stonebrick>,
     <minecraft:stonebrick>,
     <minecraft:stonebrick>,
     <minecraft:stonebrick>], 40);

//牺牲匕首
recipes.remove(<bloodmagic:sacrificial_dagger>);
Fey.addRecipe("bloodmagic/Fey/sacrificial_dagger", <bloodmagic:sacrificial_dagger>,
    [<contenttweaker:material_part:3763>,
     <skyresources:techitemcomponent:2>,
     <skyresources:alchemicalglass>,
     <skyresources:alchemicalglass>,
     <skyresources:alchemicalglass>], 100);

//虚空石
recipes.remove(<chisel:voidstone>);
Fey.addRecipe("chisel/Fey/voidstone", <chisel:voidstone>,
    [<ore:obsidian>,
     <ore:obsidian>,
     <ore:obsidian>,
     <ore:pearlEnderEye>,
     <ore:pearlEnderEye>], 100);


Fey.addRecipe("chisel/Fey/voidstone_2", <chisel:voidstone> * 3,
    [<minecraft:purpur_block>,
     <minecraft:purpur_block>,
     <minecraft:purpur_block>,
     <minecraft:purpur_block>,
     <ore:pearlEnderEye>], 100);

//纯色玻璃
recipes.remove(<chisel:antiblock:15>);
Fey.addRecipe("chisel/Fey/antiblock/12", <chisel:antiblock:12>,
    [<ore:dustEnergion>,
     <enderio:block_fused_glass>,
     <enderio:block_fused_glass>,
     <enderio:block_fused_glass>,
     <enderio:block_fused_glass>], 100);

//纯色玻璃
recipes.remove(<chisel:brownstone>);
Fey.addRecipe("chisel/Fey/brownstone", <chisel:brownstone>,
    [<ore:sandstone>,
     <ore:sandstone>,
     <ore:sandstone>,
     <ore:sandstone>,
     <minecraft:clay_ball>], 100);

//纯色玻璃
recipes.remove(<chisel:brownstone>);
Fey.addRecipe("chisel/Fey/brownstone", <chisel:brownstone>,
    [<ore:sandstone>,
     <ore:sandstone>,
     <ore:sandstone>,
     <ore:sandstone>,
     <minecraft:clay_ball>], 100);

//木墩
recipes.remove(<naturesaura:wood_stand>);
Fey.addRecipe("naturesaura/Fey/wood_stand", <naturesaura:wood_stand> * 2,
    [<naturesaura:gold_leaf>,
     <naturesaura:gold_leaf>,
     <ore:logWood>,
     <ore:logWood>,
     <ore:logWood>], 100);
