##=================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     基础处理函数
##=================================================

#priority 999999999
import mods.ctutils.utils.Math;


function removeBraces(str as string) as string {
    var len as int = str.length - 1;
    var res as string = "";
    if (str[0] == '<' & str[len] == '>') {
        res = str.substring(1, len);
    }
    else {
        res = str;
    }
    return res;
}

function removeColon(str as string ) as string {
    var len as int = str.length;
    var res as string = "";
    if (str.startsWith("liquid")) {
        res = str.substring(7, len);
    }
    else {
        res = str;
    }
    return res;
}

function cleanName(str as string) as string {
    return str.replaceAll("[^A-Za-z_\\s]", "")
        .replaceAll("\\s+", " ")
        .replaceAll("\\s+", "_")
        .toLowerCase();
}

/*
function quick_pow(a as int, n as int) as int {
/*
    var res as int = 1;
    var tmp as int = a;
    while(n > 0) {
        if (n&1) {
            res *= tmp;
        }
        tmp *= tmp;
        n = n / 2;
    }
    return res;

    return Math.floor(pow(a * 1.0, n * 1.0) + 0.0001);
}
*/
/*
function nextNum(n as int) as int {
    if ((n&1) == 0) {
        return 3 as int;
    }
    var eps = 0.001 as double;
    var num = n as int;
    while (true) {
        num += 2;
        var k = Math.sqrt(n * 1.0) as double;
        var i = 3 as int;
        while(true) {
            if (i + eps > k) {
                return n;
            }
            if (n % i == 0) {
                break;
            }
            i += 2;
        }
    }
}

function checkNum(n as int) as bool {
    if ((n&1) == 0 && (n^2) != 0) {
        return false;
    }
    var k as int = Math.floor(Math.sqrt(n * 1.0));
    var i = 3 as int;
    while (i <= k) {
        if (n % i == 0) {
            return false;
        }
        i += 2;
    }
    return true;
}
*/

