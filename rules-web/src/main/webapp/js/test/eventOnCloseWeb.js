/**
 * Created by GF on 2017/6/29.
 */
$(function () {
        if(getCookie('signon')!=undefined) {
            if (getScore() == undefined) {
                $(window).bind('beforeunload', function (e) {
                    var studentId = getStudentId();
                    var testId = getTestId();
                    var testRecordString = {studentId: studentId, testId: testId};
                    var testRecord = $.toJSON(testRecordString);
                    $.ajaxSetup({contentType: 'application/json'});
                    $.ajax({
                        url: 'test/insertSubmitTime',
                        dataType: 'json',
                        method: 'post',
                        data: testRecord,
                        success: function (data) {
                            if (data.result == "success") {
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
            }
        }
    })

$(function () {
    if(getCookie('signon')!=undefined) {
        if (getScore() == undefined) {
            $(window).bind('beforeunload', function (e) {
                var studentId = getStudentId();
                var testId = getContestId();
                var testRecordString = {studentId: studentId, testId: testId};
                var testRecord = $.toJSON(testRecordString);
                $.ajaxSetup({contentType: 'application/json'});
                $.ajax({
                    url: 'test/insertSubmitTime',
                    dataType: 'json',
                    method: 'post',
                    data: testRecord,
                    success: function (data) {
                        if (data.result == "success") {
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
        }
    }
})
