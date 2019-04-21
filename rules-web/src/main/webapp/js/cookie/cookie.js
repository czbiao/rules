/**
 * Created by linjingshan on 2017/7/1.
 */
// 其它地方肯定也用到了setCookie所以我要改这个函数，两个变量
function setCookie(name, value) {
    // 获取当前时间
    var date = new Date();
    var expiresDays = 1;
    // 将date设置为1天以后的时间
    date.setTime(date.getTime() + expiresDays * 24 * 3600 * 1000);
    // 将userId和userName两个cookie设置为1天后过期
    var expires = "expires=" + date.toUTCString();
    document.cookie = name + "=" + value + "; " + expires +";path=/";
}

function getCookie(attr) {
    // 获取cookie字符串
    var strCookie = document.cookie;
    // 将多cookie切割为多个名/值对
    var arrCookie = strCookie.split("; ");
    var result;
    // 遍历cookie数组，处理每个cookie对
    for (var i = 0; i < arrCookie.length; i++) {
        var arr = arrCookie[i].split("=");
        //找到名称为userId的cookie，并返回它的值
        if (attr === arr[0]) {
            result = arr[1];
            break;
        }
    }
    return result;
}

function deleteCookie(name){
     $.cookie('cookieId',null,{expires:-1,path: '/'});  
     $.cookie('cookieName',null,{expires: -1,path: '/'});  
}

/* if (navigator.cookieEnabled){
    $(document).ready(function() {
        var newVisitor = isNewVisitor();// 如果是新访客
        if(newVisitor)
        {
            // 重定向至易班登陆界面
            alert("首次进入系统，请先登陆易班！");
            window.location.href = "http://www.yiban.cn/";
            // 标记：有效期为1天
            setCookie2("yiban-notes-visited","true", 1);
        }
    });
}
function isNewVisitor() {
    // 从cookie读取“已经向访客提示过消息”的标志位
    var flg = getCookie2("yiban-notes-visited");
    if (flg === "") {
        return true;
    } else {
        return false;
    }
}
// 写字段到cookie
function setCookie2(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires +";path=/";
}
// 读cookie
function getCookie2(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) == 0) return c.substring(name.length,c.length);
    }
    return "";
}  */