#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.cote.ISubTileEntityGenerating;
import mods.randomtweaker.naturesaura.IAuraChunk;

//沅陵花
var Yuanlinghua as ISubTileEntityGenerating = VanillaFactory.createSubTileGenerating("yuanlinghua", 0xFFFFFF);
Yuanlinghua.passiveFlower = true;
Yuanlinghua.valueForPassiveGeneration = 20;
Yuanlinghua.delayBetweenPassiveGeneration = 1;
Yuanlinghua.range = 4;
Yuanlinghua.canGeneratePassively = function(pos, world)
{
    if (world.getWorldTime() % 20 == 0) {
        if(world.getAuraInArea(pos, 4) > 10000) {
            world.getAuraChunk(pos).drainAura(pos, 200);
            return true;
        }
    }
    return false;
};
Yuanlinghua.register();

//通睿花
var tongruihua as ISubTileEntityGenerating = VanillaFactory.createSubTileGenerating("tongruihua", 0xFFFFFF);
tongruihua.range = 4;
tongruihua.onUpdate = function(subtile, world, pos)
{
    var auraChunk as IAuraChunk = world.getAuraChunk(pos);
    if(!world.remote && subtile.getMana() > 0 && !isNull(auraChunk)) {
        subtile.addMana(-1);
        auraChunk.storeAura(pos, 10);
    }
};

tongruihua.register();