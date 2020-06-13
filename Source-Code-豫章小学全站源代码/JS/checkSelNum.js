//-------------------------------
//  popUpWindowfar(URLStr)
//  功能介绍：在屏幕外弹出URLStr链接的窗口
//  参数说明：URLStr
//  返回值  ：无 
//-------------------------------
function popUpWindowfar(URLStr) {
    window.open(URLStr, 'popupnav', 'scrollbars=yes,toolbar =0,resizable=1,left=3000, top=200, width=1,height=1', 0);
}
//-------------------------------
//  函数名：notNull(i_field,i_value)
//  功能介绍：检查输入是否为非空
//  参数说明：数据项，输入的对应值
//  返回值  ：1-非空,0-为空
//-------------------------------
function notNull(i_field, i_value) {
    if (i_value == null || jstrim(i_value) == "") {
        alert("【" + i_field + "】 不可为空！");
        return 0;
    }
    return 1;
}
function isDate(i_field, thedate, flag) {
    if (!(thedate.length == 10)) {
        alert("【" + i_field + "】日期格式不对,要求为yyyy-mm-dd");
        return 0;
    }

    var reg = /^(\d{1,4})(-)(\d{1,2})\2(\d{1,2})$/;
    var r = thedate.match(reg);

    if (r == null) {
        alert("请输入正确的【" + i_field + "】");
        return 0;
    }
    var d = new Date(r[1], r[3] - 1, r[4]);
    var newStr = d.getFullYear() + r[2] + (d.getMonth() + 1) + r[2] + d.getDate()
    var newDate = r[1] + r[2] + (r[3] - 0) + r[2] + (r[4] - 0)
    //alert("----------r:"+r+" d:"+d+" newStr:"+newStr+" newDate:"+newDate);
    if (newStr == newDate) {
        return 1;
    }
    if (flag == "0")
        alert("请输入正确的【" + i_field + "】");
    if (flag == "1")
        alert("【" + i_field + "】7到14位出生日期输入有误,请检查！");
    return 0;
}

//-------------------------------
//  函数名：jstrim(s_value)
//  功能介绍：去掉s_value两端的空格
//  参数说明：被操作的字符串
//  返回值  ：处理结果字符串
//-------------------------------
function jstrim(str) {
    while (str != "" && str.charAt(0) == " ")
        str = str.substring(1, str.length);

    while (str != "" && str.charAt(str.length - 1) == " ")
        str = str.substring(0, str.length - 1);

    return str;
}

//-------------------------------
//  函数名：trimall()
//  功能介绍：去掉document的所有form里面的所有的input(text)里面的两端空格
//  参数说明：无
//  返回值  ：无
//-------------------------------
function trimall() {
    var i, j;
    var allforms;
    var myelement;

    allforms = document.forms;

    for (i = 0; i < allforms.length; i++) {
        for (j = 0; j < allforms(i).elements.length; j++) {
            myelement = allforms(i).elements(j);
            if (myelement.type == "text")
                myelement.value = jstrim(myelement.value.toUpperCase());
        }
    }
}
//-------------------------------
//  checkNullvalue(idstr,msg)
//  功能介绍：检查idstr对象是否为空
//  参数说明：idstr需要检查的对象 msg弹出的消息
//  返回值  ：true or false
//-------------------------------
function checkNullvalue(idstr, msg) {
    var obj = document.all.item(idstr);
    if (jstrim(obj.value) == "") {
        alert(msg + "不能为空!");
        return false;
    }
    return true;
}
//-------------------------------
//  FindOptionValue(objid,objoptionid)
//  功能介绍：对于输入到objid对象中的数据，在objoptionid对象中找到其对应的位置
//  参数说明：objid 文本对象 objoptionid 下拉框对象
//  返回值  ：无
//-------------------------------
function FindOptionValue(objid, objoptionid) {
    var findflag = 0;
    var obj = document.all[objid];
    var objoption = document.all[objoptionid];
    var objvalue = obj.value;
    var optionlen = document.all[objoptionid].options.length;

    for (var i = 0; i < optionlen; i++) {
        if (objoption.options(i).value == objvalue) {
            objoption.selectedIndex = i;
            findflag = 1;
            break;
        }

    }
    if (findflag != 1 && objvalue != "") {
        alert("输入值应在01到" + (optionlen) + "之间！");
        objoption.value = "02";
        obj.focus();

    }

}

