/**
 * Created by CMM on 2017/6/22.
 */
// 题目组
var practiceTitle;
var practiceBlankTitle;
var practiceShortTitle;
// 用户答案组,返回的信息定义为局部变量,选择题运作模式不同
var answerBlankTitle;
var answerShortTitle;
// 分页组
var choicepage=1;
var blankpage=1;
var shortpage=1;

// 深拷贝函数 貌似好像写得是有问题的 所以用JSON的解析吧
function deepClone(data){
    var type = getType(data);
    var obj;
    if(type === "array"){
        obj = [];
    } else if(type === "object"){
        obj = {};
    } else {
        // 不再具有下一层次
        return data;
    }
    if(type === "array"){
        for(var i = 0, len = data.length; i < len; i++){
            obj.push(deepClone(data[i]));
        }
    } else if(type === 'object'){
        for(var key in data){
            obj[key] = deepClone(data[key]);
        }
    }
    return obj;
}
function getType(data) {
    return typeof (data);
}

function enterTitle() {
    // Sunss 这里有个小Bug
    if (getStudentId() != null) {
        $('#title').html("");
        $("#isSimulationLogin").html("&nbsp;");
        createQuestionBank('单选题练习');
        $('#enterSimulation').attr("data-toggle", 'modal');
        $('#enterSimulation').attr("data-target", '#titleModal');
    } else {
        $('#enterSimulation').attr("data-toggle", '');
        $('#enterSimulation').attr("data-target", '');
        $("#isSimulationLogin").html("请先登录");
    }
}
function enterBlankTitle() {
    if (getStudentId() != null) {
        $('#title').html("");
        blankTitlePractice('判断题练习');
        $("#isSimulationBlankLogin").html("&nbsp;");
        $('#enterSimulationBlank').attr("data-toggle", 'modal');
        $('#enterSimulationBlank').attr("data-target", '#titleModal');
    } else {
        $('#enterSimulationBlank').attr("data-toggle", '');
        $('#enterSimulationBlank').attr("data-target", '');
        $("#isSimulationBlankLogin").html("请先登录");
    }
}
function enterShortTitle() {
    if (getStudentId() != null) {
        $('#title').html("");
        shortTitlePractice('多选题练习');
        $("#isSimulationShortLogin").html("&nbsp;");
        $('#enterSimulationShort').attr("data-toggle", 'modal');
        $('#enterSimulationShort').attr("data-target", '#titleModal');
    } else {
        $('#enterSimulationShort').attr("data-toggle", '');
        $('#enterSimulationShort').attr("data-target", '');
        $("#isSimulationShortLogin").html("请先登录");
    }
}

function submitPractice() {
    if(document.getElementById("submitTitleBT").innerText==='已完成'){
        exitPractice();
    }else if(document.getElementById("submitTitleBT").innerText==='提交'){
        var str = document.getElementById("subjectTitle").innerText;
        if(str === "单选题练习") {
            submitTitle(str);
        } else {
            submitAdditiontitle(str);
        }
    } else {
        var str = document.getElementById("subjectTitle").innerText;
        if (str === "多选题练习") {
            shortTitlePractice(str);
        } else if (str === "判断题练习") {
            blankTitlePractice(str);
        } else if (str === "单选题练习") {
            createQuestionBank(str)
        }
    }
}
function submitAdditiontitle(subjectTitle) {
    if(subjectTitle === "判断题练习"){
        addAnswerToBlankTitle();
        blankTitleAnswer(subjectTitle);
    }else {
        addAnswerToShortTitle();
        shortTitleAnswer(subjectTitle);
    }
}

