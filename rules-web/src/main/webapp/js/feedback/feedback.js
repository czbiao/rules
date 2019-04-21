/**
 * Created by linjingshan on 2017/7/3.
 */
function feedbackClick() {
    var name = $('#name').val();
    var email = $('#email').val();
    var content = $('#message').val();
    if (name == "" || email == "" || content == "") {
        $('#submitMessage').html("姓名、邮箱或内容不能为空");
    } else {
        $('.message').attr("class","submitedmessage");
        feedback(name, email, content);
    }
}
function feedback(name, email, content) {
    var feedbackString = {name: name, email: email, content: content};
    var feedback = $.toJSON(feedbackString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'account/insertFeedback',
        dataType: 'json',
        method: 'post',
        data: feedback,
        success: function (data) {
            if (data.result == "success") {
                $('#feedback').hide();
                $('.message').show();
                $('#submitMessage').html("");
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