##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     本地化语言设置
##=================================================
#loader contenttweaker
#priority -1
function local(key as string, value as string) {
    game.setLocalization("zh_cn", key, value);
}

//local("item.contenttweaker.thunder_rune.name","小块焦煤");