//-------------------------------
//  GetOPtionTextValue(objoptionid,objid)
//  功能介绍：选中下拉框objoptionid中的某一数据，将其text(XXX:YYYYY),YYYY赋值给objid
//  参数说明：objoptionid,objid
//  返回值  ：objid 文本对象 objoptionid 下拉框对象
//-------------------------------
function GetOPtionTextValue(objoptionid, objid) {
    var obj = document.all[objoptionid];
    var val = obj.value;
    if (val == "") { document.all[objid].value = ""; return; }
    for (var i = 0; i < obj.length; i++) {
        var tmp
        tmp = obj.options(i).text
        tmp = tmp.substr((tmp.indexOf(":") + 1), tmp.length - tmp.indexOf(":") - 1)
        if (obj.options(i).value == val) {
            obj.selectedIndex = i;
            document.all[objid].value = tmp;

            return true;
            break;
        }

    }
}
//将下拉框sel1中的数据增加到下拉框sel2中
function additem(sel1, sel2) {
    var count = 0;
    for (var x = 0; x < sel1.length; x++) {
        var opt = sel1.options[x];
        if (opt.selected) {
            count = count + 1;
        }
    }

    for (var x = 0; x < sel1.length; x++) {
        var opt = sel1.options[x];

        if (opt.selected) {
            sel2.options[sel2.options.length] = new Option(opt.text, opt.value, 0, 0);
            count--;
            sel1.options[x] = null;
            x--;
        }
    }

}
//光标移动至最后
function movelast() {
    var e = event.srcElement;
    var r = e.createTextRange();
    r.moveStart('character', e.value.length);
    r.collapse(true);
    r.select();
}
function mouse_over(obj, i) {
    if (obj.style.backgroundColor == "#f4ffff")
        obj.style.backgroundColor = "#ffb899";

    if (obj.style.backgroundColor == "#ffffcc")
        obj.style.backgroundColor = "#ffb898";
}
function mouse_out(obj, i) {
    if (obj.style.backgroundColor != "#cde9f3" && obj.style.backgroundColor != "#cde9f2") {
        if (i % 2 == 0)
            obj.style.backgroundColor = "#f4ffff"
        else
            obj.style.backgroundColor = "#ffffcc"
    }
}
function MM_openBrWindow(theURL, winName, features) {
    var newwin;
    newwin = window.open(theURL, winName, features, 0);
    newwin.focus(); //获得焦点
    return false;
}
//-------------------------------
//函数名：checkTEL
//功能介绍：检查是否为电话号码
//参数说明：要检查的字符串
//返回值：true为是合法，false为不合法
//-------------------------------
function validateTelphoneNum(lxdh) {
    //if(TelNumStr.value== null ||TelNumStr.value=="" )return true;	
    //var reg=/(^[0-9]{3,4}\-[0-9]{3,8}$)|(^[0-9]{3,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)/
    var reg = /(^(0([1-9][0-9]{1,2}))?([2-9][0-9]{6,7})$)|(^(0([1-9][0-9]{1,2}-))?([2-9][0-9]{6,7})$)/;
    if (!reg.test(lxdh)) {
        alert(lxdh + "电话号码无效!");
        return false;
    }
    else {
        return true;
    }
}
//-------------------------------
//函数名：isEmail
//功能介绍：检查是否为eamil
//参数说明：要检查的字符串
//返回值：true为是合法，false为不合法
//-------------------------------

