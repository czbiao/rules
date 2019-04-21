/**
 * Created by linjingshan on 2018/7/4.
 */
/*
 FileReader共有4种读取方法：
 1.readAsArrayBuffer(file)：将文件读取为ArrayBuffer。
 2.readAsBinaryString(file)：将文件读取为二进制字符串
 3.readAsDataURL(file)：将文件读取为Data URL
 4.readAsText(file, [encoding])：将文件读取为文本，encoding缺省值为'UTF-8'
 */
var obj;
var wb;//读取完成的数据
var rABS = false; //是否将文件读取为二进制字符串
function setObj(objt) {
    obj = objt;
}
function importf(t) {//导入
    if (!obj.files) {
        return;
    }
    var f = obj.files[0];
    var reader = new FileReader();
    reader.onload = function (e) {
        var data = e.target.result;
        if (rABS) {
            wb = XLSX.read(btoa(fixdata(data)), {//手动转化
                type: 'base64'
            });
        } else {
            wb = XLSX.read(data, {
                type: 'binary'
            });
        }
        //wb.SheetNames[0]是获取Sheets中第一个Sheet的名字
        //wb.Sheets[Sheet名]获取第一个Sheet的数据
        var list = XLSX.utils.sheet_to_json(wb.Sheets[wb.SheetNames[0]]);
        assemble(list, t);
    };
    if (rABS) {
        reader.readAsArrayBuffer(f);
    } else {
        reader.readAsBinaryString(f);
    }
}
function assemble(list, type) {
    var url;
    var tep_list;
    if (type == 0) {
        url = '../title/addTitles';
        tep_list = new Array(list.length);
        for (var i = 0; i < list.length; i++) {
            tep_list[i] =
                '{' +
                '"name": "' + list[i]['题目内容'] + '",' +
                '"diffId":' + (list[i]['难度等级'] == '易' ? 1 : (list[i]['难易等级'] == '中' ? 2 : 3)) + ',' +
                '"score":' + list[i]['分值'] + ',' +
                '"options":[' +
                '{' +
                '"titleId":' + list[i]['题目编号'] + ',' +
                '"content": "' + list[i]['选项A'] + '1",' +
                '"checked":' + (list[i]['正确选项'].indexOf('A') == '-1' ? 0 : 1) +
                '},' +
                '{' +
                '"titleId":' + list[i]['题目编号'] + ',' +
                '"content": "' + list[i]['选项A'] + '1",' +
                '"checked":' + (list[i]['正确选项'].indexOf('B') == '-1' ? 0 : 1) +
                '},' +
                '{' +
                '"titleId":' + list[i]['题目编号'] + ',' +
                '"content": "' + list[i]['选项A'] + '1",' +
                '"checked":' + (list[i]['正确选项'].indexOf('C') == '-1' ? 0 : 1) +
                '},' +
                '{' +
                '"titleId":' + list[i]['题目编号'] + ',' +
                '"content": "' + list[i]['选项A'] + '1",' +
                '"checked":' + (list[i]['正确选项'].indexOf('D') == '-1' ? 0 : 1) +
                '}' +
                ']' +
                '}';
        }
        // document.getElementById("demo").innerHTML = tep_list;
    }
    else if (type == 1) {
        url = '../account/insertAccount'
        tep_list = new Array(list.length);
        for (var i = 0; i < list.length; i++) {
            tep_list[i] =
                '{' +
                '"studentId":"' + list[i]["学号"] + '",' +
                '"username":"' + list[i]['姓名'] + '",' +
                '"clazz":"' + list[i]['班级'] + '",' +
                '"grade":"' + list[i]['年级'] + '",' +
                '"major":"' + list[i]['专业'] + '",' +
                '"college":"' + list[i]['学院'] + '"' +
                '}';
        }
    }
    else if (type == 2) {
        url = '../title/addAdditionTitles';
        tep_list = new Array(list.length);
        for (var i = 0; i < list.length; i++) {
            tep_list[i] =
                '{' +
                '"name": "' + list[i]['题目内容'] + '",' +
                '"type":' + (list[i]['类型'] == '填空题' ? 1 : (list[i]['类型'] == '简答题' ? 3 : (list[i]['类型'] == '案例题' ? 4 : 5))) + ',' +
                '"score":' + list[i]['分值'] + ',' +
                '"answer":"' + list[i]['答案'] + '"' +
            '}';
        }
    }
    $.ajaxSetup({contentType: 'application/json'});
    $.ajax({
        url: url,
        dataType: 'json',
        method: 'POST',
        data: '[' + tep_list + ']',
        success: function (data) {

        }
        ,
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


function fixdata(data) { //文件流转BinaryString
    var o = "",
        l = 0,
        w = 10240;
    for (; l < data.byteLength / w; ++l) o += String.fromCharCode.apply(null, new Uint8Array(data.slice(l * w, l * w + w)));
    o += String.fromCharCode.apply(null, new Uint8Array(data.slice(l * w)));
    return o;
}

function saveAs(obj, fileName) {//当然可以自定义简单的下载文件实现方式
    var tmpa = document.createElement("a");
    tmpa.download = fileName || "下载";
    tmpa.href = URL.createObjectURL(obj); //绑定a标签
    tmpa.click(); //模拟点击实现下载
    setTimeout(function () { //延时释放
        URL.revokeObjectURL(obj); //用URL.revokeObjectURL()来释放这个object URL
    }, 100);
}

const wopts = {bookType: 'xlsx', bookSST: false, type: 'binary'};//这里的数据是用来定义导出的格式类型
// const wopts = { bookType: 'csv', bookSST: false, type: 'binary' };//ods格式
// const wopts = { bookType: 'ods', bookSST: false, type: 'binary' };//ods格式
// const wopts = { bookType: 'xlsb', bookSST: false, type: 'binary' };//xlsb格式
// const wopts = { bookType: 'fods', bookSST: false, type: 'binary' };//fods格式
// const wopts = { bookType: 'biff2', bookSST: false, type: 'binary' };//xls格式

//Sunss 导出成绩吗
function downloadExl(data) {
    const wb = {SheetNames: ['Sheet1'], Sheets: {}, Props: {}};
    wb.Sheets['Sheet1'] = XLSX.utils.json_to_sheet(data);//通过json_to_sheet转成单页(Sheet)数据
    saveAs(new Blob([s2ab(XLSX.write(wb, wopts))], {type: "application/octet-stream"}), "学生成绩" + '.' + (wopts.bookType == "biff2" ? "xls" : wopts.bookType));
}
function s2ab(s) {
    if (typeof ArrayBuffer !== 'undefined') {
        var buf = new ArrayBuffer(s.length);
        var view = new Uint8Array(buf);
        for (var i = 0; i != s.length; ++i) view[i] = s.charCodeAt(i) & 0xFF;
        return buf;
    } else {
        var buf = new Array(s.length);
        for (var i = 0; i != s.length; ++i) buf[i] = s.charCodeAt(i) & 0xFF;
        return buf;
    }
}
