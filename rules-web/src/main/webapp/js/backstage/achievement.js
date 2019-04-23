/**
 * Created by linjingshan on 2018-7-4.
 */
/**
 * 像select组件添加option
 * @param select dom对象
 * @param data 要添加的数据
 * @param type
 */
function addOption(select, data, type) {
    for (var i = 0; i < data.length; i++) {
        var option = document.createElement("option");
        switch (type) {
            case "college":
                option.value = data[i].collegeId;
                break;
            case "major":
                option.value = data[i].majorId;
                break;
            case "clazz":
                option.value = data[i].clazzId;
                break;
        }
        option.text = data[i].name;
        select.append(option);
    }
}

/**
 * 表头
 * @type {[*]}
 */
var pNames = ["studentId", "username", "college", "major", "grade", "clazz", "score"];
/**
 * 将item对象变成一个tr对象
 * @param item
 * @returns {Element}
 */
function getRow(item) {
    var tr = document.createElement("tr");
    for (var i = 0; i < pNames.length; i++) {
        var td = document.createElement("td");
        td.innerHTML = item[pNames[i]];
        tr.appendChild(td);
    }
    return tr;
}

/**
 * 将请求到的成绩data显示
 * @param data
 */
function showAchieve(data, conditionMsg) {
    var achieveBody = $('#achieve_tbody')[0];
    var achieveMsg = $('#achieve_msg')[0];
    var achieveTbody = $('#achieve_tbody')[0];
    removeAllChild(achieveTbody);
    achieveMsg.innerHTML = conditionMsg + '共查询出记录数目' + data.length + '个';
    for (var i = 0; i < data.length; i++) {
        var tr = getRow(data[i]);
        achieveBody.appendChild(tr);
    }
}

/**
 * 移除element下的所有节点
 * @param parentNode
 */
function removeAllChild(parentNode) {
    while (parentNode.hasChildNodes()) {
        parentNode.removeChild(parentNode.firstChild);
    }
}

/**
 * 清除select下的option
 * @param select
 */
function clearOptions(select) {
    select.options.length = 0;
    var option = document.createElement("option");
    option.value = "";
    option.text = "请选择";
    select.append(option);
}

/**
 * 设置select组件的可点击状态
 * @param select
 * @param flag
 */
function setDisabled(select, flag) {
    select.disabled = flag;
}

/**
 * 初始化方法
 */
function init(select, num) {
    for (var i = 0; i <= num; i++) {
        var option = document.createElement("option");
        option.value = i;
        option.text = i;
        select.append(option);
    }
}

/**
 * 根据选择的条件格式化一条语句
 * @returns {string}
 */
function formatCondition() {
    var collegeSelect = $('#college')[0];
    var majorSelect = $('#major')[0];
    var clazzSelect = $('#clazz')[0];
    var gradeSelect = $('#grade')[0];
    var scoreSelect = $('#score')[0];
    var conditionMsg = '';
    collegeSelect.options.selectedIndex == 0 ? conditionMsg += "韩山师范学院所有学院" : conditionMsg += ('韩山师范学院' + collegeSelect.options[collegeSelect.options.selectedIndex].text);
    // majorSelect.options.selectedIndex == 0 ? conditionMsg += "" : conditionMsg += (majorSelect.options[majorSelect.options.selectedIndex].text + '专业');
    // conditionMsg += "";
    // conditionMsg += (gradeSelect.options[gradeSelect.options.selectedIndex].text + '级');
    // clazzSelect.options.selectedIndex == 0 ? conditionMsg += "" : conditionMsg += (clazzSelect.options[clazzSelect.options.selectedIndex].text);
    scoreSelect.options.selectedIndex == 0 ? conditionMsg += "" : conditionMsg += ('分数在' + scoreSelect.options[scoreSelect.options.selectedIndex].text + '分以上');
    return conditionMsg;
}
/**
 * 请求学院信息
 */
function getColleges(obj) {
    if ($(obj)[0].options.length > 1) return;
    $.ajax({
        url: '../school/collegeList',
        method: 'GET',
        success: function (data) {
            console.log(data)
            addOption($(obj), data, "college");
        }

    });
    init($('#score'), 100);
}

/**
 * 请求某个学院的专业信息
 * @param collegeId 学院编号
 */
function getMajor(collegeId, majorObj, classObj) {
    // clearOptions($(majorObj)[0]);
    // clearOptions($(classObj)[0]);
    // collegeId == "" ? setDisabled($(majorObj)[0], true) : setDisabled($(majorObj)[0], false);
    // setDisabled($(classObj)[0], true);
    var json = {};
    json.collegeId = parseInt(collegeId);
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: '../school/majorList',
        dataType: 'json',
        method: 'POST',
        data: JSON.stringify(json),
        success: function (data) {
            addOption($(majorObj), data, "major");
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

/**
 * 请求某个专业的班级信息
 * @param majorId 专业编号
 */
function getClazz(majorId, classObj) {
    clearOptions($(classObj)[0]);
    majorId == "" ? setDisabled($(classObj)[0], true) : setDisabled($(classObj)[0], false);
    var json = {};
    json.majorId = majorId;
    $.ajax({
        url: '../school/clazzList',
        dataType: 'json',
        method: 'POST',
        data: JSON.stringify(json),
        success: function (data) {
            addOption($(classObj), data, "clazz");
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

var info;

function query() {
    var collegeSelect = $('#college')[0];
    var majorSelect = $('#major')[0];
    var clazzSelect = $('#clazz')[0];
    var gradeSelect = $('#grade')[0];
    var scoreSelect = $('#score')[0];
    var json = {};
    json.college = collegeSelect.options.selectedIndex == 0 ? "" : collegeSelect.options[collegeSelect.options.selectedIndex].text;
    // json.major = majorSelect.options.selectedIndex == 0 ? "" : majorSelect.options[majorSelect.options.selectedIndex].text;
    // json.grade = gradeSelect.options.selectedIndex == 0 ? 0 : gradeSelect.options[gradeSelect.options.selectedIndex].text;
    // json.clazz = clazzSelect.options.selectedIndex == 0 ? "" : clazzSelect.options[clazzSelect.options.selectedIndex].text;
    json.major = "";
    json.grade = "";
    json.clazz = "";
    json.level = scoreSelect.options.selectedIndex == 0 ? 0 : scoreSelect.options[scoreSelect.options.selectedIndex].text;

    console.log(json.college + typeof (json.college));
        // console.log("Hello");

    $.ajax({
        url: '../test/recordListByCondition',
        dataType: 'json',
        method: 'GET',
        data: json,
        success: function (data) {
            showAchieve(data, formatCondition());
            info = data;
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

function exportInfo() {
    if (info == undefined)
        alert("请先查询信息！！");
    downloadExl(info);
}

/**
 * 多选下拉框
 */
function initMultipleSelect(obj) {
    $(obj).multipleSelect({
        width: '100%'
    });
}