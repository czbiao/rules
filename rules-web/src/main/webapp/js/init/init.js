/**
 * Created by linjingshan on 2018/7/1.
 */
$(function () {
    var signon = getCookie('signon');
    if(signon!=undefined) {
        loginForJson(signon);
    }
})