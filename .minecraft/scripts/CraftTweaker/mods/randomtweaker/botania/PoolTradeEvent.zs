import mods.randomtweaker.botania.PoolTradeEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;

events.onPoolTrade(function(event as PoolTradeEvent)
{
    var world as IWorld = event.world;
    if(!world.remote) 
    {
        event.cancel();
    }

    var item as IItemStack = event.input.item;
    print(item.definition.id);
    if (item.definition.id == "contenttweaker:star_alchemy_powder")
    {
        if (!event.alchemy)
        {
            event.cancel();
        }
        
        var dimension as int = world.getDimension();
        print(dimension);
        if (dimension != 58)
        {
            event.cancel();
        }

    }
    event.setOutput(event.output);
});