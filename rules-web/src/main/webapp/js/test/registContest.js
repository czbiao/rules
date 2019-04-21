/**
 * Created by linjingshan on 2017/6/25.
 */
function registContest(){
    var student_id=getStudentId();
    var contest_id=getContestId();
    var registString = {studentId: student_id, testId: contest_id};
    var contestRegistion = $.toJSON(registString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'test/registContest',
        dataType: 'json',
        method: 'POST',
        data: contestRegistion,
        success: function (data) {
            if(data.result=="success"){
               isRegisted();
               changeStatus();
            }
            changeStatus();
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
//Sunss
function regist() {
    if(getStudentId()!=null){
        registContest();
    }else{
        $("#isContestLogin").html("请先登录");
    }
}
