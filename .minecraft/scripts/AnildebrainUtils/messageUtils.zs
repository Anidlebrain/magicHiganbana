##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     本地化语言
##=================================================

#priority 999999999
import crafttweaker.player.IPlayer;

function getMessageKey(key as string) as string
{
    var modifiedkey as string = "magichiganbana." ~ key;
    return game.localize(modifiedkey);
}

function sendPlayMessage(player as IPlayer, key as string)
{
    player.sendMessage(getMessageKey(key));
    //player.sendRichTextMessage(getMessageKey(key));
}

function modifyLocalLang(key as string)
{
    game.setLocalization("zh_cn", key, getMessageKey(key));
}

