##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     本地化语言设置
##=================================================

#priority -1
import scripts.AnildebrainUtils.messageUtils.modifyLocalLang;

function local(key as string, value as string) {
    game.setLocalization("zh_cn", key, value);
}
//local("item.contenttweaker.thunder_rune.name","小块焦煤");

//神秘时代
modifyLocalLang("false.start");
modifyLocalLang("book.start.title");
modifyLocalLang("book.start.1");
modifyLocalLang("book.start.2");
modifyLocalLang("book.start.3");


//工匠之作
modifyLocalLang("tile.artisanworktables.worktable.chemist.name");
modifyLocalLang("tile.artisanworktables.workstation.chemist.name");
modifyLocalLang("tile.artisanworktables.workshop.chemist.name");
