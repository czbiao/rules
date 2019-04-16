/**
 * Created by GF on 2017/8/17.
 */
var accountPaperRecord;
//Sunss 这里就是实现不用批改的逻辑的地方了
function getPaperList(testId) {
    var adminTestinfo = {testId: testId,rolerange:admin.rolerange}
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: '../test/getPaperrecordByTestId',
        dataType: 'json',
        method: 'POST',
        data: JSON.stringify(adminTestinfo),
        success: function (data) {
            if (data.account == null) {
                $('#paper_stuId').html("");
                $('#paper_stuName').html("");
                $('#paper_stuCollege').html("");
                $('#paper_stuMajor').html("");
                $('#paper_stuClass').html("");
                $('#paper_blankscore').html("");
                $('#paper_title').html("");
                $('#isSearchClick').html("");
                $('#correctId').html("");
                $('#correct_submit').html("审批完毕");
            } else {
                accountPaperRecord = data;
                $('#paper_title').html("");
                $('#correct_submit').html("提交");
                $('#correctId').html(testId);
                $('#paper_stuId').html("");
                $('#isSearchClick').html("");
                $('#paper_stuName').html("");
                $('#paper_stuCollege').html("");
                $('#paper_stuMajor').html("");
                $('#paper_stuClass').html("");
                $('#paper_blankscore').html("");
                $('#paper_stuId').html(accountPaperRecord.account.studentId);
                $('#paper_stuName').html(accountPaperRecord.account.username);
                $('#paper_stuCollege').html(accountPaperRecord.account.college);
                $('#paper_stuMajor').html(accountPaperRecord.account.major);
                $('#paper_stuClass').html(accountPaperRecord.account.clazz);
                $('#paper_blankscore').html(accountPaperRecord.paperrecord.blankScore);
                var testShortTitleList = accountPaperRecord.paper.shortList;
                var testCaseTitleList = accountPaperRecord.paper.caseList;
                var testDiscussTitleList = accountPaperRecord.paper.discussList;
                // //简答题
                // $('#paper_title').append("<br><br>四、简答题")
                // for (var i = 0; i < testShortTitleList.length; i++) {
                //     $('#paper_title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
                //         "<tr>" +
                //         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testShortTitleList[i].name + "("+testShortTitleList[i].score+"分)"+"</th>" +
                //         "</tr>" +
                //         "<tr>" +
                //         "<th colspan=\"2\"><span>请输入本题得分：</span>&nbsp;<input type='text' id=\"shortTitleScore" + i + "\" size='4' onchange=\"checkShortScore("+i+")\"/>" + "</th>" +
                //         "<th colspan=\"2\"><span id=\"shortScoreMsg" + i + "\" style='color: #e0080b'></span>" + "</th>" +
                //         "</tr>" +
                //         "<br>");
                //     $('#paper_title').append("<br><textarea rows='5' cols='40' id=\"shortAnswer" + i + "\">" + testShortTitleList[i].answer + "</textarea>");
                //     $('#paper_title').append("</table>+<br>");
                // }
                // //案例分析题
                // $('#paper_title').append("<br><br>五、案例分析题")
                // for (var i = 0; i < testCaseTitleList.length; i++) {
                //     $('#paper_title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
                //         "<tr>" +
                //         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testCaseTitleList[i].name +"("+testCaseTitleList[i].score+"分)"+ "</th>" +
                //         "</tr>" +
                //         "<tr>" +
                //         "<th colspan=\"2\"><span>请输入本题得分：</span>&nbsp;<input type='text' id=\"caseTitleScore" + i + "\" size='4' onchange=\"checkCaseScore("+i+")\"/> " + "</th>" +
                //         "<th colspan=\"2\"><span id=\"caseScoreMsg" + i + "\" style='color: #e0080b'></span>" + "</th>" +
                //         "</tr>" +
                //         "<br>");
                //     $('#paper_title').append("<br><textarea rows='5' cols='40' id=\"caseAnswer" + i + "\">" + testCaseTitleList[i].answer + "</textarea>");
                //     $('#paper_title').append("</table>+<br>");
                // }
                // //论述题
                // $('#paper_title').append("<br><br>六、论述题")
                // for (var i = 0; i < testDiscussTitleList.length; i++) {
                //     $('#paper_title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
                //         "<tr>" +
                //         "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testDiscussTitleList[i].name +"("+testDiscussTitleList[i].score+"分)"+ "</th>" +
                //         "</tr>" +
                //         "<tr>" +
                //         "<th colspan=\"2\"><span>请输入本题得分：</span>&nbsp;<input type='text' id=\"discussTitleScore" + i + "\" size='4' onchange=\"checkDiscussScore("+i+")\"/>" + "</th>" +
                //         "<th colspan=\"2\"><span id=\"discussScoreMsg" + i + "\" style='color: #e0080b'></span>" + "</th>" +
                //         "</tr>" +
                //         "<br>");
                //     $('#paper_title').append("<br><textarea rows='5' cols='40' id=\"discussAnswer" + i + "\">" + testDiscussTitleList[i].answer + "</textarea>");
                //     $('#paper_title').append("</table>+<br>");
                // }
            }
        },
        error: function (xhr) {
            console.log('error:' + JSON.stringify(xhr));
        }
    }).done(function (data) {
        console.log('success');
    }).fail(function () {
        console.log('error');
    }).always(function () {
        console.log('complete');
    })
}


