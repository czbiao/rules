function addTitle() {
    var name = $("#titleName").val();
    var answer = $("#titleAnswer").val();
    var type = $("#titleType").val();
    var score = $("#titleScore").val();
    var url = ['../title/addTitle', '../title/addAdditiontitle'];
    if (name == undefined || name == "") {
        $("#addTitleMsg").html("题目名称不能为空");
        $("#addTitleMsg").attr("class", "text-danger");
        return;
    }
    if (type == 0) {
        url = url[0];
    } else {
        url = url[1];
    }

    var json = {name: name, answer: answer, type: type, score: score}
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: url,
        dataType: 'json',
        method: 'POST',
        data: JSON.stringify(json),
        success: function (data) {
            if (data.message != "error"){
                clear();
                $("#addTitleMsg").html("试题添加成功");
                $("#addTitleMsg").attr("class", "text-info");
            } else {
                $("#addTitleMsg").html("试题添加失败");
                $("#addTitleMsg").attr("class", "text-danger");
            }
        },
        error: function (xhr) {
            $("#addTitleMsg").html("试题添加失败");
            $("#addTitleMsg").attr("class", "text-danger");
        }

    })

}
function clear() {
    var name = $("#titleName").val("");
    var answer = $("#titleAnswer").val("");
}