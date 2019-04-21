/**
 * Created by linjingshan on 2018/6/24.
 */
// 题目组
var testTitleList;
var testBlankTiitleList;
var testShortTitleList;
// 用户答案组,返回的信息定义为局部变量,选择题运作模式不同
var answerBlankTitleList;
var answerShortTitleList;
// 返回的判断信息,这里不能像practice一样定义为局部变量
var correctTitleList;
var blankRes;
var shortRes;
// 暂时无效组
var testJudgeTitleList;
var shortAnswer;
var caseAnswer;
var discussAnswer;

function enterTest() {
    if (getStudentId() != null) {
        startTest();
        $('#startTestModal').attr("data-toggle", 'modal');
        $('#startTestModal').attr("data-target", '#testModal');
    } else {
        $('#startTestModal').attr("data-toggle", '');
        $('#startTestModal').attr("data-target", '');
        $("#isLogin").html("请先登录");
    }
}
function startTest() {
    $('#testTitle').html("");
    var studentId = getStudentId();
    var tsetId=getTestId();
    var testRecordString = {studentId: studentId, testId: testId}; // Sunss由两个id生成一个组合键
    var testRecord = $.toJSON(testRecordString);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'test/startTest',
        dataType: 'json',
        method: 'post',
        async: false,
        data: testRecord,
        success: function (data) {
            // Sunss 获取了题目列表
            testTitleList = data.titleList;
            testBlankTitleList = data.blanksList;
            testShortTitleList = data.shortList;
            // 分别做答案的拷贝
            var titleStr = JSON.stringify(testTitleList);
            answerTitleList = JSON.parse(titleStr);
            // 这里会报说JSON解析不了BlankStr,因为我打错字了
            var blankStr = JSON.stringify(testBlankTitleList);
            answerBlankTitleList = JSON.parse(blankStr);
            var shortStr = JSON.stringify(testShortTitleList);
            answerShortTitleList = JSON.parse(shortStr);
            // testJudgeTitleList=data.judgeList;
            // var testCaseTitleList=data.caseList;
            // var testDiscussTitleList=data.discussList;
            $('#testId').html(testId);
            // 选择题
            $('#testTitle').append("一、单选题")
            for (var i = 0; i < testTitleList.length; i++) {
                $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testTitleList[i].name + "</th>" +
                    "</tr>" +
                    "<br>");
                for (var j = 0; j < 4; j++) {
                    testTitleList[i].options[j].checked = 0;
                    var str = "A";
                    $('#testTitle').append("<tr><td><input name=\"" + testTitleList[i].titleId + "\" type=\"radio\" onclick=\"addTitleToTestList(" + i + "," + j + ")\"/>" + String.fromCharCode(str.charCodeAt() + j) + ".&nbsp;" + testTitleList[i].options[j].content + "&nbsp;</td></tr>");
                }
                $('#testTitle').append("</table>");
            }
            // 判断题
            $('#testTitle').append("<br>二、判断题")
            for (var i = 0; i < testBlankTitleList.length; i++) {
                $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testBlankTitleList[i].name.replace(/#/g, "") + "</th>" +
                    "</tr>" +
                    "<br>");
                $('#testTitle').append("<tr>" +
                    "<td width='150'><input name=\""+ testBlankTitleList[i].titleId + "\" type=\"radio\" value='对'>"  + "对" + "&nbsp;</td>" +
                    "<td width='150'><input name=\""+ testBlankTitleList[i].titleId + "\" type=\"radio\" value='错'>"  + "错" + "&nbsp;</td>" +
                    "</tr>");
                $('#testTitle').append("</table>");
            }
            // 多选题
            $('#testTitle').append("<br><br>三、多选题")
            for (var i = 0; i < testShortTitleList.length; i++) {
                var contentList = testShortTitleList[i].name.split("#");
                $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
                    "<tr>" +
                    "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + contentList[0] + "</th>" +
                    "</tr>" +
                    "<br>");
                $('#testTitle').append("<tr>" +
                    "<td><input name=\""+ testShortTitleList[i].titleId + "\" type=\"checkbox\" value='A'>"  + contentList[1] + "&nbsp;</td>" +
                    "<td><input name=\""+ testShortTitleList[i].titleId + "\" type=\"checkbox\" value='B'>"  + contentList[2] + "&nbsp;</td>" +
                    "</tr>" +
                    "<tr>" +
                    "<td><input name=\""+ testShortTitleList[i].titleId + "\" type=\"checkbox\" value='C'>"  + contentList[3] + "&nbsp;</td>" +
                    "<td><input name=\""+ testShortTitleList[i].titleId + "\" type=\"checkbox\" value='D'>"  + contentList[4] + "&nbsp;</td>" +
                    "</tr>");
                $('#testTitle').append("</table>");
            }
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
            // for (var i = 0; i < testShortTitleList.length; i++) {
            //     $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
            //         "<tr>" +
            //         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testShortTitleList[i].name + "</th>" +
            //         "</tr>" +
            //         "<br>");
            //     $('#testTitle').append("<br><textarea rows='5' cols='40' id=\"shortAnswer"+i+"\"></textarea>");
            //     $('#testTitle').append("</table>");
            // }
            // //案例分析题
            // $('#testTitle').append("<br><br>五、案例分析题")
            // for (var i = 0; i < testCaseTitleList.length; i++) {
            //     $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
            //         "<tr>" +
            //         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testCaseTitleList[i].name + "</th>" +
            //         "</tr>" +
            //         "<br>");
            //     $('#testTitle').append("<br><textarea rows='5' cols='40' id=\"caseAnswer"+i+"\"></textarea>");
            //     $('#testTitle').append("</table>");
            // }
            // //论述题
            // $('#testTitle').append("<br><br>六、论述题")
            // for (var i = 0; i < testDiscussTitleList.length; i++) {
            //     $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
            //         "<tr>" +
            //         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testDiscussTitleList[i].name + "</th>" +
            //         "</tr>" +
            //         "<br>");
            //     $('#testTitle').append("<br><textarea rows='5' cols='40' id=\"discussAnswer"+i+"\"></textarea>");
            //     $('#testTitle').append("</table>");
            // }
            getTestRecord(getStudentId());
            $('#submitTestBT').attr("class", "btn btn-primary");
            $('#submitTestBT').html("提交");
            setTime();
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

