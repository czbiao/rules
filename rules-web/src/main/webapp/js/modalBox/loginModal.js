/**
 * Created by linjingshan on 2017/6/21.
 */
<!-- 模态框居中 -->
$(function () {
    $('#loginModal').modal('hide');
    $('#exitModal').modal('hide');
});
$(function () {
    // 测试 bootstrap 居中
    $('#loginModal').on('show.bs.modal', function () {
        var $this = $(this);
        var $modal_dialog = $this.find('.modal-dialog');
        var m_top = ($(window).height() - $modal_dialog.height()) / 3;
        $modal_dialog.css({
            'margin': m_top + 'px auto'
        });
    });

    $('#loginModal').on('shown.bs.modal', function () {
        $('#loginModal').bind('keydown', function (event) {
            if (event.keyCode == "13")
                $('#loginBT').click();
        });
    });


});
function exitModal() {
    $('#exitModal').on('show.bs.modal', function () {
        var $this = $(this);
        var $modal_dialog = $this.find('.modal-dialog');
        var m_top = ($(window).height() - $modal_dialog.height()) / 3;
        $modal_dialog.css({
            'margin': m_top + 'px auto'
        });
    });
}


<!-- 模态框居中结束 -->