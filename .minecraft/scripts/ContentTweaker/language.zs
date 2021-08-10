##=================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     本地化语言设置
##=================================================
#loader contenttweaker
#priority -1
function local(key as string, value as string) {
    game.setLocalization("zh_cn", key, value);
}

