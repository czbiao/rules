/**
 * Created by GF on 2017/6/24.
 */
function isRegisted() {
    var test_Id=getContestId();
    var student_Id=getStudentId();
    var contestString = {studentId: student_Id, testId: test_Id};
    var contestregistion = $.toJSON(contestString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'test/isRegisted',
        dataType: 'json',
        method: 'post',
        data:contestregistion,
        success: function (data) {
            if(data.studentId==student_Id) {
                $('#isRegisted').html("已报名");
            }else{
                $('#isRegisted').html("未报名");
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