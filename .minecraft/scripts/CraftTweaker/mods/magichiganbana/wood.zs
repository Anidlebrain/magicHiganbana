##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     彼岸之法 木头
##================================================

#priority 2000
#norun
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.modifyWoodRecipe;
import scripts.AnildebrainUtils.MagicHiganbanaRecipesUtils.modifyStickRecipe;

for log in <ore:logWood>.items
{
    if (log.metadata == 32767) {
        for item in log.definition.subItems {
            if (log.definition.id == "minecraft:log") {
                modifyWoodRecipe(item, true);
            }
            else {
                modifyWoodRecipe(item, false);
            }
        }
    }
    else {
        modifyWoodRecipe(log, false);
    }
}

modifyStickRecipe(<minecraft:stick>, <ore:logWood>);
modifyStickRecipe(<immersiveengineering:material>, <ore:plankTreatedWood>);