function isEmail(emailstr) {
    //if(emailstr.value== null ||emailstr.value=="" )return true;	
    if (emailstr.indexOf('@', 0) == -1 || emailstr.indexOf('.') == -1) {
        alert("Email格式错误！");
        return false;
    }
    else {
        return true;
    }
}
//验证邮政编码
function CheckYzbm(yzbmstr) {
    var reg = /^[1-9]\d{5}$/;
    if (!reg.test(yzbmstr)) {
        alert("邮政编码错误！");
        return false;
    }
    else {
        return true;
    }
}
//验证手机号码
function IsDigit(cCheck) { return (('0' <= cCheck) && (cCheck <= '9')); }
function IsAlpha(cCheck) { return ((('a' <= cCheck) && (cCheck <= 'z')) || (('A' <= cCheck) && (cCheck <= 'Z'))) }
function VerifyInput(sjh) {
    if (sjh.length != 11 || sjh.indexOf("13") != 0) {
        alert("您的手机号码输入错误，请仔细检查后再输入正确号码");
        return false;
    }


    for (nIndex = 0; nIndex < sjh.length; nIndex++) {
        cCheck = sjh.charAt(nIndex);

        if (!IsDigit(cCheck)) {
            alert("手机号码只包含数字");
            return false;
        }
    }

    return true;
}
function checkyhdh(YHDH) {
    var validuseridchars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_";
    if (YHDH != null && YHDH.length > 0) {
        if (YHDH.length < 6) {
            alert("对不起，用户名不能少于6个字符！");
            return false;
        }
        if (YHDH.length > 16) {
            alert("对不起，用户名不能超过16个字符！");
            return false;
        }
        for (var j = 0; j < YHDH.length; j++) {
            var let = YHDH.charAt(j).toLowerCase();
            if (validuseridchars.indexOf(let) != -1)
                continue;
            alert("输入的用户名含有无效字符: ‘" + let + "’。用户名只能是字母、数字和下划线！");
            return false;
            break;
        }
    }
    else {
        alert("对不起，用户名不能为空");
        return false;
    }
    return true;
}

function checkMM(MM) {
    var validuseridchars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_";
    if (MM != null && MM.length > 0) {
        if (MM.length < 6) {
            alert("对不起，密码不能少于6个字符！");
            return false;
        }
        if (MM.length > 10) {
            alert("对不起，密码不能超过10个字符！");
            return false;
        }
        for (var j = 0; j < MM.length; j++) {
            var let = MM.charAt(j).toLowerCase();
            if (validuseridchars.indexOf(let) != -1)
                continue;
            alert("输入的密码含有无效字符: ‘" + let + "’。用户名只能是字母、数字和下划线！");
            return false;
            break;
        }
    }
    else {
        alert("对不起，密码不能为空");
        return false;
    }
    return true;
}

function isdigit(s) {
    var r, re;
    re = /\d*/;         //\d表示数字,*表示匹配多个数字   
    r = s.match(re);

    return (r == s) ? true : false;
}

function isLength(i_field, i_length, i_value) {
    if (!(i_value.length == i_length)) {
        alert("'" + i_field + "' 的长度要求为' " + i_length + " '！");
        return false;
    }
    return true;
}

function checkHphmFdjh(i_value, i_alert) {
    var validuseridchars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for (var j = 0; j < i_value.length; j++) {
        var let = i_value.charAt(j).toLowerCase();
        if (validuseridchars.indexOf(let) != -1)
            continue;
        alert("输入的" + i_alert + "含有无效字符: ‘" + let + "’,请检查！");
        return false;
        break;
    }
    return true;
}

