/**
 * Created by CMM on 2017/6/26.
 */
function getNotice(noticeId) {
    if (this.noticeId != noticeId) {
        this.noticeId = noticeId;
        $('#noticeTitle').html("");
        $('#noticeContent').html("");
        $.ajax({
            url: 'notice/getNotice',
            dataType: 'text',
            method: 'GET',
            data: {noticeId: noticeId},
            success: function (data) {
                var textNotice = JSON.parse(data);
                $('#noticeTitle').html(textNotice.title);
                $('#noticeContent').html(textNotice.content);
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
}