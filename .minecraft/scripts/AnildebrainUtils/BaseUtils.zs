##=================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     基础处理函数
##=================================================

#priority 999999999
import mods.ctutils.utils.Math;


function removeBraces(str as string) as string {
    if (str.length == 0) {
        return "";
    }
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

function binCheck(bin as int, bit as int) as bool {
    var tmp as int = 0;
    if (bit == 1) {
        tmp = 0x01;
    }
    else if (bit == 2) {
        tmp = 0x02;
    }
    else if (bit == 3) {
        tmp = 0x04;
    }
    else if (bit == 4) {
        tmp = 0x08;
    }
    else if (bit == 5) {
        tmp = 0x10;
    }
    else if (bit == 6) {
        tmp = 0x20;
    }
    else if (bit == 7) {
        tmp = 0x40;
    }
    else if (bit == 8) {
        tmp = 0x80;
    }
    return (bin & tmp);
}
