##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     本地化语言
##=================================================
#loader contenttweaker
import crafttweaker.player.IPlayer;
#priority 999999999

function getMessageKey(key as string)
{
    return game.localize("magichiganbana." ~ key);
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

function getItemMessage(key as string)
{
    return getMessageKey("item." ~ key);
}

function getEventMessage(key as string)
{
    return getMessageKey("event." ~ key);
}

function getTconstructMessage(key as string)
{
    return getMessageKey("tconstruct." ~ key);
}