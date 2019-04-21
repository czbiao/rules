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
var contestId='';
var contestDuration;
var contestEndTime;
$(function () {
    $.ajax({
        url: 'test/getContestInfo',
        dataType: 'text',
        method: 'GET',
        success: function (data) {
            var contestInfo = JSON.parse(data);
            if(contestInfo.name!=null) {
                var startTime = (new Date(contestInfo.startTime)).format("yyyy-MM-dd hh:mm:ss");
                var endTime = (new Date(contestInfo.endTime)).format("yyyy-MM-dd hh:mm:ss");
                $('#contestTime').append("考试时间:" + startTime + "--" + endTime);
                // $('#contestGrade').append("考试要求:" + contestInfo.grade + "级全体学生");
                $('#contestDuration').append("时间:" + contestInfo.duration + "分钟");
                $('#contestName').append("考试名称:" + contestInfo.name);
                $('#contest_name').append("考试名称:" + contestInfo.name);
                contestId = contestInfo.testId;
                contestDuration=contestInfo.duration;
                contestEndTime=contestInfo.endTime;
            }else{
                $('#contestInfo').html("暂无竞赛");
                $('#regist').hide();
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
function getContestId() {
    return contestId;
}
function getContestDuration() {
    return contestDuration;
}
function getContestEndTime() {
    return contestEndTime;
}