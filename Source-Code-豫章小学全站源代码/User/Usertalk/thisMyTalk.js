var url = window.location.href;
function g_del(id) {   //删除
    g_dels(id, url);
}
function g_Dile(userid, forid, id) {  //添加
    g_Diles(userid, forid, id, url);
}

function Og_Dile(userid, forid, id, conid) {  //添加
    Og_Diles(userid, forid, id, url, conid);
}
$(document).ready(function () {
    uploadcreate($("#uploadbox"));
});

var hideDiv = function (idName) {
    $("#" + idName).fadeOut("fast");
};

//载入中的GIF动画
var loadingUrl = "../images/ajax-loader.gif";

//选择文件后的事件,iframe里面调用的
var uploading = function (imgsrc) {
    var el = $("#uploading");
    $("#ifUpload").fadeOut("fast");
    el.fadeIn("fast");
    el.html("<img src='" + loadingUrl + "' align='absmiddle' /> 上传中...");
    return el;
};

//重新上传方法    
var uploadinit = function () {
    $("#uploading").fadeOut("fast", function () {
        $("#ifUpload").fadeIn("fast");
    });
};

//上传时程序发生错误时，给提示，并返回上传状态
var uploaderror = function () {
    alert("程序异常，上传未成功。");
    uploadinit();
};

//上传成功后的处理
var uploadsuccess = function (newpath) {
    $("#txtContent").append("<img src=\"" + newpath + "\" onload=\"if(this.width>300){this.width=300;}\" />");
    var el = $("#uploading");
    el.html("上传成功,<a href=\"javascript:void(0);\" onclick=\"uploadinit();\">[重新上传]</a>.");
};

//创建一个上传控件
var uploadcreate = function (el) {
    var strContent = "<div class='uploadcontrol'><iframe src=\"/t/upload.aspx\" id=\"ifUpload\" frameborder=\"no\" scrolling=\"no\" style=\"width:400px; height:28px;\"></iframe>";
    strContent += "<div class=\"uploading\" id=\"uploading\" style=\"display:none;\" ></div>";
    strContent += "<div class=\"image\" id=\"panelViewPic\" style=\"display:none;\"></div></div>";
    el.append(strContent);
};
function addcontent(content) {
    document.getElementById("txt_Content").innerHTML += content;
}

function addico(content) {
    document.getElementById("txt_Content").innerHTML += content;
    var div = document.getElementById("close1");
    div.click();
}

function Postto() {
    var jqueryObj = $("#txt_Content");
    document.getElementById("txtimages").value = document.getElementById("txtContent").innerHTML;
    //获取节点的值
    var cont = jqueryObj.val();
    if (cont != "") {
        $.get("DataCommon.aspx?menu=login", null, callback);
    }
    else {
        alert("请输入内容！");
    }
}
$(document).ready(function () {
    //示例1，默认弹出层
    new PopupLayer({ trigger: "#ele1", popupBlk: "#blk1", closeBtn: "#close1",
        offsets: {
            x: 0,
            y: 10
        }
    });
    new PopupLayer({ trigger: "#ele2", popupBlk: "#blk2", closeBtn: "#close2",
        offsets: {
            x: 0,
            y: 10
        }
    });
    new PopupLayer({ trigger: "#ele3", popupBlk: "#blk3", closeBtn: "#close3",
        offsets: {
            x: 0,
            y: 10
        }
    });
    new PopupLayer({ trigger: "#ele4", popupBlk: "#blk4", closeBtn: "#close4",
        offsets: {
            x: 0,
            y: 10
        }
    });
});
function addvideo() {
    document.getElementById("txtvidio").value = document.getElementById("video_txt").value;
    var div = document.getElementById("close3");
    div.click();
}

function addmusic() {
    document.getElementById("txtmusic").value = document.getElementById("musictxt").value;
    var div = document.getElementById("close4");
    div.click();
}


function thisDisplayNone() {
    var thisDiv = document.getElementById("SayFriendAll");
    if (thisDiv.style.display == "none") {
        thisDiv.style.display = "block";
    }
    else {
        thisDiv.style.display = "none";
    }
}
function thisDisplayNoneFrist(a, b) {
    var thisDiv = document.getElementById(a);
    if (thisDiv.style.display == "none") {
        document.getElementById(b).style.width = "210px";
        thisDiv.style.display = "block";
    }
    else {
        thisDiv.style.display = "none";
        document.getElementById(b).style.width = "auto";
    }

}



function thisYeMian(a) {
    var MyFriend = document.getElementById("MyFriendDiv");
    var MyGrup = document.getElementById("MyGrupDiv");
    var MyPeople = document.getElementById("MyPeopleDiv");

    MyFriend.style.display = "none";
    MyGrup.style.display = "none";
    MyPeople.style.display = "none";

    if (a == 1) {
        document.getElementById("MyFriendDiv").style.display = "block";
    } else if (a == 2) {
        document.getElementById("MyGrupDiv").style.display = "block";
    } else if (a == 3) {
        document.getElementById("MyPeopleDiv").style.display = "block";
    }
}

function fontStyle(a, b, c) {
    var thisMessage = document.getElementById("<%=txt_Content.ClientID %>");
    thisMessage.focus();
    document.execCommand(a, b, c);


}

function colorTablesFunction(a, b) {
    var tables = document.getElementById(b);
    var buttons = a;
    var X = 0;
    var Y = 0;
    while (a.offsetParent) {
        X = parseInt(a.offsetLeft) + X;
        Y = parseInt(a.offsetTop) + Y;
        a = a.offsetParent;
    }

    tables.style.left = (X + 50) + "px";
    tables.style.top = Y + "px";

}



function thisColorthis(a) {
    var colors = a.style.backgroundColor;
    var thisMessage = document.getElementById("<%=txt_Content.ClientID %>");
    thisMessage.focus();
    document.execCommand('forecolor', false, a.style.backgroundColor);
    document.getElementById("COLORTABLE").style.display = "none";
}

function thisColorTable(b, a, c) {
    if (c == 1)
        document.getElementById("updateOnloads").style.display = "none";
    else if (c == 2)
        document.getElementById("fontStyles").style.display = "none";
    var tables = document.getElementById(a);
    if (tables.style.display == "none")
        tables.style.display = "block";
    else
        tables.style.display = "none";
    colorTablesFunction(b, a);
    //tables.offsetLeft = (tables.offsetLeft - 20) + "px";
}

function onclikePostDiv(a) {

    var menu = document.getElementById("groupMenu");
    if (menu.style.display == "none") {
        menu.style.display = "block";
    } else {
        menu.style.display = "none";
        return false;
    }
    var heightY = parseInt(a.style.height);
    var widthX = parseInt(a.style.width);
    var BigDiv = a;
    var X = 0;
    var Y = 0;

    while (BigDiv.offsetParent) {
        X = X + (BigDiv.offsetLeft);
        Y = Y + (BigDiv.offsetTop);

        BigDiv = BigDiv.offsetParent;
    }

    menu.style.top = (Y - heightY) + "px";
    menu.style.left = X + "px";
}













