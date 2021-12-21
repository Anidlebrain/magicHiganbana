##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     自然灵气 生育仪式
##================================================
#modloaded higanbanautils
#priority 2000

import mods.naturesaura.AnimalSpawner;

/*
spawner("cow", "minecraft:cow", 50000, 60, ing(Items.BEEF), ing(Items.LEATHER));
for (EnumDyeColor color : EnumDyeColor.values())
    new AnimalSpawnerRecipe(res("sheep_" + color.getName()), new ResourceLocation("minecraft:sheep"),
            500, 60, ing(ModItems.BIRTH_SPIRIT), ing(Items.MUTTON),
            ing(new ItemStack(Blocks.WOOL, 1, color.getMetadata()))) {
        @Override
        public Entity makeEntity(World world, double x, double y, double z) {
            EntitySheep sheep = (EntitySheep) super.makeEntity(world, x, y, z);
            sheep.setFleeceColor(color);
            return sheep;
        }
    }.register();
spawner("chicken", "minecraft:chicken", 30000, 40, ing(Items.FEATHER), ing(Items.EGG));
spawner("pig", "minecraft:pig", 50000, 60, ing(Items.PORKCHOP));
spawner("blaze", "minecraft:blaze", 150000, 120, ing(Items.BLAZE_ROD), ing(Items.BLAZE_POWDER));
spawner("ghast", "minecraft:ghast", 120000, 150, ing(Items.GUNPOWDER), ing(Items.GHAST_TEAR));
spawner("ocelot", "minecraft:ocelot", 80000, 60, ing(Items.FISH), ing(Blocks.WOOL));
spawner("mule", "minecraft:mule", 100000, 100, ing(Items.LEATHER), ing(Blocks.CHEST), ing(Items.APPLE));
spawner("bat", "minecraft:bat", 30000, 40, ing(Items.FEATHER));
spawner("endermite", "minecraft:endermite", 30000, 40, ing(Items.ENDER_PEARL), ing(Blocks.STONE));
spawner("parrot", "minecraft:parrot", 50000, 60, ing(Items.FEATHER), ing(Items.COOKIE));
spawner("slime", "minecraft:slime", 30000, 40, ing(Items.SLIME_BALL));
spawner("spider", "minecraft:spider", 100000, 120, ing(Items.STRING), ing(Items.SPIDER_EYE));
spawner("skeleton", "minecraft:skeleton", 100000, 120, ing(Items.BONE), ing(Items.ARROW));
spawner("enderman", "minecraft:enderman", 120000, 120, ing(Items.ENDER_PEARL));
spawner("silverfish", "minecraft:silverfish", 30000, 40, ing(Blocks.STONE));
spawner("squid", "minecraft:squid", 50000, 40, ing(new ItemStack(Items.DYE, 1, EnumDyeColor.BLACK.getDyeDamage())));
spawner("stray", "minecraft:stray", 100000, 120, ing(Items.BONE), ing(Blocks.ICE));
spawner("shulker", "minecraft:shulker", 150000, 100, ing(Items.SHULKER_SHELL));
spawner("husk", "minecraft:husk", 100000, 120, ing(Items.ROTTEN_FLESH), ing(Blocks.SAND));
spawner("llama", "minecraft:llama", 60000, 80, ing(new ItemStack(Blocks.WOOL, 1, OreDictionary.WILDCARD_VALUE)));
spawner("rabbit", "minecraft:rabbit", 30000, 40, ing(Items.RABBIT_HIDE));
spawner("magma_cube", "minecraft:magma_cube", 100000, 100, ing(Items.MAGMA_CREAM));
spawner("zombie_pigman", "minecraft:zombie_pigman", 120000, 150, ing(Items.ROTTEN_FLESH), ing(Items.GOLD_NUGGET));
spawner("polar_bear", "minecraft:polar_bear", 50000, 60, ing(Items.FISH), ing(Blocks.ICE));
spawner("mooshroom", "minecraft:mooshroom", 40000, 60, ing(Items.LEATHER), ing(Blocks.RED_MUSHROOM));
spawner("guardian", "minecraft:guardian", 150000, 150, ing(Items.PRISMARINE_SHARD), ing(Items.PRISMARINE_CRYSTALS));
spawner("horse", "minecraft:horse", 100000, 100, ing(Items.LEATHER));
spawner("donkey", "minecraft:donkey", 100000, 100, ing(Items.LEATHER), ing(Blocks.CHEST));
spawner("cave_spider", "minecraft:cave_spider", 100000, 120, ing(Items.STRING), ing(Items.FERMENTED_SPIDER_EYE));
spawner("creeper", "minecraft:creeper", 100000, 120, ing(Items.GUNPOWDER));
spawner("witch", "minecraft:witch", 150000, 150, ing(Items.GLASS_BOTTLE), ing(Items.GLOWSTONE_DUST));
spawner("wither_skeleton", "minecraft:wither_skeleton", 150000, 150, ing(Items.BONE), ing(Blocks.OBSIDIAN));
spawner("wolf", "minecraft:wolf", 50000, 60, ing(Items.LEATHER), ing(Items.BONE));
spawner("zombie", "minecraft:zombie", 100000, 100, ing(Items.ROTTEN_FLESH));
*/