function showPaper() {
    $(".modal-body").prop('scrollTop', 0)
    $('#paper_title').html("");
    getPaperList(getTest_id());
    clearScore()
    $('#test_correct_paper').attr("data-toggle", "modal");
    $('#test_correct_paper').attr("data-target", "#correctPaperModal");
}
function showContestPaper() {
    $(".modal-body").prop('scrollTop', 0)
    $('#paper_title').html("");

    getPaperList(getContest_id());
    clearScore()
    $('#test_correct_paper').attr("data-toggle", "modal");
    $('#test_correct_paper').attr("data-target", "#correctPaperModal");
}
function showSearchPaper() {
    $('#paper_stuId').html("");
    $('#paper_stuName').html("");
    $('#paper_stuCollege').html("");
    $('#paper_stuMajor').html("");
    $('#paper_stuClass').html("");
    $('#paper_blankscore').html("");
    $('#paper_title').html("");
    $('#correctId').html("");
    $('#isSearchClick').html("");
    searchPaper();
    $('#search_paper').attr("data-toggle", "modal");
    $('#search_paper').attr("data-target", "#correctPaperModal");
}

//Sunss这是批试卷？我怎么一次都没见过
function correctPaperBT(testId) {
    // if (document.getElementById("correct_submit").innerText == '审批完毕') {
    //     $('#correctPaperModal').modal('hide');
    // } else if(document.getElementById("correct_submit").innerText == '试卷不存在'){
    //     $('#correctPaperModal').modal('hide');
    // }else{
    //     var shortScore = 0;
    //     var caseScore = 0;
    //     var discussScore = 0;
    //     var totalScore = 0;
    //     var i = 0;
    //     var j = 0;
    //     var k = 0;
    //     while ($("#" + "shortTitleScore" + i).length > 0) {
    //         var score = $("#" + "shortTitleScore" + i).val();
    //         shortScore += parseInt(score);
    //         i++;
    //     }
    //     while ($("#" + "caseTitleScore" + j).length > 0) {
    //         var score = $("#" + "caseTitleScore" + j).val();
    //         caseScore += parseInt(score);
    //         j++;
    //     }
    //     while ($("#" + "discussTitleScore" + k).length > 0) {
    //         var score = $("#" + "discussTitleScore" + k).val();
    //         discussScore += parseInt(score);
    //         k++;
    //     }
    //     totalScore = parseInt(shortScore) + parseInt(caseScore) + parseInt(discussScore);

    // Sunss Test
    var totalScore = 200;
        var scoreInfo = {
            studentId: document.getElementById("paper_stuId").innerText,
            testId: testId,
            score: totalScore
        };
        $.ajaxSetup({contentType: 'application/json'});
        $.ajax({
            url: '../test/submitCorrectPaper',
            dataType: 'json',
            method: 'POST',
            data: JSON.stringify(scoreInfo),
            success: function (data) {
                if (data.result == 'success') {
                    if(document.getElementById("isSearchClick").innerText=="yes"){
                        $('#correctPaperModal').modal('hide');
                    }else {
                        $(".modal-body").prop('scrollTop', 0)
                        getPaperList(testId);
                    }
                }
            },
            error: function (xhr) {
                // 导致出错的原因较多，以后再研究
                console.log('error:' + JSON.stringify(xhr));
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

function correctPaper() {
    if (document.getElementById("correctId").innerText == getTest_id()) {
        correctPaperBT(getTest_id());
    } else {
        correctPaperBT(getContest_id());
    }
}

function searchPaper() {
    var studentId=$('#search_paperId').val();
    var testId;
    var type=$('#type').val();
    if(type=="考试"){
        testId=getTest_id();
    }else{
        testId=getContest_id();
    }
    var testrecord={studentId:studentId,testId:testId};
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: '../test/getPaperrecordByStudentId',
        dataType: 'json',
        method: 'POST',
        data: JSON.stringify(testrecord),
        success: function (data) {
            if (data.account == null) {
                $('#paper_stuId').html("");
                $('#paper_stuName').html("");
                $('#paper_stuCollege').html("");
                $('#paper_stuMajor').html("");
                $('#paper_stuClass').html("");
                $('#paper_blankscore').html("");
                $('#paper_title').html("");
                $('#correctId').html("");
                $('#isSearchClick').html("");
                $('#correct_submit').html("试卷不存在");
            } else {
                accountPaperRecord = data;
                $('#correct_submit').html("提交");
                $('#correctId').html(testId);
                $('#isSearchClick').html("yes");
                $('#paper_stuId').html("");
                $('#paper_stuName').html("");
                $('#paper_stuCollege').html("");
                $('#paper_stuMajor').html("");
                $('#paper_stuClass').html("");
                $('#paper_blankscore').html("");
                $('#paper_stuId').html(accountPaperRecord.account.studentId);
                $('#paper_stuName').html(accountPaperRecord.account.username);
                $('#paper_stuCollege').html(accountPaperRecord.account.college);
                $('#paper_stuMajor').html(accountPaperRecord.account.major);
                $('#paper_stuClass').html(accountPaperRecord.account.clazz);
                $('#paper_blankscore').html(accountPaperRecord.paperrecord.blankScore);
                var testShortTitleList = accountPaperRecord.paper.shortList;
                var testCaseTitleList = accountPaperRecord.paper.caseList;
                var testDiscussTitleList = accountPaperRecord.paper.discussList;
                //简答题
                $('#paper_title').append("<br><br>四、简答题")
                for (var i = 0; i < testShortTitleList.length; i++) {
                    $('#paper_title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
                        "<tr>" +
                        "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testShortTitleList[i].name + "("+testShortTitleList[i].score+"分)"+"</th>" +
                        "</tr>" +
                        "<tr>" +
                        "<th colspan=\"2\"><span>请输入本题得分：</span>&nbsp;<input type='text' id=\"shortTitleScore" + i + "\" size='4' onchange=\"checkShortScore("+i+")\"/>" + "</th>" +
                        "<th colspan=\"2\"><span id=\"shortScoreMsg" + i + "\" style='color: #e0080b'></span>" + "</th>" +
                        "</tr>" +
                        "<br>");
                    $('#paper_title').append("<br><textarea rows='5' cols='40' id=\"shortAnswer" + i + "\">" + testShortTitleList[i].answer + "</textarea>");
                    $('#paper_title').append("</table>+<br>");
                }
                //案例分析题
                $('#paper_title').append("<br><br>五、案例分析题")
                for (var i = 0; i < testCaseTitleList.length; i++) {
                    $('#paper_title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
                        "<tr>" +
                        "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testCaseTitleList[i].name +"("+testCaseTitleList[i].score+"分)"+ "</th>" +
                        "</tr>" +
                        "<tr>" +
                        "<th colspan=\"2\"><span>请输入本题得分：</span>&nbsp;<input type='text' id=\"shortTitleScore" + i + "\" size='4' onchange=\"checkShortScore("+i+")\"/>" + "</th>" +
                        "<th colspan=\"2\"><span id=\"shortScoreMsg" + i + "\" style='color: #e0080b'></span>" + "</th>" +
                        "</tr>" +
                        "<br>");
                    $('#paper_title').append("<br><textarea rows='5' cols='40' id=\"caseAnswer" + i + "\">" + testCaseTitleList[i].answer + "</textarea>");
                    $('#paper_title').append("</table>+<br>");
                }
                //论述题
                $('#paper_title').append("<br><br>六、论述题")
                for (var i = 0; i < testDiscussTitleList.length; i++) {
                    $('#paper_title').append("<table style=\"font-family: '宋体'; font-size: 20px;\">" +
                        "<tr>" +
                        "<th colspan=\"4\"><span>" + (i + 1) + ".</span>" + testDiscussTitleList[i].name +"("+testDiscussTitleList[i].score+"分)"+ "</th>" +
                        "</tr>" +
                        "<tr>" +
                        "<th colspan=\"2\"><span>请输入本题得分：</span>&nbsp;<input type='text' id=\"shortTitleScore" + i + "\" size='4' onchange=\"checkShortScore("+i+")\"/>" + "</th>" +
                        "<th colspan=\"2\"><span id=\"shortScoreMsg" + i + "\" style='color: #e0080b'></span>" + "</th>" +
                        "</tr>" +
                        "<br>");
                    $('#paper_title').append("<br><textarea rows='5' cols='40' id=\"discussAnswer" + i + "\">" + testDiscussTitleList[i].answer + "</textarea>");
                    $('#paper_title').append("</table>+<br>");
                }
            }
        },
        error: function (xhr) {
            // 导致出错的原因较多，以后再研究
            console.log('error:' + JSON.stringify(xhr));
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
var count=0;
function checkShortScore(i) {
    var titleCount=accountPaperRecord.paper.shortList.length+accountPaperRecord.paper.caseList.length+accountPaperRecord.paper.discussList.length;
    var list=accountPaperRecord.paper.shortList;
        var shortScore=$("#" + "shortTitleScore" + i).val();
        if(shortScore==""){
            $("#" + "shortScoreMsg" + i).html("请输入正确得分！")
            if(count==titleCount) {
                count--
            }
        }else if((shortScore*10)%5!=0){
            $("#" + "shortScoreMsg" + i).html("请输入正确得分！")
            if(count==titleCount) {
                count--
            }
        }else if(shortScore<0||shortScore>list[i].score){
            $("#" + "shortScoreMsg" + i).html("请输入正确得分！")
            if(count==titleCount) {
                count--
            }
        }else{
            $("#" + "shortScoreMsg" + i).html("")
            if(count!=titleCount) {
                count++
            }
        }
    checkButtonStatus()
}

function checkCaseScore(i) {
    var titleCount=accountPaperRecord.paper.shortList.length+accountPaperRecord.paper.caseList.length+accountPaperRecord.paper.discussList.length;
    var list=accountPaperRecord.paper.caseList;
    var caseScore=$("#" + "caseTitleScore" + i).val();
    if(caseScore==""){
        $("#" + "caseScoreMsg" + i).html("请输入正确得分！")
        if(count==titleCount) {
            count--
        }
    }else if((caseScore*10)%5!=0){
        $("#" + "caseScoreMsg" + i).html("请输入正确得分！")
        if(count==titleCount) {
            count--
        }
    }else if(caseScore<0||caseScore>list[i].score){
        $("#" + "caseScoreMsg" + i).html("请输入正确得分！")
        if(count==titleCount) {
            count--
        }
    }else{
        $("#" + "caseScoreMsg" + i).html("")
        if(count!=titleCount) {
            count++
        }
    }
    checkButtonStatus()
}

function checkDiscussScore(i) {
    var titleCount=accountPaperRecord.paper.shortList.length+accountPaperRecord.paper.caseList.length+accountPaperRecord.paper.discussList.length;
    var list=accountPaperRecord.paper.discussList;
    var discussScore=$("#" + "discussTitleScore" + i).val();
    if(discussScore==""){
        $("#" + "discussScoreMsg" + i).html("请输入正确得分！")
        if(count==titleCount) {
            count--
        }
    }else if((discussScore*10)%5!=0){
        $("#" + "discussScoreMsg" + i).html("请输入正确得分！")
        if(count==titleCount) {
            count--
        }
    }else if(discussScore<0||discussScore>list[i].score){
        $("#" + "discussScoreMsg" + i).html("请输入正确得分！")
        if(count==titleCount) {
            count--
        }
    }else{
        $("#" + "discussScoreMsg" + i).html("")
        if(count!=titleCount) {
            count++
        }
    }
    checkButtonStatus()
}

function clearScore() {
    var i = 0;
    var j = 0;
    var k = 0;
    while ($("#" + "shortTitleScore" + i).length > 0) {
        $("#" + "shortTitleScore" + i).html("")
        i++;
    }
    while ($("#" + "caseTitleScore" + j).length > 0) {
        $("#" + "caseTitleScore" + j).html("")
        j++;
    }
    while ($("#" + "discussTitleScore" + k).length > 0) {
        $("#" + "discussTitleScore" + k).html("")
        k++;
    }
    $('#correct_submit').attr("disabled","disabled")
    count=0;
}
//改变按钮禁用和不可禁用状态
function checkButtonStatus() {
    var scoreCount=0;
    var i = 0;
    var j = 0;
    var k = 0;
    while ($("#" + "shortTitleScore" + i).length > 0) {
        if($("#" + "shortTitleScore" + i).val()!=""){
            scoreCount++;
        }
        i++;
    }
    while ($("#" + "caseTitleScore" + j).length > 0) {
        if($("#" + "caseTitleScore" + j).val()!=""){
            scoreCount++
        }
        j++;
    }
    while ($("#" + "discussTitleScore" + k).length > 0) {
        if($("#" + "discussTitleScore" + k).val()!=""){
            scoreCount++
        }
        k++;
    }
    if((count==accountPaperRecord.paper.shortList.length+accountPaperRecord.paper.caseList.length+accountPaperRecord.paper.discussList.length)
    &&(scoreCount==accountPaperRecord.paper.shortList.length+accountPaperRecord.paper.caseList.length+accountPaperRecord.paper.discussList.length)){
        $('#correct_submit').removeAttr("disabled")
    }else{
        $('#correct_submit').attr("disabled","disabled")
    }
}