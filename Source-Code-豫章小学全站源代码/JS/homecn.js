var HomePageClient = Elong.Page.HomePageClient;
HomePageClient = Class.create();
var tempdata = new StringBuilder();
Object.extend(HomePageClient.prototype, {
    name: "HomePageClient",
    //初始化
    initialize: function() {
        this.initializeDOM();
        this.initializeEvent();
        this.initializeServerData();
    },
    //初始化服务端数据及初始状态
    initializeServerData: function() {
        this.serverDateStr = $("#serverdate").attr("value");
        //searchbox begin
        this.CheckInDate.val(dateToString(dateAdd(stringToDate(this.serverDateStr), 0)));
        this.CheckOutDate.val(afterDate());
    },
    //初始化DOM元素
    initializeDOM: function() {

        this.hotelDiv = $("#hotelDiv");
        this.CheckInDate = $("#CheckInDate");
        this.CheckOutDate = $("#CheckOutDate");
    },
    //初始化DOM事件
    initializeEvent: function() {
        this.CheckInDate.bind("click", this.DateInputClick.bindAsEventListener(this));
        this.CheckOutDate.bind("click", this.DateInputClick.bindAsEventListener(this));

    },
    DateInputClick: function(evt) {
        var element = Event.element(evt);
        var dateTo = stringToDate(this.serverDateStr);
        var dateFrom = stringToDate(this.serverDateStr);
        var chooseDate = stringToDate(this.serverDateStr);
        if (element.attr("id") == "CheckInDate") {
            dateTo = dateAdd(stringToDate(this.serverDateStr), intInDays60);
            chooseDate = $("#CheckInDate").val();
        }
        else if (element.attr("id") == "CheckOutDate") {
            if (this.CheckInDate.val() != "yyyy-mm-dd") {
                dateFrom = dateAdd(stringToDate(this.CheckInDate.val()), 1);
            }
            dateTo = dateAdd(stringToDate(this.serverDateStr), intInDays20 + intInDays60);
            chooseDate = $("#CheckInDate").val();
        }
        new CalendarWindow({
            eventElement: element,
            selectedDate: chooseDate,
            enabledFrom: dateToString(dateFrom),
            enabledTo: dateToString(dateTo),
            onSelected: function(date) {
                element.val(date);
                if (element.attr("id") == "CheckInDate") {
                    this.CheckOutDate.click();
                }

            } .bind(this)
        })
    },

    //初始不同语言版本链接
    initializeThemeLink: function() {

    }
});

//从配置文件中读取 开始 add by minjiang 09-12-2
try {
    intInDays20 = parseInt(document.getElementById("IntervallCheckInAndChekOut").value);
    intInDays60 = 120;
}
catch (e)
{ }
var client = null;
$(document).ready(function() {
    client = new HomePageClient();
});



//====================================以下是函数部分=======================
function afterDate() {
    var va = document.getElementById("CheckOut");
    if (va != null) {
        return va.value;
    } else {
    return dateToString(dateAdd(stringToDate(this.serverDateStr), intInDays20))
    }
}

//utilities
function dateAdd(inputDate, number) {
    inputDate.setDate(inputDate.getDate() + number);
    return inputDate;
}

function stringToDate(sDate) {
    var bValidDate, year, month, day;
    var iaDate = new Array(3);
    iaDate = sDate.toString().split("-");
    year = parseFloat(iaDate[0]);
    month = parseFloat(iaDate[1]) - 1;
    day = parseFloat(iaDate[2]);
    return (new Date(year, month, day));
}

