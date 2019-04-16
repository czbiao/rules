/**
 * Created by GF on 2017/6/24.
 */
function changeStatus() {
    var testId = getContestId();
    var student_Id = getStudentId();

    $('#loginMessage').css("display",'inline-block');

    var contestString = {studentId: student_Id, testId: testId};
    var contestregistion = $.toJSON(contestString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'test/getContestStatus',
        dataType: 'json',
        method: 'post',
        data: contestregistion,
        success: function (data) {
            if(data.studentId != student_Id){
                //返回为空
                getContestTime();
            }else {
                if (data.status == 0) {
                    $('#regist').hide();
                    $('#notBegin').show();
                }
                if (data.status == 1) {
                    $('#regist').hide();
                    $('#enter').show();
                }
                if (data.status == 2) {
                    $('#regist').hide();
                    $('#isEnd').show();
                }
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
function getContestTime() {
    var testId=getContestId();
    var student_Id = getStudentId();
    var testInfoString = {studentId:student_Id,testId: testId};
    var testInfo = $.toJSON(testInfoString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'test/getContestTime',
        dataType: 'json',
        method: 'post',
        data: testInfo,
        success: function (data) {
            if(data.result=="error"){
                $('#regist').hide();
                $('#isEnd').show();
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
