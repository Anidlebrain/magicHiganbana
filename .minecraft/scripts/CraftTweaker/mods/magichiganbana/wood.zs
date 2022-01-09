##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     彼岸之法 木头
##================================================
#modloaded higanbana
#priority 2000

import scripts.AnildebrainUtils.HiganbanaRecipesUtils;

for log in <ore:logWood>.items
{
    if (log.metadata == 32767) {
        for item in log.definition.subItems {
            if (log.definition.id == "minecraft:log") {
                HiganbanaRecipesUtils.modifyWoodRecipe(item, true);
            }
            else {
                HiganbanaRecipesUtils.modifyWoodRecipe(item, false);
            }
        }
    }
    else {
        HiganbanaRecipesUtils.modifyWoodRecipe(log, false);
    }
}

HiganbanaRecipesUtils.modifyStickRecipe(<minecraft:stick>, <ore:logWood>);
HiganbanaRecipesUtils.modifyStickRecipe(<immersiveengineering:material>, <ore:plankTreatedWood>);

