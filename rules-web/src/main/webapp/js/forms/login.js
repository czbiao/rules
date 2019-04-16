var student_id;
var account;


function login() {
    var re1=/[A-Z]{1}\d{9,10}/
    var nob = $("#studentId").val();
    var password;
    if(re1.test(nob)){
            var a = "";
            a = nob.charCodeAt()-64 + nob.slice("1");
            if (a.length == 11) {nob = "90" + a}else{nob = 9 + a};
        };
    var studentId = nob;
    password = $('#password').val();
    var signonString = {studentId: studentId, password: password};
    var signonJson = $.toJSON(signonString);
    loginForJson(signonJson);
}
function loginForJson(signonJson) {
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'account/login',
        dataType: 'json',
        method: 'POST',
        data: signonJson,
        success: function (data) {
            if (data.code === undefined) {
                setCookie('signon', signonJson);
                $('#loginModal').modal('hide');
                $('#login-li').hide();
                $('#personal-li').show();
                account = data;
                student_id = data.studentId;
                getTestRecord(data.studentId);
                getContestRecord(data.studentId);
                isRegisted();
                $("#isSimulationLogin").html("&nbsp;");
                $('#isSimulationBlankLogin').html("&nbsp;");
                $('#isSimulationShortLogin').html("&nbsp;");
                // $("#isWrongTitleLogin").html("&nbsp;");
                $("#isLogin").html("&nbsp;");
                $("#isContestLogin").html("&nbsp;");
                $("#register-li").hide();
                changeStatus();
            } else {
                $('#loginMessage').html("用户名或密码错误");
            }
        },
        error: function (xhr) {
            // 导致出错的原因较多，以后再研究
            alert('出错了，请刷新重试或截图反馈');
        }
    }).done(function (data) {
        // 请求成功后要做的工作
        console.log('success');
    }).fail(function () {
        // 请求失败后要做的工作
        console.log('error');
    }).always(function () {
        // 不管成功或失败都要做的工作
        console.log('complete');
    });
}
function getStudentId() {
    return student_id;
}
function setStundentId(attr) {
    student_id = attr;
}
function getAccount() {
    return account;
}

function setAccount(attr) {
    account = attr;
}
