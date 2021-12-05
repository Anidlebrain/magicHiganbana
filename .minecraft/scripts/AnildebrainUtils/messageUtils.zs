##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     本地化语言
##=================================================

#priority 999999999
import crafttweaker.player.IPlayer;

function getMessageKey(key as string) as string
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
    game.setLocalization(key, getMessageKey(key));
}

function getWelcomeMessage(key as string) as string
{
    return getMessageKey("welcome." ~ key);
}

function getCommandMessage(key as string) as string
{
    return getMessageKey("command." ~ key);
}

function getTooltipMessage(key as string) as string
{
    return getMessageKey("tooltip." ~ key);
}

function getDescriptionMessage(key as string) as string
{
    return getMessageKey("description." ~ key);
}

function getLoreMessage(key as string) as string
{
    return getMessageKey("lore." ~ key);
}

function getItemMessage(key as string)
{
    return getMessageKey("item." ~ key);
}

function getEventMessage(key as string)
{
    return getMessageKey("event." ~ key);
}