// 因为好像要和Button连接,但是它就是说未定义..怎么回事
// 本来打算去一个叫submitOrReview的让按钮来点击的,但是就是找不到引用..不是写了js了么..就改了这个函数
function submitAll() {
    var str = document.getElementById("submitTestBT").innerText;
    if(str === "提交"){
        submitToBack();
    }else{
        $('#testModal').modal('hide');
    }
}

// 处理答案
function submitBlankTitle(){
    for(var i=0;i<testBlankTitleList.length;i++){
        var blankAnswer;
        var ans = $("input:radio[name='"+testBlankTitleList[i].titleId+"']:checked").val();
        if(ans === "对"){
            blankAnswer = "T";
        }else if(ans === "错"){
            blankAnswer = "F";
        }else{
            blankAnswer = "@hstc"
        }
        // debug($("input:radio[name='"+testBlankTitleList[i].titleId+"']:checked").val());
        // debug(ans);
        // debug(blankAnswer);
        answerBlankTitleList[i].answer = blankAnswer;
    }
}
function submitShortTitle() {
    for(var i=0;i<testShortTitleList.length;i++){
        var shortAnswer = "";
        var ans = "";
        $("input:checkbox[name='"+testShortTitleList[i].titleId+"']:checked").each(function () {
            ans += $(this).val();
        });
        if(ans === ""){
            shortAnswer = "@hstc";
        }else {
            shortAnswer = ans;
        }
        // debug(ans);
        // debug(shortAnswer);
        answerShortTitleList[i].answer = shortAnswer;
    }
}