function dateToString(targetDate) {
    var tmpMonth, tmpDate;
    if ((targetDate.getMonth() + 1) < 10) {
        tmpMonth = "0" + (targetDate.getMonth() + 1);
    }
    else {
        tmpMonth = targetDate.getMonth() + 1;
    }

    if (targetDate.getDate() < 10) {
        tmpDate = "0" + (targetDate.getDate());
    }
    else {
        tmpDate = targetDate.getDate();
    }
    return targetDate.getFullYear() + '-' + tmpMonth + '-' + tmpDate;
}
//日期格式检查
function isDateString(str) {
    var reg = /^\d{4}-[0-1]?\d{1}-[0-3]?\d{1}$/;
    return reg.test(str);
}
function CheckDate(strDate1, strDate2) {
    return (stringToDate(strDate1, true) < stringToDate(strDate2, true));
}
function compareDate(strDate1, strDate2) {
    var tmp1 = strDate1.split('-');
    var tmp2 = strDate2.split('-');
    var date1 = eval('new Date(' + tmp1[0] + ',' + tmp1[1] + ',' + tmp1[2] + ')');
    var date2 = eval('new Date(' + tmp2[0] + ',' + tmp2[1] + ',' + tmp2[2] + ')');
    if ((date2.valueOf() - date1.valueOf()) >= 20 * 24 * 60 * 60 * 1000) {
        return true;
    }
    else {
        return false;
    }
}
/**********************动态装载js函数*************************/
//scriptId--脚本标签ID,jsUrl--脚本文件位置，isReLoad--是否重新装载，waitId--装载时Loading容器，callbackfunc--回调函数
function LoadJs(scriptId, jsUrl, isReLoad, waitId, callbackfunc, encode) {
    var args = Array.prototype.slice.call(arguments, 5);
    headLoc = document.getElementsByTagName("head").item(0);

    if (document.getElementById(scriptId) != null && isReLoad) {
        headLoc.removeChild(document.getElementById(scriptId));
    } else if (document.getElementById(scriptId) != null && !isReLoad) {
        return;
    }

    var waitObj = document.getElementById(waitId);
    if (waitObj != null && waitObj != 'undefine') {
        $("#" + waitId).html("请稍候...");
        $("#" + waitId).show();
        //alert(waitObj.innerHTML);               
    }

    var scriptObj = document.createElement("script");

    scriptObj[document.all ? "onreadystatechange" : "onload"] = function() {
        if (waitObj != null && waitObj != 'undefine') {
            $("#" + waitId).html("");
            $("#" + waitId).show();
            //alert('onload');                       
        }
        if (callbackfunc != null) callbackfunc.apply(null, args);
    }

    scriptObj.setAttribute("type", "text/javascript");
    if (encode != null) {
        scriptObj.setAttribute("charset", encode);
    }
    else {
        scriptObj.setAttribute("charset", "gb2312");
    }
    scriptObj.setAttribute("src", jsUrl);
    scriptObj.setAttribute("id", scriptId);
    headLoc.appendChild(scriptObj);
}

function WM_readCookie(name) {
    if (document.cookie == "")
        return "";
    else
        return WM_getCookieValue(name);
}
function WM_getCookieValue(name) {
    var firstChar, lastChar;
    var theBigCookie = document.cookie;
    firstChar = theBigCookie.indexOf(name);
    if (firstChar != -1) {
        firstChar += name.length + 1;
        lastChar = theBigCookie.indexOf(';', firstChar);
        if (lastChar == -1) lastChar = theBigCookie.length;
        return theBigCookie.substring(firstChar, lastChar);
    }
    else {
        return "";
    }
}

//渠道控制end
//for cms start
//for eamil input start

var errfound = false;


var featuredcontentglider = {
    csszindex: 100,
    glide: function(config, showpage, isprev) {
        var selected = parseInt(showpage)
        if (selected >= config.$contentdivs.length) { //if no content exists at this index position
            alert("No content exists at page " + (selected + 1) + "! Loading 1st page instead.")
            selected = 0
        }
        var $target = config.$contentdivs.eq(selected)
        //Test for toggler not being initialized yet, or user clicks on the currently selected page):
        if (config.$togglerdiv.attr('lastselected') == null || parseInt(config.$togglerdiv.attr('lastselected')) != selected) {
            var $selectedlink = config.$toc.eq(selected)
            config.$next.attr('loadpage', (selected < config.$contentdivs.length - 1) ? selected + 1 + 'pg' : 0 + 'pg')
            config.$prev.attr('loadpage', (selected == 0) ? config.$contentdivs.length - 1 + 'pg' : selected - 1 + 'pg')
            var startpoint = (isprev == "previous") ? -config.startpoint : config.startpoint
            $target.css(config.leftortop, startpoint).css("zIndex", this.csszindex++) //hide content so it's just out of view before animating it
            var endpoint = (config.leftortop == "left") ? { left: 0} : { top: 0} //animate it into view
            $target.animate(endpoint, config.speed)
            config.$toc.removeClass('selected')
            $selectedlink.addClass('selected')
            config.$togglerdiv.attr('lastselected', selected + 'pg')
        }
    },
    init: function(config) {

    }
}
