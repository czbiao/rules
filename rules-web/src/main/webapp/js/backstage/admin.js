/**
 * Created by linjingshan on 2018/8/3.
 */
function insertAdminAjax(account,password,username,role,rolerange) {

    var adminString={account:account,password:password,username:username,role:role,rolerange:rolerange};
    var admin=JSON.stringify(adminString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: '../account/insertAdmin',
        dataType: 'json',
        method: 'POST',
        data: admin,
        success: function (data) {
            if(data.result=="success"){
                testOperateModal();
                $('#test_operate_header').html("添加");
                $('#test_operate_message').html("管理员添加成功");
                $('#testOperateModal').modal('show');
            }else{
                testOperateModal();
                $('#test_operate_header').html("添加");
                $('#test_operate_message').html("该管理员已存在");
                $('#testOperateModal').modal('show');
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
function roleCheck() {
    var role=$("input[name='role']:checked").val();
    switch (role){
        case "1":
            $('#role_college').attr("style","display: none");
            $('#role_major').attr("style","display: none");
            $('#role_grade').attr("style","display: none");
            $('#role_class').attr("style","display: none");
            break;
        case "2":
            $('#role_college').attr("style","display: none");
            $('#role_major').attr("style","display: none");
            $('#role_grade').attr("style","display: none");
            $('#role_class').attr("style","display: none");
            $('#role_college').attr("style","");
            break;
        case "3":
            $('#role_college').attr("style","display: none");
            $('#role_major').attr("style","display: none");
            $('#role_grade').attr("style","display: none");
            $('#role_class').attr("style","display: none");
            $('#role_college').attr("style","");
            $('#role_major').attr("style","");
            $('#role_grade').attr("style","");
            break;
        case "4":
            $('#role_college').attr("style","display: none");
            $('#role_major').attr("style","display: none");
            $('#role_grade').attr("style","display: none");
            $('#role_class').attr("style","display: none");
            $('#role_college').attr("style","");
            $('#role_major').attr("style","");
            $('#role_grade').attr("style","");
            $('#role_class').attr("style","");
            break;
    }
}
//获取select中的所有item，并且组装所有的值为一个字符串，值与值之间用;隔开
function getAllItemValuesByString(objSelectId) {
    var selectItemsValuesStr = "";
    var list = new Array();
    $(objSelectId).each(function(){
        list.push($(this).val());
    });
    var selectItemsValuesStr1=list.join("#");
    selectItemsValuesStr=selectItemsValuesStr1.replace(/,/g,"#");
    return selectItemsValuesStr;
}
function displayInsertMsg() {
    $('#insertAdmin_msg').html("");
}
function insertAdmin() {
    var account=$('#admin_account').val();
    var password=$('#admin_password').val();
    var username=$('#admin_username').val();
    var role=$("input[name='role']:checked").val();
    var rolerange;
    if(account==""||password==""||username==""){
        $('#insertAdmin_msg').html("账号、用户名或密码为空");
    }else{
        switch (role){
            case "1":
                rolerange="@hstc;@hstc;@hstc;@hstc";
                break;
            case "2":
                rolerange= getAllItemValuesByString(role_college)+";@hstc;@hstc;@hstc";
                break;
            case "3":
                var rolerange1= getAllItemValuesByString(role_college);
                var rolerange2=getAllItemValuesByString(role_major);
                var rolerange3= getAllItemValuesByString(role_grade);
                rolerange=rolerange1+";"+rolerange2+";"+rolerange3+";@hstc";
                break;
            case "4":
                var rolerange1= getAllItemValuesByString(role_college);
                var rolerange2= getAllItemValuesByString(role_major);
                var rolerange3= getAllItemValuesByString(role_grade);
                var rolerange4= getAllItemValuesByString(role_class);
                rolerange=rolerange1+";"+rolerange2+";"+rolerange3+";"+rolerange4;
                break;
        }
        if(admin.role<=role) {
            insertAdminAjax(account, password, username, role, rolerange);
        }else{
            testOperateModal();
            $('#test_operate_header').html("添加");
            $('#test_operate_message').html("管理员权限不够");
            $('#testOperateModal').modal('show');
        }
    }
}
var personalPopFlag = false;
function adminPopover() {
    getAdmin();
    var roleString;
    switch (admin.role){
        case "0":
            roleString="系统管理员";
            break;
        case "1":
            roleString="校领导";
            break;
        case "2":
            roleString="院领导";
            break;
        case "3":
            roleString="辅导员";
            break;
        case "4":
            roleString="教师";
            break;
        default:
            break;
    }
    $("[data-toggle='personal']")
        .popover(
            {
                trigger: "click",
                html: true,
                container: 'body',
                content: "姓名：<label >" + admin.username + "</label> <br>帐号：<label>" +  admin.account + "</label> <br> 权限：<label>" +  roleString + "</label><br> "
            });
    if (!personalPopFlag) {
        var btn = document.getElementById("personal");
        btn.click();
    }
    personalPopFlag = true;
}
var admin;
function getAdmin() {
    admin={account:document.getElementById("account").innerText,password:document.getElementById("password").innerText,username:document.getElementById("username").innerText,role:document.getElementById("role").innerText,rolerange:document.getElementById("rolerange").innerText}
}
$(function () {
    getAdmin();
})