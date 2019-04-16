/**
 * Created by CMM on 2017/7/5.
 */

//Sunss 似乎和前端显示脱节的通知

var flag1 = false;
var flag2 = false;
function getNoticeForPicture() {
    if (!flag1) {
        flag1 = true;
        $.ajax({
            url: '../notice/getPictureNotice',
            dataType: 'text',
            method: 'GET',
            success: function (data) {
                var pictureNotice = new Array;
                pictureNotice = JSON.parse(data);
                for (var i = 0; pictureNotice.length; i++) {
                    $('#backstage_notice_picture').append("<div id='" + pictureNotice[i].noticeId + "'>" + pictureNotice[i]['title'] + "<span style='float:right '><button class='btn btn-success btn-sm'>修改</button><button class='btn btn-danger btn-sm' onclick='deleteNotice(this)'>删除</button></span></div>");
                }

            },
            error: function (xhr) {
                // 导致出错的原因较多，以后再研究
                flag1 = false;
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
}

function getNoticeForText() {
    if (!flag2) {
        flag2 = true;
        $.ajax({
            url: '../notice/getAllTextNotice',
            dataType: 'text',
            method: 'GET',
            success: function (data) {
                var textNotice = new Array;
                textNotice = JSON.parse(data);
                for (var i = textNotice.length - 1; i >= 0; i--) {
                    $('#backstage_notice_text').append("<div id='" + textNotice[i].noticeId + "'>" + textNotice[i]['title'] + "<span style='float:right '><button class='btn btn-success btn-sm'>修改</button><button class='btn btn-danger btn-sm' onclick='deleteNotice(this)'>删除</button></span></div>");
                }
            },
            error: function (xhr) {
                // 导致出错的原因较多，以后再研究
                flag2 = false;
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
}
function deleteNotice(obj) {
    var noticeId = '';
    noticeId = obj.parentNode.parentNode.id;
    var noticeString = {noticeId: noticeId};
    var notice = $.toJSON(noticeString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: '../notice/deleteNotice',
        dataType: 'json',
        method: 'POST',
        data: notice,
        success: function (data) {
            $('#' + obj.parentNode.parentNode.id).hide();
        },
        error: function (xhr) {
            alert("删除失败");
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

/**
 * Date:2017-08-01 18:46:30
 * Anthor：linjingshan
 */
function publishNotice() {
    var picObj = $("#noticePicture")[0].files[0];
    var title = $("#publish_notice_title")[0].value;
    //  source通过登录的信息获取，即管理员id
    var source = 1;
    var content = $("#publish_notice_content")[0].value;
    var data = {title: title, source: source, content: content};
    $.ajaxFileUpload({
        url: '../notice/publishNotice',
        secureuri: false,
        data: data,
        fileElementId: 'noticePicture',
        dataType: 'json',
        success: function (data, status) {
            console.log(data);
        },
        error: function (data, status, e) {
            console.log(e);
        }
    })
}