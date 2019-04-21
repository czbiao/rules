/**
 * Created by linjingshan on 2018/6/21.
 */
$(function () {
    $.ajax({
        url: 'notice/getPictureNotice',
        dataType: 'text',
        method: 'GET',
        success: function (data) {
            var pictureNotice = new Array;
            pictureNotice = JSON.parse(data);
            for (var i = 0; pictureNotice.length; i++) {
                $('#pictureNotice').append("<div class=\"item\"><img alt=\"\" src=\"" + pictureNotice[i].picture + "\"><div class=\"carousel-caption\"><p>1</p></div></div>");
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