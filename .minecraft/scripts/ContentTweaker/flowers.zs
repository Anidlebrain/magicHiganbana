#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.cote.ISubTileEntityGenerating;

//沅陵花
var Yuanlinghua as ISubTileEntityGenerating = VanillaFactory.createSubTileGenerating("yuanlinghua", 0xFFFFFF);
Yuanlinghua.PassiveFlower = true;
Yuanlinghua.valueForPassiveGeneration = 160;
Yuanlinghua.delayBetweenPassiveGeneration = 1;
Yuanlinghua.canGeneratePassively = function(pos, world)
{
    if(world.getAuraInArea(pos, 10) > 10000)
    {
        world.getAuraChunk(pos).drainAura(pos, 200);
        return true;
    }
    return false;
};
Yuanlinghua.register();

//通睿花
var Yuanlinghua as ISubTileEntityGenerating = VanillaFactory.createSubTileGenerating("tongruihua", 0xFFFFFF);
Yuanlinghua.register();