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
/*
//神秘时代
local("book.start.title", "星辰指引");
local("book.start.1", "昨夜的梦，甚是诡异。\n\n我清楚的记得我在梦中将六块水晶在星辉的指引之下，化成了粉末");
local("book.start.2", "六块水晶的类型须得是互不相同。若如此做，我应当得到一种散发着微弱光芒的粉末。\n\n在梦中，我将粉末撒向了书架。但在我即将看到结果的时候，梦醒了。");
local("book.start.3", "我在想，我要不要重演一遍梦境中的景象？\n\n直觉告诉我，这粉末将为我掀开一个惊艳而危险的世界的面纱。");
*/

/*
//工匠之作
local("tile.artisanworktables.worktable.chemist.name", "化学工作台");
local("tile.artisanworktables.workstation.chemist.name", "化学工作站");
local("tile.artisanworktables.workshop.chemist.name", "化学工作坊");
*/