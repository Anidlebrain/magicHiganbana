##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     星辉魔法 星辉祭坛 虚空工艺
##================================================
#modloaded higanbanautils
#modloaded voidcraft
#priority 2000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.Altar;
import scripts.AnildebrainUtils.HiganbanaRecipesUtils.addAltarRecipe;


function makeAltar(output as IItemStack,
                   starLight as int,
                   craftTickTime as int,
                   recipe as string[],
                   replacements as IIngredient[string])
{
    if(starLight > 2000)
    {
        addAltarRecipe(output, 2, 2000, craftTickTime, recipe, replacements, "");
    }
    else
    {
        addAltarRecipe(output, 2, starLight, craftTickTime, recipe, replacements, "");
    }
}

//惰性虚空灌注祭坛
recipes.remove(<voidcraft:voidinfuserinert>);
makeAltar(<voidcraft:voidinfuserinert>, 1100, 40, 
    [
        "A   A",
        " DBD ",
        " BCB ",
        " DBD ",
        "A   A",
    ],
    {
        A : <chisel:energizedvoidstone:4>,
        B : <voidcraft:voidstar>,
        C : <botania:brewery>,
        D : <voidcraft:blockvoidbrick>
    }
);

//空的黑曜石烧瓶
recipes.remove(<voidcraft:emptyobsidianflask>);
makeAltar(<voidcraft:emptyobsidianflask>, 40, 40, 
    [
        "A   A",
        "     ",
        "  C  ",
        "     ",
        "A   A",
    ],
    {
        A : <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}),
        C : <ore:bFlask>
    }
);


//虚空能源发电机
recipes.remove(<voidcraft:voidicgen>);
makeAltar(<voidcraft:voidicgen>, 1303, 40, 
    [
        "A   A",
        " DBD ",
        " BCB ",
        " DED ",
        "A   A",
    ],
    {
        A : <chisel:energizedvoidstone:4>,
        B : <actuallyadditions:item_crystal_empowered>,
        C : <voidcraft:voidinfuser>,
        D : <ore:crystalRestonia>,
        E : <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
    }
);

//炽热虚空锁链
recipes.remove(<voidcraft:moltenvoidchain>);
makeAltar(<voidcraft:moltenvoidchain>, 50, 40, 
    [
        "BAB",
        "ABA",
        "BAB",
    ],
    {
        A : <voidcraft:voidcloth>,
        B : <voidcraft:moltenvoidchainpart>
    }
);


//炽热虚空锁链
recipes.remove(<voidcraft:chainedskull>);
makeAltar(<voidcraft:chainedskull>, 500, 40, 
    [
        "BAB",
        "ACA",
        "BAB",
    ],
    {
        A : <voidcraft:moltenvoidchain>,
        B : <voidcraft:burnbone>,
        C : <randomthings:obsidianskull>
    }
);