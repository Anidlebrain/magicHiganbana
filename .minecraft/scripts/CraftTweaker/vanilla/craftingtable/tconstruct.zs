recipes.remove(<tconstruct:rack:1>);
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>]])
  .addOutput(<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab", Count: 1 as byte, Damage: 0 as short}}))
  .create();