// 这个是为了去拿分数,然后我还需要三个像practice那样的方法去拿回哪里出错了,照着practice写三个然后reviewAnswer那边只用来做呈现
function submitToBack() {
    var id=document.getElementById("testId").innerText;
    if(id==getTestId()){
        contestJudgeTitleList = null;
        caseAnswer = null;
        discussAnswer = null;
        submitBlankTitle();
        submitShortTitle();
        // submitCaseTitle();
        // submitDiscussTitle();
        // Short那边可能会出现问题，因为期待的原格式并不是一个列表，是一个字符串..
        // 被我改了...这里分析一下过程
        // 先去看对这一个数据格式这样子传有没有影响,再去看算分数的判断正误的逻辑和联系里是不是一样
        // 一层一层下去:
        // 1.ecordTitles 要有一个submitPaper,和一个testrecord ,这里不需要考虑testrecrod
        // 2.submitPaper 里面有三个list(选择\判断\填空),三个string(简答\案例\论述),然后计划添加了一个shortlist,把原先的字符串形式的删掉
        // 3.看一下Dao层和数据持久层,没有关于submitPaper的
        // Ok.修改成立
        // 然后再看一下统计分数,选择题是不变的
        // 所以就看填空题
        submitPaper(getTestId(),testTitleList,answerBlankTitleList,testJudgeTitleList,answerShortTitleList,caseAnswer,discussAnswer);
    }
    // 暂时注释掉
    if(id==getContestId()){
        contestJudgeTitleList = null;
        contestCaseAnswer = null;
        contestDiscussAnswer = null;
        submitContestBlankTitle();
        submitContestShortTitle();
        // submitContestCaseTitle();
        // submitContestDiscussTitle();
        submitPaper(getContestId(),contestTitleList,answerContestBlankTitleList,contestJudgeTitleList,answerContestShortTitleList,contestCaseAnswer,contestDiscussAnswer);
    }
}
function submitPaper(testId,choiceList,blankList,judgeList,shortList,caseStr,discussStr) {
    var studentId=getStudentId();
    var testrecord={studentId:studentId,testId:testId};
    var submitPaper={titleList:choiceList,blanksList:blankList,judgeList:judgeList,shortList:shortList,caseAnswer:caseStr,discussAnswer:discussStr};
    var recordTitles = {testrecord: testrecord, submitPaper: submitPaper};
    var recordTitlesJson = $.toJSON(recordTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'test/submitTest',
        dataType: 'json',
        method: 'POST',
        async: false,
        data: recordTitlesJson,
        success: function (data) {
            // 消失的这一步不在这里进行，这里做的时弹出答案模态框
            // $('#testModal').modal('hide');
            getTestRecord(getStudentId());
            getContestRecord(getStudentId());
            // 之前那三个方法都是异步,其实它们还没有完成但是我就要进行渲染了...所以要只能等它们一个一个完成了吗
            // 或者说不我能让三个函数一起去访问同一个方法吗?
            var id=document.getElementById("testId").innerText;
            if(id==getTestId()){
                getCorrectTitle(data);
                getCorrectBlankTitle(data);
                getCorrectShortTitle(data);
                reviewAnswer();
            }else{
                getContestCorrectTitle(data);
                getContestCorrectBlankTitle(data);
                getContestCorrectShortTitle(data);
                reviewContestAnswer();
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

// 三个用来拿哪里出错了,一个用来呈现,处理答案在submitToBack里了
function getCorrectTitle(data) {
    correctTitleList = data.submitPaper.titleList;
    /*this.account = getAccount();
    var accountTitles = {account: this.account, titleList: testTitleList};
    var accountTitlesJson = $.toJSON(accountTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practiceAnswer',
        dataType: 'json',
        method: 'POST',
        async: false,
        data: accountTitlesJson,
        success: function (data) {
            correctTitleList = data.titleList;
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
function getCorrectBlankTitle(data) {
    testBlankTitleList = data.submitPaper.blanksList;
    /*this.account = getAccount();
    var accountTitles = {account: this.account, additiontitleList: answerBlankTitleList};
    var accountTitlesJson = $.toJSON(accountTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practiceAnswer',
        dataType: 'json',
        method: 'POST',
        async: false,
        data: accountTitlesJson,
        success: function (data) {
            blankRes = data.blanksList;
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
function getCorrectShortTitle(data) {
    testShortTitleList = data.submitPaper.shortList;
    /*this.account = getAccount();
    var accountTitles = {account: this.account, additiontitleList: answerShortTitleList};
    var accountTitlesJson = $.toJSON(accountTitles);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: 'title/practiceAnswer',
        dataType: 'json',
        method: 'POST',
        async: false,
        data: accountTitlesJson,
        success: function (data) {
            shortRes = data.blanksList;
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

function reviewAnswer() {
    $('#testTitle').html("");
    $('#testId').html(testId);
    clearInterval(int);
    $('#testCountMsg').html("");
    // 选择题
    $('#testId').html(testId);

    $('#testTitle').append("一、单选题")
    for (var i = 0; i < testTitleList.length; i++) {
        $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
            "<tr>" +
            "<th colspan=\"4\" id=\"testTitle"+i+"\"><span>" + (i + 1) + ".</span>" + testTitleList[i].name + "</th>" +
            "</tr>" +
            "<br>");
        var userAnswer = -1, standAnswer = 0;
        for (var j = 0; j < 4; j++) {
            var str = "A";
            $('#testTitle').append("<tr><td><input name=\"" + testTitleList[i].titleId +  "\" type=\"radio\" >" + String.fromCharCode(str.charCodeAt() + j) + ".&nbsp;" + testTitleList[i].options[j].content + "&nbsp;</td></tr>"
            );
            // console.log(typeof (correctTitleList));
            if(correctTitleList[i].options[j].checked){
                $("input:radio[name='"+testTitleList[i].titleId+"']").eq(j).attr('checked', 'true');
            }
            if(testTitleList[i].options[j].checked){ userAnswer = j; }
            if(correctTitleList[i].options[j].checked) { standAnswer = j; }
            // debug(testTitleList[i].options[j].checked);
            // debug(correctTitleList[i].options[j].checked);
        }
        // $("#"+"testTitle"+i).css("color","red");
        if(userAnswer !== standAnswer){
            $("#" + "testTitle" + i).css("color","red");
        }
        $('#testTitle').append("</table>");
    }
    // 判断题
    $('#testTitle').append("<br>二、判断题")
    for (var i = 0; i < testBlankTitleList.length; i++) {
        $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
            "<tr>" +
            "<th colspan=\"4\" id=\"testBlankTitle"+i+"\"><span>" + (i + 1) + ".</span>" + testBlankTitleList[i].name.replace(/#/g, "") + "</th>" +
            "</tr>" +
            "<br>");
        $('#testTitle').append("<tr>" +
            "<td width='150'><input name=\""+ testBlankTitleList[i].titleId + "\" type=\"radio\">"  + "对" + "&nbsp;</td>" +
            "<td width='150'><input name=\""+ testBlankTitleList[i].titleId + "\" type=\"radio\">"  + "错" + "&nbsp;</td>" +
            "</tr>");
        $('#testTitle').append("</table>");
        if(testBlankTitleList[i].answer === "T"){
            $("input:radio[name='"+testBlankTitleList[i].titleId+"']").eq(0).attr("checked","true");
        }else{
            $("input:radio[name='"+testBlankTitleList[i].titleId+"']").eq(1).attr("checked","true");
        }
        // $("#"+"testBlankTitle"+i).css("color","red");
        // debug(blankRes[i].answer);
        if(answerBlankTitleList[i].answer !== testBlankTitleList[i].answer){
            $("#"+"testBlankTitle"+i).css("color","red");
        }
    }
    // 多选题
    $('#testTitle').append("<br><br>三、多选题")
    for (var i = 0; i < testShortTitleList.length; i++) {
        var contentList = testShortTitleList[i].name.split("#");
        $('#testTitle').append("<table style=\"font-family: '宋体'; font-size: 16px;\">" +
            "<tr>" +
            "<th colspan=\"4\" id=\"testShortTitle"+i+"\"><span>" + (i + 1) + ".</span>" + contentList[0] + "</th>" +
            "</tr>" +
            "<br>");
        $('#testTitle').append("<tr>" +
            "<td><input name=\""+ testShortTitleList[i].titleId + "\" type=\"checkbox\">"  + contentList[1] + "&nbsp;</td>" +
            "<td><input name=\""+ testShortTitleList[i].titleId + "\" type=\"checkbox\">"  + contentList[2] + "&nbsp;</td>" +
            "</tr>" +
            "<tr>" +
            "<td><input name=\""+ testShortTitleList[i].titleId + "\" type=\"checkbox\">"  + contentList[3] + "&nbsp;</td>" +
            "<td><input name=\""+ testShortTitleList[i].titleId + "\" type=\"checkbox\">"  + contentList[4] + "&nbsp;</td>" +
            "</tr>");
        $('#testTitle').append("</table>");
        var ans = testShortTitleList[i].answer;
        var preAns = preWork(ans);
        var j = 0;
        $("input:checkbox[name='"+testShortTitleList[i].titleId+"']").each(function () {
            if(preAns[j] !== "0"){
                $(this).attr("checked",'true');
            }
            j++;
        })
        // debug(shortRes[i].answer);
        // $("#"+"testShortTitle"+i).css("color","red");
        var preUserAns = preWork(answerShortTitleList[i].answer);
        if(/*shortRes[i].answer === "0"*/ preAns !== preUserAns){
            $("#"+"testShortTitle"+i).css("color","red");
        }
    }
    $('#submitTestBT').attr("class", "btn btn-success")
    $('#submitTestBT').html("已完成");
    $("input[type='checkbox']").prop("disabled", "true");
    $("input[type='radio']").prop("disabled", "true");
}


// 辅助性功能函数去
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
var int;
function setTime() {
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
function exitAll() {
    var id=document.getElementById("testId").innerText;
    if(id==getTestId()){
        $('#testModal').modal('hide');
        exitByX(getTestId());
    }if(id==getContestId()){
        $('#testModal').modal('hide');
        exitByX(getContestId());
    }
}

function cancel(){
    $('body').addClass('modal-open');
}

function exitByX(testId) {
    var str = document.getElementById("submitTestBT").innerText;
    if(str === "提交"){
        var studentId = getStudentId();
        var testRecordString = {studentId: studentId, testId: testId};
        var testRecord = $.toJSON(testRecordString);
        $.ajaxSetup({contentType: 'application/json'});
        $.ajax({
            url: 'test/deleteTestRecord',
            dataType: 'json',
            method: 'post',
            data: testRecord,
            success: function (data) {
                if (data.result == "success") {
                    clearInterval(int);
                    // clearInterval(int1);
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
    }else{
        $('#testModal').modal('hide');
    }
}
function addTitleToTestList(title, choice) {
    for (var i = 0; i < 4; i++) {
        if (i !== choice)
            testTitleList[title].options[i].checked = 0;
    }
    testTitleList[title].options[choice].checked = 1;
}
function debug(foo) {
    console.log(foo + " "+ typeof (foo));
}

// function submitCaseTitle() {
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
//     caseAnswer=caseAnswerArray.join("#");
// }
// function submitDiscussTitle() {
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
//     discussAnswer=discussAnswerArray.join("#");
// }

// var eachBlankTitleAnswer=new Array();
// function addBlankTitleToTestList(blankTitle,blankEach,blankId) {
//     // eachBlankTitleAnswer[blankEach]=document.getElementById(blankId).innerText;
//     eachBlankTitleAnswer[blankEach]=$(blankId).val();
//     for(var i=0;i<eachBlankTitleAnswer.length;i++){
//         if(eachBlankTitleAnswer[i]==null||eachBlankTitleAnswer[i]==""){
//             eachBlankTitleAnswer[i]="@hstc";
//         }
//     }
//     var blankAnswer=eachBlankTitleAnswer.join("#");
//     testBlankTitleList[blankTitle].answer=blankAnswer;
//     console.log("填空题答案为：",blankAnswer);
// }
