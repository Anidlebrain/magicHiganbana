##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     血魔法 炼金矩阵
##================================================
#modloaded higanbana
#priority 2000

import mods.bloodmagic.AlchemyArray;
/*
//mods.bloodmagic.AlchemyArray.addRecipe(IItemStack output, IItemStack input, IItemStack catalyst, @Optional string textureLocation);
mods.bloodmagic.AlchemyArray.addRecipe(<minecraft:diamond>, <minecraft:stick>, <minecraft:grass>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");
mods.bloodmagic.AlchemyArray.addRecipe(<minecraft:diamond>, <minecraft:stick>, <minecraft:grass>);
// creates an alchemy array recipe with the output of diamond. the first item placed into the array is the stick (the input), followed by the grass (the catalyst)
*/
//高级炼金粉
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:4>);
AlchemyArray.addRecipe(<skyresources:alchemyitemcomponent:4>, <prodigytech:energion_dust>, <botania:manaresource:8>, "bloodmagic:textures/models/AlchemyArrays/voidsigil.png");



AlchemyArray.addRecipe(<artisanworktables:workshop>, <artisanworktables:workstation>, <embers:ashen_cloth>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:1>, <artisanworktables:workstation:1>, <botanicadds:elvenwood_log>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:2>, <artisanworktables:workstation:2>, <appliedenergistics2:sky_stone_block>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:3>, <artisanworktables:workstation:3>, <tconstruct:metal:4>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:4>, <artisanworktables:workstation:4>, <randomthings:ingredient:9>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:5>, <artisanworktables:workstation:5>, <contenttweaker:basic_synthetic_gem>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:6>, <artisanworktables:workstation:6>, <immersiveengineering:tool:2>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:7>, <artisanworktables:workstation:7>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:8>, <artisanworktables:workstation:8>, <botania:spellcloth>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:9>, <artisanworktables:workstation:9>, <bloodmagic:component:28>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:10>, <artisanworktables:workstation:10>, <botania:worldseed>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:11>, <artisanworktables:workstation:11>, <prodigytech:primordium>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:12>, <artisanworktables:workstation:12>, <techreborn:auto_crafting_table>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:13>, <artisanworktables:workstation:13>, <roots:fey_leather>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");

AlchemyArray.addRecipe(<artisanworktables:workshop:14>, <artisanworktables:workstation:14>, <soot:wrought_tile>, "bloodmagic:textures/models/AlchemyArrays/movementarray.png");