function addAnswerToBlankTitle(){
    for(var i=0;i<practiceBlankTitle.length;i++){
        // console.log(practiceBlankTitle.length);
        var blankAnswer;
        // console.log($("#"+"practiceBlankAnswer"+i+k).length);
        // Sunss知道之前那个bug产生的原因了，因为本来就是空的呀...
        // length取的是有没有框
        var ans = $("input:radio[name='"+practiceBlankTitle[i].titleId+"']:checked").val();
        // console.log("ans: " + ans);
        if(ans === "对"){
            blankAnswer = "T";
        }else if(ans === "错"){
            blankAnswer = "F";
        }else{
            blankAnswer = "@hstc"
        }
        // console.log(blankAnswer);
        // console.log(practiceBlankTitle[i].answer);
        // debug(ans);
        // debug($("input:radio[name='"+practiceBlankTitle[i].titleId+"']:checked").val());
        answerBlankTitle[i].answer = blankAnswer;
        // console.log("answerBlankTitle[i].answer: " + answerBlankTitle[i].answer);
    }
}
function addAnswerToShortTitle() {
    for(var i=0;i<practiceShortTitle.length;i++){
        var shortAnswer = "";
        var ans = "";
        $("input:checkbox[name='"+practiceShortTitle[i].titleId+"']:checked").each(function () {
            ans += $(this).val();
        })
        if(ans === ""){
            shortAnswer = "@hstc";
        }else {
            shortAnswer = ans;
        }
        console.log(shortAnswer);
        answerShortTitle[i].answer = shortAnswer;
    }
}

