/**
 * Created by linjingshan on 2017/7/2.
 */
// 题目组
var contestTitleList;
var contestBlankTitleList;
var contestShortTitleList
// 用户答案组,返回的信息定义为局部变量,选择题运作模式不同
var answerContestBlankTitleList;
var answerContestShortTitleList;
// 返回的判断信息,这里不能像practice一样定义为局部变量
var correctContestTitleList;
var blankContestRes;
var shortContestRes;
// 暂时无效组
var contestJudgeTitleList;
var contestShortAnswer;
var contestCaseAnswer;
var contestDiscussAnswer;

function enterContest() {
    if(getScore()==null) {
        startContest();
        setContestTime();
        $('#startContestModal').attr("data-toggle", 'modal');
        $('#startContestModal').attr("data-target", '#testModal');
    }else{
        $('#startContestModal').attr("data-toggle", '');
        $('#startContestModal').attr("data-target", '');
        $('#isContested').html("已考试");
    }
}
function startContest() {
    $('#testTitle').html("");
    var studentId = getStudentId();
    var testId=getContestId();
    var testRecordString = {studentId: studentId, testId: testId};
    var testRecord = $.toJSON(testRecordString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'test/startContest',
        dataType: 'json',
        method: 'post',
        async: false,
        data: testRecord,
        success: function (data) {
            contestTitleList = data.titleList;
            contestBlankTitleList = data.blanksList;
            contestShortTitleList = data.shortList;
            // 分别做答案的拷贝
            // var titleStr = JSON.stringify(testTitleList);
            // answerTitleList = JSON.parse(titleStr);
            var blankStr = JSON.stringify(contestBlankTitleList);
            answerContestBlankTitleList = JSON.parse(blankStr);
            var shortStr = JSON.stringify(contestShortTitleList);
            answerContestShortTitleList = JSON.parse(shortStr);

            contestJudgeTitleList = data.judgeList;
            var contestCaseTitleList=data.caseList;
            var contestDiscussTitleList=data.discussList;

            $('#testId').html(testId);
            // 单选题 //Sunss
            $('#testTitle').append("一、单选题")
            for (var i = 0; i < contestTitleList.length; i++) {
                $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + contestTitleList[i].name + "</th>" +
                    "</tr>" +
                    "<br>");
                for (var j = 0; j < 4; j++) {
                    contestTitleList[i].options[j].checked = 0;
                    var str = "A";
                    $('#testTitle').append("<tr><td><input name=\"" + contestTitleList[i].titleId + "\" type=\"radio\" onclick=\"addTitleToContestList(" + i + "," + j + ")\"/>" + String.fromCharCode(str.charCodeAt() + j) + ".&nbsp;" + contestTitleList[i].options[j].content + "&nbsp;</td></tr>");
                }
                $('#testTitle').append("</table>");
            }
            // 判断题
            $('#testTitle').append("<br>二、判断题")
            for (var i = 0; i < contestBlankTitleList.length; i++) {
                $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + contestBlankTitleList[i].name.replace(/#/g, "") + "</th>" +
                    "</tr>" +
                    "<br>");
                $('#testTitle').append("<tr>" +
                    "<td width='150'><input name=\""+ contestBlankTitleList[i].titleId + "\" type=\"radio\" value='对'>"  + "对" + "&nbsp;</td>" +
                    "<td width='150'><input name=\""+ contestBlankTitleList[i].titleId + "\" type=\"radio\" value='错'>"  + "错" + "&nbsp;</td>" +
                    "</tr>");
                $('#testTitle').append("</table>");
            }
            // 多选题
            $('#testTitle').append("<br><br>三、多选题")
            for (var i = 0; i < contestShortTitleList.length; i++) {
                var contentList = contestShortTitleList[i].name.split("#");
                $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + contentList[0] + "</th>" +
                    "</tr>" +
                    "<br>");
                $('#testTitle').append("<tr>" +
                    "<td><input name=\""+ contestShortTitleList[i].titleId + "\" type=\"checkbox\" value='A'>"  + contentList[1] + "&nbsp;</td>" +
                    "<td><input name=\""+ contestShortTitleList[i].titleId + "\" type=\"checkbox\" value='B'>"  + contentList[2] + "&nbsp;</td>" +
                    "</tr>" +
                    "<tr>" +
                    "<td><input name=\""+ contestShortTitleList[i].titleId + "\" type=\"checkbox\" value='C'>"  + contentList[3] + "&nbsp;</td>" +
                    "<td><input name=\""+ contestShortTitleList[i].titleId + "\" type=\"checkbox\" value='D'>"  + contentList[4] + "&nbsp;</td>" +
                    "</tr>");
                $('#testTitle').append("</table>");
            }
            $('#submitTestBT').attr("class", "btn btn-primary")
            $('#submitTestBT').html("提交");
            getContestRecord(getStudentId());
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

function submitContestBlankTitle(){
    for(var i=0;i<contestBlankTitleList.length;i++){
        var contestBlankAnswer;
        var ans = $("input:radio[name='"+contestBlankTitleList[i].titleId+"']:checked").val();
        if(ans === "对"){
            contestBlankAnswer = "T";
        }else if(ans === "错"){
            contestBlankAnswer = "F";
        }else{
            contestBlankAnswer = "@hstc"
        }
        answerContestBlankTitleList[i].answer = contestBlankAnswer;
    }
}
function submitContestShortTitle() {
    for(var i=0;i<contestShortTitleList.length;i++){
        var contestShortAnswer = "";
        var ans = "";
        $("input:checkbox[name='"+contestShortTitleList[i].titleId+"']:checked").each(function () {
            ans += $(this).val();
        });
        if(ans === ""){
            contestShortAnswer = "@hstc";
        }else {
            contestShortAnswer = ans;
        }
        // debug(ans);
        // debug(shortAnswer);
        answerContestShortTitleList[i].answer = contestShortAnswer;
    }
}

function getContestCorrectTitle(data) {
    correctContestTitleList = data.submitPaper.titleList;
    /*this.account = getAccount();
    var accountTitles = {account: this.account, titleList: contestTitleList};
    var accountTitlesJson = $.toJSON(accountTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practiceAnswer',
        dataType: 'json',
        method: 'POST',
        async: false,
        data: accountTitlesJson,
        success: function (data) {
            correctContestTitleList = data.titleList;
            // console.log(correctTitleList.length);
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
    });*/
}
function getContestCorrectBlankTitle(data) {
    contestBlankTitleList = data.submitPaper.blanksList;
    /*this.account = getAccount();
    var accountTitles = {account: this.account, additiontitleList: answerContestBlankTitleList};
    var accountTitlesJson = $.toJSON(accountTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practiceAnswer',
        dataType: 'json',
        method: 'POST',
        async: false,
        data: accountTitlesJson,
        success: function (data) {
            blankContestRes = data.blanksList;
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
    });*/
}
function getContestCorrectShortTitle(data) {
    contestShortTitleList = data.submitPaper.shortList;
    /*this.account = getAccount();
    var accountTitles = {account: this.account, additiontitleList: answerContestShortTitleList};
    var accountTitlesJson = $.toJSON(accountTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practiceAnswer',
        dataType: 'json',
        method: 'POST',
        async: false,
        data: accountTitlesJson,
        success: function (data) {
            shortContestRes = data.blanksList;
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
    });*/
}

function reviewContestAnswer() {
    $('#testTitle').html("");
    $('#testId').html(testId);
    clearInterval(int);
    $('#testCountMsg').html("");
    // 选择题
    $('#testId').html(testId);

    $('#testTitle').append("一、单选题")
    for (var i = 0; i < contestTitleList.length; i++) {
        $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
            "<tr>" +
            "<th colspan=\"4\" id=\"contestTitle"+i+"\"><span>" + (i + 1) + ".</span>" + contestTitleList[i].name + "</th>" +
            "</tr>" +
            "<br>");
        var userAnswer = -1, standAnswer = 0;
        for (var j = 0; j < 4; j++) {
            var str = "A";
            $('#testTitle').append("<tr><td><input name=\"" + contestTitleList[i].titleId +  "\" type=\"radio\" >" + String.fromCharCode(str.charCodeAt() + j) + ".&nbsp;" + contestTitleList[i].options[j].content + "&nbsp;</td></tr>"
            );
            if(correctContestTitleList[i].options[j].checked){
                $("input:radio[name='"+contestTitleList[i].titleId+"']").eq(j).attr('checked', 'true');
            }
            if(contestTitleList[i].options[j].checked){ userAnswer = j; }
            if(correctContestTitleList[i].options[j].checked) { standAnswer = j; }
        }
        if(userAnswer !== standAnswer){
            $("#" + "contestTitle" + i).css("color","red");
        }
        $('#testTitle').append("</table>");
    }
    // 判断题
    $('#testTitle').append("<br>二、判断题")
    for (var i = 0; i < contestBlankTitleList.length; i++) {
        $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
            "<tr>" +
            "<th colspan=\"4\" id=\"contestBlankTitle"+i+"\"><span>" + (i + 1) + ".</span>" + contestBlankTitleList[i].name.replace(/#/g, "") + "</th>" +
            "</tr>" +
            "<br>");
        $('#testTitle').append("<tr>" +
            "<td width='150'><input name=\""+ contestBlankTitleList[i].titleId + "\" type=\"radio\">"  + "对" + "&nbsp;</td>" +
            "<td width='150'><input name=\""+ contestBlankTitleList[i].titleId + "\" type=\"radio\">"  + "错" + "&nbsp;</td>" +
            "</tr>");
        $('#testTitle').append("</table>");
        if(contestBlankTitleList[i].answer === "T"){
            $("input:radio[name='"+contestBlankTitleList[i].titleId+"']").eq(0).attr("checked","true");
        }else{
            $("input:radio[name='"+contestBlankTitleList[i].titleId+"']").eq(1).attr("checked","true");
        }
        if(answerContestBlankTitleList[i].answer !== contestBlankTitleList[i].answer){
            $("#"+"contestBlankTitle"+i).css("color","red");
        }
    }
    // 多选题
    $('#testTitle').append("<br><br>三、多选题")
    for (var i = 0; i < contestShortTitleList.length; i++) {
        var contentList = contestShortTitleList[i].name.split("#");
        $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
            "<tr>" +
            "<th colspan=\"4\" id=\"contestShortTitle"+i+"\"><span>" + (i + 1) + ".</span>" + contentList[0] + "</th>" +
            "</tr>" +
            "<br>");
        $('#testTitle').append("<tr>" +
            "<td><input name=\""+ contestShortTitleList[i].titleId + "\" type=\"checkbox\">"  + contentList[1] + "&nbsp;</td>" +
            "<td><input name=\""+ contestShortTitleList[i].titleId + "\" type=\"checkbox\">"  + contentList[2] + "&nbsp;</td>" +
            "</tr>" +
            "<tr>" +
            "<td><input name=\""+ contestShortTitleList[i].titleId + "\" type=\"checkbox\">"  + contentList[3] + "&nbsp;</td>" +
            "<td><input name=\""+ contestShortTitleList[i].titleId + "\" type=\"checkbox\">"  + contentList[4] + "&nbsp;</td>" +
            "</tr>");
        $('#testTitle').append("</table>");
        var ans = contestShortTitleList[i].answer;
        var preAns = preWork(ans);
        var j = 0;
        $("input:checkbox[name='"+contestShortTitleList[i].titleId+"']").each(function () {
            if(preAns[j] !== "0"){
                $(this).attr("checked",'true');
            }
            j++;
        });
        var preUserAns = preWork(answerContestShortTitleList[i].answer);
        if(preAns !== preUserAns){
            $("#"+"contestShortTitle"+i).css("color","red");
        }
    }
    $('#submitTestBT').attr("class", "btn btn-success")
    $('#submitTestBT').html("已完成");
    $("input[type='checkbox']").prop("disabled", "true");
    $("input[type='radio']").prop("disabled", "true");
}


