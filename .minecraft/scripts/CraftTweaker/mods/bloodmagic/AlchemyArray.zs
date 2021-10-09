##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     血魔法 炼金矩阵
##================================================

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