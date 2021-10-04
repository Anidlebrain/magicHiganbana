##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 凝矿兰
##================================================
#priority 2000
import mods.randomtweaker.botania.IOrechid;


IOrechid.delOreRecipe(<minecraft:stone>, <ore:oreMithril>);

IOrechid.delOreRecipe(<minecraft:stone>, <ore:dustSulfur>);

IOrechid.delOreRecipe(<minecraft:stone>, <ore:oreTungsten>);

IOrechid.delOreRecipe(<minecraft:stone>, <ore:oreOsmium>);

IOrechid.delOreRecipe(<minecraft:stone>, <ore:oreQuartzBlack>);


for ore in IOrechid.getOreRecipes(<minecraft:stone>)
{
    if (!isNull(ore))
    {
        if (!ore.empty)
        {
            IOrechid.addOreRecipe(<naturesaura:infused_stone>, ore, 1000);
        }
        else
        {
            print(ore.name);
        }
    }

}

//零素矿石
IOrechid.addOreRecipe(<naturesaura:infused_stone>, <ore:oreEezo>, 549);

//熔晶矿石
IOrechid.addOreRecipe(<naturesaura:infused_stone>, <ore:oreOsram>, 951);

//杜兰特矿石
IOrechid.addOreRecipe(<naturesaura:infused_stone>, <ore:oreDuranite>, 843);

//绯红铁矿石
IOrechid.addOreRecipe(<naturesaura:infused_stone>, <ore:oreKarmesine>, 765);

//欧维姆矿石
IOrechid.addOreRecipe(<naturesaura:infused_stone>, <ore:oreOvium>, 957);