var int;
function setContestTime() {
    // var time;
    // if(getContestEnd()==null){
    //     var startTime = new Date((new Date(getContestStart())).format("yyyy/MM/dd hh:mm:ss"));
    //     var endTime = new Date((new Date(getContestEndTime())).format("yyyy/MM/dd hh:mm:ss"));
    //     time = (endTime.getTime() - startTime.getTime()) / 1000;
    // }else {
    //     var contestEndTime = new Date((new Date(getContestEndTime())).format("yyyy/MM/dd hh:mm:ss"));
    //     var startTime = new Date((new Date(getContestStart())).format("yyyy/MM/dd hh:mm:ss"));
    //     if((contestEndTime.getTime()-startTime.getTime())<(getContestDuration()*60*1000)){
    //         time = (contestEndTime.getTime() - startTime.getTime()) / 1000;
    //     }else {
    //         var endTime = new Date((new Date(getContestEnd())).format("yyyy/MM/dd hh:mm:ss"));
    //         var duration = (endTime.getTime() - startTime.getTime()) / 1000;
    //         time = getContestDuration() * 60 - duration;
    //     }
    // }
    // function getRTime() {
    //     time--;
    //     if(time==0){
    //         submitTestTitle(getContestId());
    //         clearInterval(int1);
    //     }
    //     var h = Math.floor(time / 60 / 60);
    //     var m = Math.floor(time / 60 % 60);
    //     var s = Math.floor(time % 60);
    //     document.getElementById("test_t_h").innerHTML = h + "时";
    //     document.getElementById("test_t_m").innerHTML = m + "分";
    //     document.getElementById("test_t_s").innerHTML = s + "秒";
    // }
    // int1 = setInterval(getRTime, 1000);
    var time;
    if(getSubmitTime()==null){
        var endTime=new Date((new Date(getTestEndTime())).format("yyyy/MM/dd hh:mm:ss"));
        var startTime=new Date((new Date(getStartTime())).format("yyyy/MM/dd hh:mm:ss"));
        if((endTime.getTime()-startTime.getTime())<(getDuration()*60*1000)){
            time = (endTime.getTime() - startTime.getTime()) / 1000;
        }else {
            time = getDuration() * 60;
        }
    }else {
        var testEndTime=new Date((new Date(getTestEndTime())).format("yyyy/MM/dd hh:mm:ss"));
        var startTime=new Date((new Date(getStartTime())).format("yyyy/MM/dd hh:mm:ss"));
        if((testEndTime.getTime()-startTime.getTime())<(getDuration()*60*1000)){
            time = (testEndTime.getTime() - startTime.getTime()) / 1000;
        }else {
            // var startTime = new Date((new Date(getStartTime())).format("yyyy/MM/dd hh:mm:ss"));
            var endTime = new Date((new Date(getSubmitTime())).format("yyyy/MM/dd hh:mm:ss"));
            var duration = (endTime.getTime() - startTime.getTime()) / 1000;
            time = getDuration() * 60 - duration;
        }
    }
    function getRTime() {
        time--;
        if(time==0){
            submitToBack();
            clearInterval(int);
        }
        var h = Math.floor(time / 60 / 60);
        var m = Math.floor(time / 60 % 60);
        var s = Math.floor(time % 60);
        if(m == 5 && s == 0){
            alert("仅剩5分钟，请抓紧时间");
        }
        document.getElementById("test_t_h").innerHTML = h + "时";
        document.getElementById("test_t_m").innerHTML = m + "分";
        document.getElementById("test_t_s").innerHTML = s + "秒";
        $("#contestTime").css("color","red");
        $("#testTime").css("color","red");
        $("#testCountMsg").css("color","red");
    }
    int = setInterval(getRTime, 1000);
}
function addTitleToContestList(title, choice) {
    for (var i = 0; i < 4; i++) {
        if (i !== choice)
            contestTitleList[title].options[i].checked = 0;
    }
    contestTitleList[title].options[choice].checked = 1;
}


