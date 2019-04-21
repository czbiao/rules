/**
 * Created by linjingshan on 2017/6/25.
 */
$(function () {
    $.ajax({
        url: 'notice/getAllTextNotice',
        dataType: 'text',
        method: 'GET',
        success: function (data) {
            var textNotice = new Array;
            textNotice = JSON.parse(data);
            for (var i = textNotice.length - 1; i >= 0; i--) {
                var date = new Date(textNotice[i].submitTime).format("yyyy-MM-dd");
                $('#textNotice').append("<tr>" +
                    "<td align=\"center\" style=\"width: 5%\"><i class=\"fa fa-hand-o-right\"></i></td>" +
                    "<td align=\"left\" style=\"width: 75%\"><a style=\"color: #999\" href=\"#\" data-toggle=\"modal\" data-target=\"#noticeModal\" onclick=\"getNotice(" + textNotice[i].noticeId + ")\">" + textNotice[i].title + "</a></td>" +
                    "<td align=\"center\" style=\"width: 20%\">" + date + "</td>" +
                    "</tr>");
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