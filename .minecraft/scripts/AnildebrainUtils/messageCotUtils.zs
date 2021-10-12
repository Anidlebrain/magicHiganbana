##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     本地化语言
##=================================================
#loader contenttweaker
#priority 999999999

function getMessageKey(key as string)
{
    var modifiedkey = "magichiganbana." ~ key;
    return game.localize(modifiedkey);
}

function modifyLocalLang(key as string)
{
    game.setLocalization("zh_cn", key, getMessageKey(key));
}

