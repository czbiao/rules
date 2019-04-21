/**
 * Created by linjingshan on 2018/6/24.
 */
var start_time;
var submit_time;
function getTestRecord(studentId) {
    var testId=getTestId();
    var testRecordString = {studentId: studentId, testId: testId};
    var testRecord = $.toJSON(testRecordString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'test/testRecordInfo',
        dataType: 'json',
        method: 'post',
        async: false,
        data:testRecord,
        //MY_FLAG
        success: function (data) {
            // Sunss Test
            // data.score = 100;
            if(data.score==null) {
                // $('#isTested').html("未考试");
                start_time=data.startTime;
                submit_time=data.submitTime;
            }else if(data.score==-1){ // 从现在的需求来看是不存在试卷批阅的//Sunss
                $('#isTested').html("试卷批阅中");
                $('#yesToTest').hide();
                $('#noToTest').show();
            }else{
                // $('#isTested').html("已考试");
                // $('#testRecord').html(data.score);
                // $('#yesToTest').hide();
                // $('#noToTest').show();
                $('#isTested').hide();
                $('#noToTest').hide();
                $('#testRecord').html(data.score);
                $('#yesToTest').show();
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
function getStartTime() {
    return start_time;
}
function getSubmitTime() {
    return submit_time;
}
