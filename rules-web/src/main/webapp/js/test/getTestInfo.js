/**
 * Created by linjingshan on 2018/6/24.
 */
Date.prototype.format = function(format) {
    var o = {
        "M+": this.getMonth() + 1,
        // month
        "d+": this.getDate(),
        // day
        "h+": this.getHours(),
        // hour
        "m+": this.getMinutes(),
        // minute
        "s+": this.getSeconds(),
        // second
        "q+": Math.floor((this.getMonth() + 3) / 3),
        // quarter
        "S": this.getMilliseconds()
        // millisecond
    };
    if (/(y+)/.test(format) || /(Y+)/.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
};
var testId='';
var duration_time;
var test_endTime;
$(function () {
    $.ajax({
        url: 'test/getTestInfo',
        dataType: 'text',
        method: 'GET',
        success: function (data) {
            var testInfo = JSON.parse(data);
            if(testInfo.name!=null) {
                var startTime = (new Date(testInfo.startTime)).format("yyyy-MM-dd hh:mm:ss");
                var endTime = (new Date(testInfo.endTime)).format("yyyy-MM-dd hh:mm:ss");
                $('#testTime').append("时间:" + startTime + "--" + endTime);
                // $('#testGrade').append("考试要求:" + testInfo.grade + "级全体学生");
                $('#testDuration').append("时间:" + testInfo.duration + "分钟");
                $('#testName').append("考试名称:" + testInfo.name);
                $('#test_name').append("考试名称:" + testInfo.name);
                setTestId(testInfo.testId);
                duration_time = testInfo.duration;
                test_endTime=testInfo.endTime;
            }else{
                $('#testInfo').html("暂无考试");
                $('#yesToTest').hide();
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
})
function setTestId(testId) {
    this.testId=testId;
}
function getTestId() {
    return testId;
}
function getTestEndTime() {
    return test_endTime;
}
function getDuration() {
    return duration_time;
}
//判断考试时间未开始还是已结束
$(function () {
    $.ajax({
        url: 'test/testTimeStatus',
        dataType: 'text',
        method: 'GET',
        //Sunss
        success: function (data) {
            var status=JSON.parse(data);
            switch (status.result){
                case "未开始":
                    $('#yesToTest').hide();
                    $('#tested').html("未开始");
                    $('#noToTest').show();
                    break;
                case "已结束":
                    $('#yesToTest').hide();
                    $('#tested').html("已结束");
                    $('#noToTest').show();
                    break;
                case "error":
                    break;
                case "success":
                    break;
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
})