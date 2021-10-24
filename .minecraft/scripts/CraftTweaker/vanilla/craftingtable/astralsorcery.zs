##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 工作台合成
##================================================
#priority 2000
import scripts.AnildebrainUtils.RecipesUtils.recipesUtils;
import scripts.AnildebrainUtils.modLoader.isInvalid;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.player.IPlayer;
import mods.ctutils.player.Player;

function init()
{
    recipesInit();
    //itemRemove();
}

function recipesInit()
{
    val myFunc as IRecipeFunction = function(out, ins, info)
    {
        val player as IPlayer = info.player;
        if (isNull(player) || Player.isFake(player))
        {
            return <item:minecraft:stone>.withLore(["你已经合成的神秘农业的种子已达到限定范围", "不可以再次合成新的了。"]);
        }

        var SeenConstellations as [string] = player.getSeenConstellations();
        if (isNull(SeenConstellations) || SeenConstellations.length == 0)
        {
            return <item:minecraft:stone>.withLore(["你已经合成的神秘农业的种子已达到限定范围", "不可以再次合成新的了。"]);
        }

        return out;
    };

    recipes.remove(<astralsorcery:blockaltar>);
    RecipeBuilder.get("basic")
      .setShaped([
        [<astralsorcery:itemcraftingcomponent>, null, <contenttweaker:stars_gem>, null, <astralsorcery:itemcraftingcomponent>],
        [null, <astralsorcery:blockmarble>, <astralsorcery:blockmarble>, <astralsorcery:blockmarble>, null],
        [<contenttweaker:stars_gem>, <astralsorcery:blockmarble>, <artisanworktables:worktable:5>, <astralsorcery:blockmarble>, <contenttweaker:stars_gem>],
        [null, <astralsorcery:blockmarble>, <astralsorcery:blockmarble>, <astralsorcery:blockmarble>, null],
        [<astralsorcery:itemcraftingcomponent>, null, <contenttweaker:stars_gem>, null, <astralsorcery:itemcraftingcomponent>]])
      .addOutput(<astralsorcery:blockaltar>)
      .setExtraOutputOne(<astralsorcery:itemcraftingcomponent>, 0.5)
      .setExtraOutputTwo(<astralsorcery:itemcraftingcomponent>, 0.2)
      .setExtraOutputThree(<astralsorcery:itemcraftingcomponent>, 0.01)
      .setRecipeFunction(myFunc)
      .create();
}

if (!isInvalid)
{
    init();
}