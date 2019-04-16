var student_id;
var account;

function register() {
    var studentId; studentId = $('#studentId2').val().trim();
    var password; password = $('#password2').val();
    var userName; userName = $('#userName').val().trim();
    var college; college = $('#college').value;
    var clazz; clazz = $('#clazz').val().trim();

    $('#registerMessage').css("display",'inline-block');
    $('#registerMessage').html("");

    // 这里要分开来一个注册用户信息，一个注册账号密码
    // 主要检查项：
    // 1. 是否输入位十位学号
    // 2. 

    if(studentId.length !== 10){
        $('#registerMessage').html("请输入正确的十位学号");
    }else if(!judgeNumber(studentId)){
        $('#registerMessage').html("请输入正确的十位学号");
    } else if(college=null){ // 检查是否选了学院
        $('#registerMessage').html("请选择学院");
    } else if(studentId==="" || password==="" || userName==="" || college==="" || clazz===""){ // 检查是否输入完整
        $('#registerMessage').html("请先输入完整信息");
    } else{
        if(studentId[0]="0"){studentId[0]="9"};
        // 一定要先插入信息，因为账户密码是以userfinfo里的学号为外键的
        var userInfoString = {studentId: studentId, username: userName, sex: 0, clazz: clazz,  college: college};
        var userInfoJson = $.toJSON(userInfoString);
        registerInfoForJson(userInfoJson);
        var accountInfoString = {studentId: studentId, password: password};
        var accountInfoJson = $.toJSON(accountInfoString);
        registerAccountForJson(accountInfoJson);
    }
}

// 存入用户信息
function registerInfoForJson(userInfoJson) {
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'account/registerForInfo',
        dataType: 'json',
        method: 'POST',
        data: userInfoJson,
        success: function (data) {
            if (data.code === undefined) {
                $('#registerModal').modal('hide');
            } else {
                $('#registerMessage').html("该学号已注册");
                alert("该学号已被注册");
            }
        },    
        error: function (xhr) {
            // 导致出错的原因较多，以后再研究
            $('#registerMessage').html("该学号已注册");
            // alert('出错了，请刷新重试或截图反馈');
            alert("该学号已被注册");
        }
    }).done(function (data) {
        // 请求成功后要做的工作
        console.log('success');
    }).fail(function () {
        // 请求失败后要做的工作
        console.log('error');
        $('#registerMessage').html("该学号已注册");
    }).always(function () {
        // 不管成功或失败都要做的工作
        console.log('complete');
    });
}

// 存入账号密码
function registerAccountForJson(accountInfoJson) {
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'account/registerForAccount',
        dataType: 'json',
        method: 'POST',
        data: accountInfoJson,
        success: function (data) {
            if (data.code === undefined) {
                $('#registerModal').modal('hide');
            } else {
                $('#registerMessage').html("该学号已注册！");
                alert("该学号已被注册");
            }
        },
        error: function (xhr) {
            // 导致出错的原因较多，以后再研究
            $('#registerMessage').html("该学号已注册");
            // alert('出错了，请刷新重试或截图反馈');
            alert("该学号已被注册");
        }
    }).done(function (data) {
        // 请求成功后要做的工作
        console.log('success');
    }).fail(function () {
        // 请求失败后要做的工作
        console.log('error');
        $('#registerMessage').html("该学号已注册");
    }).always(function () {
        // 不管成功或失败都要做的工作
        console.log('complete');
    });
}


// 判断是否为数字串
function judgeNumber(str) {
    var len = str.length;
    for(var i=0; i<len; i++){
        if(str[i].charCodeAt<48 || str[i].charCodeAt>57){
            return false;
        }
    }
    return true;
}
$(document).ready(function(){
    var colleges=new Array("资源与安全工程学院","资源加工与生物工程学院","肿瘤研究所","中国村落文化研究中心","医学遗传学国家重点实验室","医学检验系","冶金与环境学院","药学院","信息与网络中心","信息科学与工程学院","信息安全与大数据研究院","湘雅医院","湘雅医学院海口医院","湘雅医学院附属株洲医院","湘雅医学院","湘雅三医院","湘雅护理学院","湘雅国际转化医学联合研究院","湘雅二医院","物理与电子学院","文学与新闻传播学院","卫生部肝胆肠外科研究中心","外国语学院","土木工程学院","体育教研部","数学与统计学院","生殖与干细胞工程研究所","生命科学学院（医学遗传学国家重点实验室）","生命科学学院","商学院","软件学院","软件工程学院","轻合金研究院","能源科学与工程学院","马克思主义学院","隆平分院","临床药理研究所","口腔医学院","军事教研室","交通运输工程学院","建筑与艺术学院","基础医学院","机电工程学院","化学化工学院","护理学院","航空航天学院","国际合作与交流处","公共卫生学院","公共管理学院","高等教育科学研究所","粉末冶金研究院","分子药物与治疗研究所","法学院","地球科学与信息物理学院","材料科学与工程学院","本科生院",
        "爱尔眼科学院");
        for(var i=0;i<colleges.length;i++)
        {
            $("#college").append(function(n){
              return"<option value="+colleges[i]+">"+colleges[i]+"</option>";
            });

        };

})