function createQuestionBank(subjectTitle) {
    $('#subjectTitle').html(subjectTitle);
    $('#title').html("");
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practice',
        dataType: 'text',
        method: 'get',
        data:{
            // page:1,
            page:choicepage,
            count:10,
            type:0,
        },
        // Sunss 生成选项的
        success: function (data) {
            var Result = JSON.parse(data);
            practiceTitle = Result.object;
            for (var i = 0; i < practiceTitle.length; i++) {
                $('#title').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\"><span>" + ((choicepage-1)*10 + i + 1) + ".</span>" + practiceTitle[i].name + "</th>" +
                    "</tr>" +
                    "<br>");
                for (var j = 0; j < 4; j++) {
                    var str = "A";
                    practiceTitle[i].options[j].checked = 0;
                    $('#title').append("<tr><td><input name=\""+practiceTitle[i].titleId+"\" type=\"radio\" onclick=\"addTitleToList("+i+","+j+")\"/>" + String.fromCharCode(str.charCodeAt() + j) + ".&nbsp;" + practiceTitle[i].options[j].content + "&nbsp;</td></tr>");
                }
                $('#title').append("</table>");
            }
            $('#submitTitleBT').attr("class", "btn btn-primary");
            $('#submitTitleBT').html("提交");
            if($('#title').html()==""){
                $('#submitTitleBT').attr("class", "btn btn-success");
                $('#submitTitleBT').html("已完成");
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
function blankTitlePractice(subjectTitle){
    $('#subjectTitle').html(subjectTitle);
    $('#title').html("");
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practice',
        dataType: 'text',
        method: 'get',
        data:{
            page:blankpage,
            count:10,
            type:1,
        },
        success: function (data) {
            var Result = JSON.parse(data);
            practiceBlankTitle = Result.object;
            // answerBlankTitle = deepClone(practiceBlankTitle);
            var str = JSON.stringify(practiceBlankTitle);
            answerBlankTitle = JSON.parse(str);
            for (var i = 0; i < practiceBlankTitle.length; i++) {
                $('#title').append("<table style=\"font-family: '宋体'; font-size: 16px; cellpadding: '5'\">" +
                    "<tr>" +
                    "<th colspan=\"4\"><span>" + ((blankpage-1)*10+i + 1) + ".</span>" + practiceBlankTitle[i].name.replace(/#/g, "") + "</th>" +
                    "</tr>" +
                    "<br>");
                // 弃用填空题，改用选择的形式
                // $('#title').append("<textarea rows='1' cols='35' id=\"practiceBlankAnswer"+i+"\"></textarea>");
                $('#title').append("<tr>" +
                    "<td width='150'><input name=\""+ practiceBlankTitle[i].titleId + "\" type=\"radio\" value='对'>"  + "对" + "&nbsp;</td>" +
                    "<td width='150'><input name=\""+ practiceBlankTitle[i].titleId + "\" type=\"radio\" value='错'>"  + "错" + "&nbsp;</td>" +
                    "</tr>");
                $('#title').append("</table>");
            }
            $('#submitTitleBT').attr("class", "btn btn-primary")
            $('#submitTitleBT').html("提交");
            if($('#title').html()==""){
                $('#submitTitleBT').attr("class", "btn btn-success")
                $('#submitTitleBT').html("已完成");
            }
            // blankpage=blankpage+1;
            // addAnswerToBlankTitle()
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
function shortTitlePractice(subjectTitle){
    $('#subjectTitle').html(subjectTitle);
    $('#title').html("");
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practice',
        dataType: 'text',
        method: 'get',
        data:{
            page:shortpage,
            count:10,
            type:3,
        },
        success: function (data) {
            var Result = JSON.parse(data);
            practiceShortTitle = Result.object;
            var str = JSON.stringify(practiceShortTitle);
            answerShortTitle = JSON.parse(str);
            for (var i = 0; i < practiceShortTitle.length; i++) {
                var contentList = practiceShortTitle[i].name.split("#");
                $('#title').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\"><span>" + ((shortpage-1)*10+i + 1) + ".</span>" + contentList[0] + "</th>" +
                    "</tr>" +
                    "<br>");
                $('#title').append("<tr>" +
                    "<td><input name=\""+ practiceShortTitle[i].titleId + "\" type=\"checkbox\" value='A'>"  + contentList[1] + "&nbsp;</td>" +
                    "<td><input name=\""+ practiceShortTitle[i].titleId + "\" type=\"checkbox\" value='B'>"  + contentList[2] + "&nbsp;</td>" +
                    "</tr>" +
                    "<tr>" +
                    "<td><input name=\""+ practiceShortTitle[i].titleId + "\" type=\"checkbox\" value='C'>"  + contentList[3] + "&nbsp;</td>" +
                    "<td><input name=\""+ practiceShortTitle[i].titleId + "\" type=\"checkbox\" value='D'>"  + contentList[4] + "&nbsp;</td>" +
                    "</tr>");
                $('#title').append("</table>");
            }
            $('#submitTitleBT').attr("class", "btn btn-primary")
            $('#submitTitleBT').html("提交");
            if($('#title').html()==""){
                $('#submitTitleBT').attr("class", "btn btn-success")
                $('#submitTitleBT').html("已完成");
            }
            // shortpage = shortpage + 1;
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

function submitTitle(subjectTitle) {
    $('#subjectTitle').html(subjectTitle);
    $('#title').html("");
    this.account = getAccount();
    var accountTitles = {account: this.account, titleList: practiceTitle};
    var accountTitlesJson = $.toJSON(accountTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practiceAnswer',
        dataType: 'json',
        method: 'POST',
        data: accountTitlesJson,
        success: function (data) {
            var correctTitleList = data.titleList;
            // console.log(correctTitleList.length);
            for (var i = 0; i<practiceTitle.length; i++) {
                $('#title').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\" id=\"practiceTitle"+i+"\"><span>" + ((choicepage-1)*10 + i + 1) + ".</span>" + practiceTitle[i].name + "</th>" +
                    "</tr>" +
                    "<br>");
                var userAnswer = -1, standAnswer = 0;
                console.log(i+1);
                for (var j = 0; j < 4; j++) {
                    var str = "A";
                    $('#title').append("<tr><td><input name=\"" + practiceTitle[i].titleId +  "\" type=\"radio\" >" + String.fromCharCode(str.charCodeAt() + j) + ".&nbsp;" + practiceTitle[i].options[j].content + "&nbsp;</td></tr>");
                    // 遇到惊天神奇无敌大Bug了,标记个时间留念一下,2018/4/19 16:51 好吧是我自己太傻了,也记录一下2018/4/19 17:22
                    if(correctTitleList[i].options[j].checked){
                        $("input:radio[name='"+practiceTitle[i].titleId+"']").eq(j).attr('checked', 'true');
                    }
                    if(practiceTitle[i].options[j].checked){ userAnswer = j; }
                    if(correctTitleList[i].options[j].checked) { standAnswer = j; }
                    // debug(practiceTitle[i].options[j].checked);
                    // debug(correctTitleList[i].options[j].checked);
                }
                if(userAnswer !== standAnswer){
                    $("#" + "practiceTitle" + i).css("color","red");
                }
                $('#title').append("</table>");
            }
            $('#submitTitleBT').attr("class", "btn btn-success")
            $('#submitTitleBT').html("下一组");
            if($('#title').html()==""){
                $('#submitTitleBT').attr("class", "btn btn-success")
                $('#submitTitleBT').html("已完成");
            }
            practiceTitle = null;
            correctTitleList = null;
            choicepage = choicepage + 1;
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
function blankTitleAnswer(subjectTitle) {
    $('#subjectTitle').html(subjectTitle);
    $('#title').html("");
    // addAnswerToBlankTitle(); // 这里会出现空指针..因为我要跳页了
    this.account = getAccount();
    var accountTitles = {account: this.account, additiontitleList: answerBlankTitle};
    var accountTitlesJson = $.toJSON(accountTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practiceAnswer',
        dataType: 'json',
        method: 'POST',
        data: accountTitlesJson,
        success: function (data) {
            var res = data.blanksList;
            for (var i = 0; i < practiceBlankTitle.length; i++) {
                $('#title').append("<table style=\"font-family: '宋体'; font-size: 16px; \">" +
                    "<tr>" +
                    "<th colspan=\"4\" id=\"answerBlankTitle"+i+"\"><span>" + ((blankpage-1)*10+i + 1) + ".</span>" + practiceBlankTitle[i].name.replace(/#/g, "") + "</th>" +
                    "</tr>" +
                    "<br>");
                $('#title').append("<tr>" +
                    "<td width='150'><input name=\""+ practiceBlankTitle[i].titleId + "\" type=\"radio\">"  + "对" + "&nbsp;</td>" +
                    "<td width='150'><input name=\""+ practiceBlankTitle[i].titleId + "\" type=\"radio\">"  + "错" + "&nbsp;</td>" +
                    "</tr>");
                $('#title').append("</table>");
                // 首先answer是一个字符串，其次里面的逻辑肯定错了，它应该返回的都是0却返回了1
                // console.log(res[i].answer);
                // console.log(res[i].answer + typeof (res[i].answer));
                if(practiceBlankTitle[i].answer === "T"){
                    $("input:radio[name='"+practiceBlankTitle[i].titleId+"']").eq(0).attr("checked","true");
                }else{
                    $("input:radio[name='"+practiceBlankTitle[i].titleId+"']").eq(1).attr("checked","true");
                }
                if(res[i].answer === "0"){
                    $("#"+"answerBlankTitle"+i).css("color","red");
                }
                // console.log(practiceBlankTitle[i].name.replace(/#/g, ""));
                // console.log(practiceBlankTitle[i].answer);
            }
            practiceBlankTitle = null;
            answerBlankTitle = null;
            blankpage = blankpage + 1;
            $('#submitTitleBT').attr("class", "btn btn-success")
            $('#submitTitleBT').html("下一组");
            if($('#title').html()==""){
                $('#submitTitleBT').attr("class", "btn btn-success")
                $('#submitTitleBT').html("已完成");
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
function shortTitleAnswer(subjectTitle) {
    $('#subjectTitle').html(subjectTitle);
    $('#title').html("");
    this.account = getAccount();
    var accountTitles = {account: this.account, additiontitleList: answerShortTitle};
    var accountTitlesJson = $.toJSON(accountTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practiceAnswer',
        dataType: 'json',
        method: 'POST',
        data: accountTitlesJson,
        success: function (data) {
            var res = data.blanksList;
            for (var i = 0; i < practiceShortTitle.length; i++) {
                var contentList = practiceShortTitle[i].name.split("#");
                $('#title').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\" id=\"answerShortTitle"+i+"\"><span>" + ((shortpage-1)*10+i + 1) + ".</span>" + contentList[0] + "</th>" +
                    "</tr>" +
                    "<br>");
                $('#title').append("<tr>" +
                    "<td><input name=\""+ practiceShortTitle[i].titleId + "\" type=\"checkbox\">"  + contentList[1] + "&nbsp;</td>" +
                    "<td><input name=\""+ practiceShortTitle[i].titleId + "\" type=\"checkbox\">"  + contentList[2] + "&nbsp;</td>" +
                    "</tr>" +
                    "<tr>" +
                    "<td><input name=\""+ practiceShortTitle[i].titleId + "\" type=\"checkbox\">"  + contentList[3] + "&nbsp;</td>" +
                    "<td><input name=\""+ practiceShortTitle[i].titleId + "\" type=\"checkbox\">"  + contentList[4] + "&nbsp;</td>" +
                    "</tr>");
                $('#title').append("</table>");
                var ans = practiceShortTitle[i].answer;
                var preAns = preWork(ans);
                var j = 0;
                $("input:checkbox[name='"+practiceShortTitle[i].titleId+"']").each(function () {
                    if(preAns[j] !== "0"){
                        $(this).attr("checked",'true');
                    }
                    console.log(i);
                    j++;
                })
                // console.log("ans: " + ans);
                // console.log(ans.length);
                /*
                * 对checkbox的错误操作
                * */
                // for(var i=0; i<ans.length; i++){
                //     console.log("哈哈哈");
                //     if(ans[i] === "A"){
                //         $("input:checkbox[name='"+practiceShortTitle[i].titleId+"']").eq(0).attr("checked",'true');
                //     }else if(ans[i] === "B"){
                //         $("input:checkbox[name='"+practiceShortTitle[i].titleId+"']").eq(1).attr("checked",'true');
                //     }else if(ans[i] === "C"){
                //         $("input:checkbox[name='"+practiceShortTitle[i].titleId+"']").eq(2).attr("checked",'true');
                //     }else{ // ans[i] === "D"
                //         $("input:checkbox[name='"+practiceShortTitle[i].titleId+"']").eq(3).attr("checked",'true');
                //     }
                // }
                // console.log(res[i].answer + typeof (res[i].answer));
                if(res[i].answer === "0"){
                    $("#"+"answerShortTitle"+i).css("color","red");
                }
            }
            practiceShortTitle = null;
            answerShortTitle = null;
            shortpage = shortpage + 1;
            $('#submitTitleBT').attr("class", "btn btn-success")
            $('#submitTitleBT').html("下一组");
            if($('#title').html()==""){
                $('#submitTitleBT').attr("class", "btn btn-success")
                $('#submitTitleBT').html("已完成");
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

function addTitleToList(title, choice) {
    for (var i = 0; i < 4; i++) {
        if (i !== choice)
            practiceTitle[title].options[i].checked = 0;
    }
    practiceTitle[title].options[choice].checked = 1;
}
function preWork(str) {
    var preStr = "";
    var i = 0;
    var len = str.length;
    // 没有取到期待值时索引不可向下
    if(i>=len || str[i] !== "A"){
        preStr += "0";
    }else{
        preStr += "A";
        i++;
    }
    if(i>=len || str[i] !== "B"){
        preStr += "0";
    }else{
        preStr += "B";
        i++;
    }
    if(i>=len || str[i] !== "C"){
        preStr += "0";
    }else{
        preStr += "C";
        i++;
    }
    if(i>=len || str[i] !== "D"){
        preStr += "0";
    }else{
        preStr += "D";
        i++;
    }
    return preStr;
}
function debug(foo) {
    console.log(foo + " "+ typeof (foo));
}
function exitPractice() {
    $('#titleModal').modal('hide');
    var str = document.getElementById("subjectTitle").innerText;
    // Sunss 好像这样子写没什么用处呀，因为模态框跳出来的时候，其他地方又不能点
    // 而且吧，因为没有做分页，所以只能从头开始点起了
    // if (str == "多选题练习") {
    //     shortpage = 1;
    // } else if (str == "判断题练习") {
    //     blankpage = 1;
    // } else if (str == "单选题练习") {
    //     choicepage = 1;
    // }
    choicepage=1;
    blankpage=1;
    shortpage=1;
}

// for (var j = 0; j < 4; j++) {
//     var str = "A";
//     document.writeln(String.fromCharCode(str.charCodeAt() + j));
// }

// 代码备份
// function blankTitlePractice(subjectTitle){
//     $('#subjectTitle').html(subjectTitle);
//     $('#title').html("");
//     $.ajaxSetup({contentType: 'application/json'});
//     $.ajax({
//         url: 'title/practice',
//         dataType: 'text',
//         method: 'get',
//         data:{
//             page:blankpage,
//             count:10,
//             type:1,
//         },
//         success: function (data) {
//             var Result = JSON.parse(data);
//             practiceBlankTitle = Result.object;
//             for (var i = 0; i < practiceBlankTitle.length; i++) {
//                 $('#title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
//                     "<tr>" +
//                     "<th colspan=\"4\"><span>" + ((blankpage-1)*10+i + 1) + ".</span>" + practiceBlankTitle[i].name.replace(/#/g, "") + "</th>" +
//                     "</tr>" +
//                     "<br>");
//                 $('#title').append("<textarea rows='1' cols='35' id=\"practiceBlankAnswer"+i+"\">"+ practiceBlankTitle[i].answer+"</textarea>");
//                 $('#title').append("</table>");
//                 $("#"+"practiceBlankAnswer"+i).css("color","red");
//             }
//             $('#submitTitleBT').attr("class", "btn btn-success")
//             $('#submitTitleBT').html("下一组");
//             if($('#title').html()==""){
//                 $('#submitTitleBT').attr("class", "btn btn-primary")
//                 $('#submitTitleBT').html("已完成");
//             }
//             blankpage=blankpage+1;
//         },
//         error: function (xhr) {
//             // 导致出错的原因较多，以后再研究
//             alert('出错了，请刷新重试或截图反馈');
//         }
//     }).done(function (data) {
//         // 请求成功后要做的工作
//         console.log('success');
//     }).fail(function () {
//         // 请求失败后要做的工作
//         console.log('error');
//     }).always(function () {
//         // 不管成功或失败都要做的工作
//         console.log('complete');
//     });
// }
// else {
//     $.ajaxSetup({contentType: 'application/json'});
//     $.ajax({
//         url: 'title/wrongList',
//         dataType: 'json',
//         method: 'POST',
//         data: $.toJSON(getAccount()),
//         success: function (data) {
//             practiceTitle = data.object;
//             for (var i = 0; i < practiceTitle.length; i++) {
//                 $('#title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
//                     "<tr>" +
//                     "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + practiceTitle[i].name + "</th>" +
//                     "</tr>" +
//                     "<br>");
//                 for (var j = 0; j < 4; j++) {
//                     var str = "A";
//                     practiceTitle[i].options[j].checked = 0;
//                     $('#title').append("<tr><td><input name=\"" + practiceTitle[i].titleId + "\" type=\"radio\" onclick=\"addTitleToList(" + i + "," + j + ")\"/>" + String.fromCharCode(str.charCodeAt() + j) + ".&nbsp;" + practiceTitle[i].options[j].content + "&nbsp;</td></tr>"
//                     );
//                 }
//                 $('#title').append("</table>");
//             }
//         }
//         ,
//         error: function (xhr) {
//             // 导致出错的原因较多，以后再研究
//             alert('出错了，请刷新重试或截图反馈');
//         }
//     }).done(function (data) {
//         // 请求成功后要做的工作
//         console.log('success');
//     }).fail(function () {
//         // 请求失败后要做的工作
//         console.log('error');
//     }).always(function () {
//         // 不管成功或失败都要做的工作
//         console.log('complete');
//     });

// function caseTitlePractice(subjectTitle){
//     $('#subjectTitle').html(subjectTitle);
//     $('#title').html("");
//     $.ajaxSetup({contentType: 'application/json'});
//     $.ajax({
//         url: 'title/practice',
//         dataType: 'text',
//         method: 'get',
//         data:{
//             page:casepage,
//             count:5,
//             type:4,
//         },
//         success: function (data) {
//             var Result = JSON.parse(data);
//             var practiceCaseTitle = Result.object;
//             for (var i = 0; i < practiceCaseTitle.length; i++) {
//                 $('#title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
//                     "<tr>" +
//                     "<th colspan=\"4\"><span>" + ((casepage-1)*5+i + 1) + ".</span>" + practiceCaseTitle[i].name + "</th>" +
//                     "</tr>" +
//                     "<br>");
//                 $('#title').append("<br><textarea rows='5' cols='70' id=\"practiceCaseAnswer"+i+"\">"+practiceCaseTitle[i].answer+"</textarea>");
//                 $('#title').append("</table>");
//             }
//             $('#submitTitleBT').attr("class", "btn btn-success")
//             $('#submitTitleBT').html("下一组");
//             if($('#title').html()==""){
//                 $('#submitTitleBT').attr("class", "btn btn-primary")
//                 $('#submitTitleBT').html("已完成");
//             }
//             casepage=casepage+1;
//         },
//         error: function (xhr) {
//             // 导致出错的原因较多，以后再研究
//             alert('出错了，请刷新重试或截图反馈');
//         }
//     }).done(function (data) {
//         // 请求成功后要做的工作
//         console.log('success');
//     }).fail(function () {
//         // 请求失败后要做的工作
//         console.log('error');
//     }).always(function () {
//         // 不管成功或失败都要做的工作
//         console.log('complete');
//     });
// }
// function discussTitlePractice(subjectTitle){
//
//     $('#subjectTitle').html(subjectTitle);
//     $('#title').html("");
//     $.ajaxSetup({contentType: 'application/json'});
//     $.ajax({
//         url: 'title/practice',
//         dataType: 'text',
//         method: 'get',
//         data:{
//             page:discusspage,
//             count:5,
//             type:5,
//         },
//         success: function (data) {
//             var Result = JSON.parse(data);
//             var practiceDiscussTitle = Result.object;
//             for (var i = 0; i < practiceDiscussTitle.length; i++) {
//                 $('#title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
//                     "<tr>" +
//                     "<th colspan=\"4\"><span>" + ((discusspage-1)*5+i + 1) + ".</span>" + practiceDiscussTitle[i].name + "</th>" +
//                     "</tr>" +
//                     "<br>");
//                 $('#title').append("<br><textarea rows='5' cols='70' id=\"practiceDiscussAnswer"+i+"\">"+practiceDiscussTitle[i].answer+"</textarea>");
//                 $('#title').append("</table>");
//             }
//             $('#submitTitleBT').attr("class", "btn btn-success")
//             $('#submitTitleBT').html("下一组");
//             if($('#title').html()==""){
//                 $('#submitTitleBT').attr("class", "btn btn-primary")
//                 $('#submitTitleBT').html("已完成");
//             }
//             discusspage=discusspage+1;
//         },
//         error: function (xhr) {
//             // 导致出错的原因较多，以后再研究
//             alert('出错了，请刷新重试或截图反馈');
//         }
//     }).done(function (data) {
//         // 请求成功后要做的工作
//         console.log('success');
//     }).fail(function () {
//         // 请求失败后要做的工作
//         console.log('error');
//     }).always(function () {
//         // 不管成功或失败都要做的工作
//         console.log('complete');
//     });
// }

// function enterJudgeTitle() {
//     if (getStudentId() != null) {
//         $('#enterSimulationJudge').attr("data-toggle", 'modal');
//         $('#enterSimulationJudge').attr("data-target", '#titleModal');
//         createQuestionBank('校规校纪模拟考试');
//     } else {
//         $('#enterSimulationJudge').attr("data-toggle", '');
//         $('#enterSimulationJudge').attr("data-target", '');
//         $("#isSimulationJudgeLogin").html("请先登录");
//     }
// }

// function enterCaseTitle() {
//     if (getStudentId() != null) {
//         $('#title').html("");
//         caseTitlePractice('案例分析题练习');
//         $('#enterSimulationCase').attr("data-toggle", 'modal');
//         $('#enterSimulationCase').attr("data-target", '#titleModal');
//     } else {
//         $('#enterSimulationCase').attr("data-toggle", '');
//         $('#enterSimulationCase').attr("data-target", '');
//         $("#isSimulationCaseLogin").html("请先登录");
//     }
// }
// function enterDiscussTitle() {
//     if (getStudentId() != null) {
//         $('#title').html("");
//         discussTitlePractice('论述题练习');
//         $('#enterSimulationDiscuss').attr("data-toggle", 'modal');
//         $('#enterSimulationDiscuss').attr("data-target", '#titleModal');
//     } else {
//         $('#enterSimulationDiscuss').attr("data-toggle", '');
//         $('#enterSimulationDiscuss').attr("data-target", '');
//         $("#isSimulationDiscussLogin").html("请先登录");
//     }
// }
// function enterWrongTitle() {
//     if (getStudentId() != null) {
//         $('#enterWrongTitle').attr("data-toggle", 'modal');
//         $('#enterWrongTitle').attr("data-target", '#titleModal');
//         createQuestionBank('错题重做');
//     } else {
//         $('#enterWrongTitle').attr("data-toggle", '');
//         $('#enterWrongTitle').attr("data-target", '');
//         $("#isWrongTitleLogin").html("请先登录");
//     }
// }