// //填空题
// $('#testTitle').append("<br>二、填空题")
// for (var i = 0; i < contestBlankTitleList.length; i++) {
//     $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
//         "<tr>" +
//         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + contestBlankTitleList[i].name.replace(/#/g,"___") + "</th>" +
//         "</tr>" +
//         "<br>");
//     for (var j = 0; j < (contestBlankTitleList[i].name.split("#").length)-1; j++) {
//         $('#testTitle').append("<tr><td>"+(j+1) + ".&nbsp;"+"<input type=\"text\" name=\"" + contestBlankTitleList[i].titleId + "\" id=\"blankAnswer"+i+""+j+"\" />"+ "&nbsp;</td></tr>");
//     }
//     $('#testTitle').append("</table>");
// }
//onblur =\"addBlankTitleToTestList(" + i + "," + j + ",blankAnswer"+i+""+j+")\"
//判断题
// $('#testTitle').append("<br>三、判断题")
// for (var i = 0; i < testJudgeTitleList.length; i++) {
//     $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
//         "<tr>" +
//         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testJudgeTitleList[i].name + "</th>" +
//         "</tr>" +
//         "<br>");
//     for (var j = 0; j < 4; j++) {
//         var str = "A";
//         $('#testTitle').append("<tr><td><input name=\"" + testTitleList[i].titleId + "\" type=\"radio\" onclick=\"addTitleToTestList(" + i + "," + j + ")\"/>" + String.fromCharCode(str.charCodeAt() + j) + ".&nbsp;" + testTitleList[i].options[j].content + "&nbsp;</td></tr>");
//     }
//     $('#testTitle').append("</table>");
// }
//简答题
// $('#testTitle').append("<br><br>四、简答题")
// for (var i = 0; i < contestShortTitleList.length; i++) {
//     $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
//         "<tr>" +
//         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + contestShortTitleList[i].name + "</th>" +
//         "</tr>" +
//         "<br>");
//     $('#testTitle').append("<br><textarea rows='5' cols='40' id=\"shortAnswer"+i+"\"></textarea>");
//     $('#testTitle').append("</table>");
// }
// //案例分析题
// $('#testTitle').append("<br><br>五、案例分析题")
// for (var i = 0; i < contestCaseTitleList.length; i++) {
//     $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
//         "<tr>" +
//         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + contestCaseTitleList[i].name + "</th>" +
//         "</tr>" +
//         "<br>");
//     $('#testTitle').append("<br><textarea rows='5' cols='40' id=\"caseAnswer"+i+"\"></textarea>");
//     $('#testTitle').append("</table>");
// }
// //论述题
// $('#testTitle').append("<br><br>六、论述题")
// for (var i = 0; i < contestDiscussTitleList.length; i++) {
//     $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
//         "<tr>" +
//         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + contestDiscussTitleList[i].name + "</th>" +
//         "</tr>" +
//         "<br>");
//     $('#testTitle').append("<br><textarea rows='5' cols='40' id=\"discussAnswer"+i+"\"></textarea>");
//     $('#testTitle').append("</table>");
// }

// function submitContestCaseTitle() {
//     var i=0;
//     var caseAnswerArray=new Array();
//     while($("#"+"caseAnswer"+i).length>0){
//         var str=$("#"+"caseAnswer"+i).val();
//         var str1=str.replace(/#/g,"");
//         var str2=str1.replace(/@hstc/g,"");
//         if(str2==null||str2==""){
//             str2="@hstc";
//         }
//         caseAnswerArray[i]=str2;
//         i++;
//     }
//     contestCaseAnswer=caseAnswerArray.join("#");
// }
// function submitContestDiscussTitle() {
//     var i=0;
//     var discussAnswerArray=new Array();
//     while($("#"+"discussAnswer"+i).length>0){
//         var str=$("#"+"discussAnswer"+i).val();
//         var str1=str.replace(/#/g,"");
//         var str2=str1.replace(/@hstc/g,"");
//         if(str2==null||str2==""){
//             str2="@hstc";
//         }
//         discussAnswerArray[i]=str2;
//         i++;
//     }
//     contestDiscussAnswer=discussAnswerArray.join("#");
// }