function ishasChinese(str) {
    reg = /[\u4E00-\u9FA5]/gi;
    if (reg.test(str)) {
        alert(str + ' 包含中文');
    } else {
        alert(str + ' 没有中文');
    }
}
//---------------------------------------------
//验证身份证明是否符合规则
//---------------------------------------------
function checkIdcard(idcard) {
    var Errors = new Array(
	"验证通过!",
	"身份证号码位数不对!",
	"身份证号码出生日期超出范围或含有非法字符!",
	"身份证号码校验错误!",
	"身份证地区非法!"
	);
    var area = { 11: "北京", 12: "天津", 13: "河北", 14: "山西", 15: "内蒙古", 21: "辽宁", 22: "吉林", 23: "黑龙江", 31: "上海", 32: "江苏", 33: "浙江", 34: "安徽", 35: "福建", 36: "江西", 37: "山东", 41: "河南", 42: "湖北", 43: "湖南", 44: "广东", 45: "广西", 46: "海南", 50: "重庆", 51: "四川", 52: "贵州", 53: "云南", 54: "西藏", 61: "陕西", 62: "甘肃", 63: "青海", 64: "宁夏", 65: "新疆", 71: "台湾", 81: "香港", 82: "澳门", 91: "国外" }
    var idcard, Y, JYM;
    var S, M;
    var idcard_array = new Array();
    idcard_array = idcard.split("");
    //地区检验 
    if (area[parseInt(idcard.substr(0, 2))] == null) return Errors[4];
    //身份号码位数及格式检验 
    switch (idcard.length) {
        case 15:
            if ((parseInt(idcard.substr(6, 2)) + 1900) % 4 == 0 || ((parseInt(idcard.substr(6, 2)) + 1900) % 100 == 0 && (parseInt(idcard.substr(6, 2)) + 1900) % 4 == 0)) {
                ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/; //测试出生日期的合法性 
            } else {
                ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/; //测试出生日期的合法性 
            }
            if (ereg.test(idcard)) return Errors[0];
            else return Errors[2];
            break;
        case 18:
            //18位身份号码检测 
            //出生日期的合法性检查  
            //闰年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9])) 
            //平年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8])) 
            if (parseInt(idcard.substr(6, 4)) % 4 == 0 || (parseInt(idcard.substr(6, 4)) % 100 == 0 && parseInt(idcard.substr(6, 4)) % 4 == 0)) {
                ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/; //闰年出生日期的合法性正则表达式 
            } else {
                ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/; //平年出生日期的合法性正则表达式 
            }
            if (ereg.test(idcard)) {//测试出生日期的合法性 
                //计算校验位 
                S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7
	+ (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9
	+ (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10
	+ (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5
	+ (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8
	+ (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4
	+ (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2
	+ parseInt(idcard_array[7]) * 1
	+ parseInt(idcard_array[8]) * 6
	+ parseInt(idcard_array[9]) * 3;
                Y = S % 11;
                M = "F";
                JYM = "10X98765432";
                M = JYM.substr(Y, 1); //判断校验位 
                if (M == idcard_array[17]) return Errors[0]; //检测ID的校验位 
                else return Errors[3];
            }
            else return Errors[2];
            break;
        default:
            return Errors[1];
            break;
    }
}
//-----------------------------------------------------------
//把输入的字符串转化为半角
//-----------------------------------------------------------
function toDBC(Str) {
    var DBCStr = "";
    for (var i = 0; i < Str.length; i++) {
        var c = Str.charCodeAt(i);
        if (c == 12288) {
            DBCStr += String.fromCharCode(32);
            continue;
        }
        if (c > 65280 && c < 65375) {
            DBCStr += String.fromCharCode(c - 65248);
            continue;
        }
        DBCStr += String.fromCharCode(c);
    }
    return DBCStr;
}
//------------------------------------------------------------
//把输入的字符串转换为半角,并删除所有空格 
//------------------------------------------------------------
function toTrimDBC(Str) {
    var DBCStr = "";
    for (var i = 0; i < Str.length; i++) {
        var c = Str.charCodeAt(i);
        if (c == 12288 || c == 32) {
            continue;
        }
        if (c > 65280 && c < 65375) {
            DBCStr += String.fromCharCode(c - 65248);
            continue;
        }
        DBCStr += String.fromCharCode(c);
    }
    return DBCStr;
}
//-----------------------------------------------------------
//判断字符串中是否包含中文
//-----------------------------------------------------------
function checkStr(str) {
    var Errors = new Array(
	"验证通过!",
	"身份证明号码中不能包含中文!"
	);
    var reg = /[\u4E00-\u9FA5]/gi;
    var t;
    var split_str;
    var i = str.indexOf('-');
    var j = str.indexOf('－');
    if (i > 0 && j < 0) {
        split_str = str.split('-');
    } else {
        split_str = str;
    }
    if (j > 0 && i < 0) {
        split_str = str.split('－');
    } else {
        split_str = str;
    }
    for (var k = 0; k < split_str.length; k++) {
        t = split_str.substring(k, k + 1);
        if (reg.test(t)) {
            return Errors[1];
            break;
        }
    }

    return Errors[0];
}

function chech_clshdh_Jyw(obj) {
    //  一、数字和字母的数值
    //      阿拉伯数字指定值为实际数字，罗马字母数值如下：
    //     A B C D E F G H J K L M N P R S T U V W X Y Z
    //     1 2 3 4 5 6 7 8 1 2 3 4 5 7 9 2 3 4 5 6 7 8 9
    //
    //  二、位置加权系数
    //     1 2 3 4 5 6 7 8  9 10 11 12 13 14 15 16 17
    //     8 7 6 5 4 3 2 10 0 9  8  7  6  5  4  3  2
    var regu = /^[-]{0,1}[0-9]{1,}$/;
    var strClsbdhValue = obj.value;
    var strClsbdh = strClsbdhValue.toUpperCase();
    var strClsbdhSzm = strClsbdhValue.substring(0, 1);
    var strClsbdhLength = strClsbdhValue.length;
    //判断长度
    if (strClsbdhLength != 17) {
        alert("该车辆识别代号有误，不符合GB16735《道路车辆车辆识别代号》国家强制标准。\r\n请确认车辆识别代号输入是否有误。");
        return 0;
    }
    //判断首字母
    //    if(regu.test(strClsbdhSzm)){
    //      alert("该车辆识别代号有误，不符合GB16735《道路车辆车辆识别代号》国家强制标准。\r\n请确认车辆识别代号输入是否有误。");
    //      return 0;
    //    }
    //判断17位数是否都一样
    var num = 0;
    var sValue;
    var k = 2;
    for (j = 0; j < 16; j++) {
        sValue = strClsbdh.substring(j + 1, k);
        if (strClsbdhSzm == sValue) {
            num = num + 1;
        }
        k++;
    }
    if (num == 16) {
        alert("该车辆识别代号有误，不符合GB16735《道路车辆车辆识别代号》国家强制标准。\r\n请确认车辆识别代号输入是否有误。");
        return 0;
    }
    var strLetter = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";
    var arrayValue = new Array(1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4, 5, 7, 9, 2,
                               3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8,
                               9);
    var arrayIndex = new Array(8, 7, 6, 5, 4, 3, 2, 10, 0, 9, 8, 7, 6, 5, 4, 3,
                               2);

    var iSum = 0;
    var SingleLetter = "";
    for (i = 0; i < 17; i++) {
        iSum += arrayValue[strLetter.indexOf(strClsbdh.substr(i, 1))] *
          arrayIndex[i];
    }
    var checkValue = iSum % 11;
    var strCheckValue = checkValue + "";
    if (checkValue == 10) {
        strCheckValue = "X";
    }
    //判断规则
    if (strClsbdh.substr(8, 1) != strCheckValue) {
        alert("该车辆识别代号有误，不符合GB16735《道路车辆车辆识别代号》国家强制标准。\r\n请确认车辆识别代号输入是否有误。");
        return 0;
    }
    return 1;
}