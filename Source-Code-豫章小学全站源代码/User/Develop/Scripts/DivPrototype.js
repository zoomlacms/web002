// JavaScript Document
var modelArray = new Array(); //所有模型数组
//创建模型DIV
function CreateModel(mid, mtop, mleft, mwidth, mheight) {
    var a = parent.frames["ifr"].window.GetTop();
    var pobj = $(window.frames["ifr"].document).find("#main");
    pobj.append("<div id='" + mid + "'></div>");
    this.Current = pobj.find("#" + mid);
    mtop = mtop + a - 60;
    mleft = mleft - this.Current.offset().left - 160;
    //$("#main").append("<div id='" + mid + "'></div>");
    //this.Current = $("#" + mid);
    //mtop = mtop - this.Current.offset().top;
    //mleft = mleft - this.Current.offset().left;
    this.Current.addClass("divbg8");
    this.Current.css({ "position": "absolute", "top": mtop, "left": mleft, "width": mwidth, "height": mheight }); //
    this.Current.append("<div id='mask" + mid + "' class='mask'></div>");
    this.Mask = this.Current.find("#mask" + mid);
    this.Mask.addClass("addBorder");
    //this.Mask.append(borderhtml);  //添加选中状态
    //this.Current.append("<div class='pophead'><span class='lefthead'><img src='Images/lefthead.gif'></span><span class='righthead'>编辑</span></div>")
    //this.Current.append("<div class='poptitle'></div><div class='popcontent'></div>");
    this.Head = this.Current.children(".pophead:first");
    /** 头部拖拽事件从这里开始**/
    var padtop = 0;
    var padleft = 0;
    var moveMask = this.Mask;
    var moveObj = this.Current;
    this.Head.mousedown(function (event) {
        AddBorder(moveMask[0]);
        moveObj.css({ "z-index": 999, "opacity": 0.5 }); //让其处于最上方
        var ptop = moveObj.position().top;
        var pleft = moveObj.position().left;
        padleft = event.pageX - pleft + 160;
        padtop = event.pageY - ptop + 65;
        var msg = "位置：(上：" + ptop + ",左：" + pleft + ")";
        ClearBoxMsg();
        CreateBoxMsg(msg, event.pageY, event.pageX);
        $(document).bind("mousemove", function (event) {
            var pmleft = event.pageX - padleft;
            var pmtop = event.pageY - padtop;
            moveObj.css({ "top": pmtop, "left": pmleft });
            msg = "位置：(上：" + pmtop + ",左：" + pmleft + ")";
            MoveBoxMsg(msg, event.pageY, event.pageX);
        });
    })
    this.Head.mouseup(function () {
        $(document).unbind("mousemove");
        padtop = 0;
        padleft = 0;
        ClearBoxMsg();
        moveObj.css({ "z-index": "auto", "opacity": 1.0 }); //还原
    });
    /**模型单击事件**/
    this.Current.click(function () { AddBorder(moveMask[0]); });
    this.Current.keyup(function (event) {
        if (event.which == 46 && confirm("您确定要删除吗？")) {
            modelArray.pop($(this).attr("id"));
            $(this).remove();
        } else {
            switch (event.which) {
                case 37:
                    $(this).css("left", $(this).position().left - 1);
                    break;
                case 38:
                    $(this).css("top", $(this).position().top - 1);
                    break;
                case 39:
                    $(this).css("left", $(this).position().left + 1);
                    break;
                case 40:
                    $(this).css("top", $(this).position().top + 1);
                    break;
            }
            // $.keypress()
        }
    });
    //sub("add");
    AddDiv();
    //PageOnLoad();
    //parent.frames["ifr"].window.PageOnLoad();
    //window.frames["ifr"].location.reload();
//    addpage();
}
function AddDiv() {
    var po = $(window.frames["ifr"].document);
    var pobj = po.find("#main > .divbg8");
    var len = pobj.length;
    var strStyle = "";
    for (var i = 1; i <= len; i++) {
        var top = parseInt(po.find("#main > .divbg8:nth-child(" + i + ")").css("top"));
        var left = parseInt(po.find("#main > .divbg8:nth-child(" + i + ")").css("left"));
        var width = parseInt(po.find("#main > .divbg8:nth-child(" + i + ")").css("width"));
        var height = parseInt(po.find("#main > .divbg8:nth-child(" + i + ")").css("height"));
        strStyle += po.find("#main > .divbg8:nth-child(" + i + ")").attr("id") + "^" + top + "," + left + "," + width + "," + height + "|";
    }
    strStyle = strStyle.substr(0, strStyle.length - 1);
    $.get("/User/Develop/ashx/UserTage.ashx?mt=" + new Date().getTime() + "&v2=Addpage&style=" + strStyle + "&NodeID=" + frames["ifr"].document.getElementById("txtNodeID").innerHTML, function (data) {
        alert(data);
        parent.frames["ifr"].window.PageOnLoad();
    });
}
/**添加选中状态事件**/
function AddBorder(obj) {
    for (var i = 0; i < modelArray.length; i++) {
        var mid = "#mask" + modelArray[i];
        $(".mask").hide();
    }
    $(obj).show();
}
/****************从这里开始绑定改变div大小事件***********************/
$(function () {
    var beforeX = 0;   //上一次鼠标的坐标
    var beforeY = 0;   //上一次鼠标的坐标
    var resizeobj = null;
    var isresize = false;  //是否正在改变大小
    var rwidth = 0;   //修改后的宽度
    var rheight = 0;  //修改后的高度
    /***左上角单击改变大小***/
    $(".rleftUp").live("click", function (event) {
        if (isresize) {
            var rparent = resizeobj.parent("div:first");
            rparent.width(resizeobj.width());
            rparent.height(resizeobj.height());
            var rptop = rparent.position().top + resizeobj.position().top;
            var rpleft = rparent.position().left + resizeobj.position().left;
            rparent.css({ "left": rpleft, "top": rptop });
            resizeobj.css({ "left": "0px", "top": "0px" })
            ClearBoxMsg();
            $("body").unbind("mousemove");
            isresize = false;
        } else {
            beforeX = event.pageX;
            beforeY = event.pageY;
            resizeobj = $(this).parent("div:first");
            var msg = "大小：(宽：" + resizeobj.width() + ",高：" + resizeobj.height() + ")";
            ClearBoxMsg();
            CreateBoxMsg(msg, event.pageY, event.pageX);
            $("body").bind("mousemove", function (event) {
                var rleft = resizeobj.css("left");
                var rtop = resizeobj.css("top");
                rleft = rleft.substring(0, rleft.length - 2);
                rtop = rtop.substring(0, rtop.length - 2);
                rleft = parseInt(rleft) + event.pageX - beforeX;
                rtop = parseInt(rtop) + event.pageY - beforeY;
                resizeobj.css({ "left": rleft, "top": rtop });
                beforeX = event.pageX;
                beforeY = event.pageY;
                var msg = "大小：(宽：" + resizeobj.width() + ",高：" + resizeobj.height() + ")";
                MoveBoxMsg(msg, event.pageY, event.pageX);
            });
            isresize = true;
        }
    });
    /***左下角单击改变大小***/
    $(".rleftDown").live("click", function (event) {
        if (isresize) {
            var rparent = resizeobj.parent("div:first");
            rparent.width(resizeobj.width());
            rparent.height(resizeobj.height());
            rparent.css("left", rparent.position().left + resizeobj.position().left);
            resizeobj.css({ "left": "0px", "bottom": "0px" })
            ClearBoxMsg();
            $("body").unbind("mousemove");
            isresize = false;
        } else {
            beforeX = event.pageX;
            beforeY = event.pageY;
            resizeobj = $(this).parent("div:first");
            var msg = "大小：(宽：" + resizeobj.width() + ",高：" + resizeobj.height() + ")";
            ClearBoxMsg();
            CreateBoxMsg(msg, event.pageY, event.pageX);
            $("body").bind("mousemove", function (event) {
                var rleft = resizeobj.css("left");
                var rbottom = resizeobj.css("bottom");
                rleft = rleft.substring(0, rleft.length - 2);
                rbottom = rbottom.substring(0, rbottom.length - 2);
                rleft = parseInt(rleft) + event.pageX - beforeX;
                rbottom = parseInt(rbottom) - event.pageY + beforeY;
                resizeobj.css({ "left": rleft, "bottom": rbottom });
                beforeX = event.pageX;
                beforeY = event.pageY;
                var msg = "大小：(宽：" + resizeobj.width() + ",高：" + resizeobj.height() + ")";
                MoveBoxMsg(msg, event.pageY, event.pageX);
            });
            isresize = true;
        }
    });
    /***右上角单击改变大小***/
    $(".rrightUp").live("click", function (event) {
        if (isresize) {
            var rparent = resizeobj.parent("div:first");
            rparent.width(resizeobj.width());
            rparent.height(resizeobj.height());
            rparent.css("top", rparent.position().top + resizeobj.position().top)
            resizeobj.css({ "right": "0px", "top": "0px" })
            ClearBoxMsg();
            $("body").unbind("mousemove");
            isresize = false;
        } else {
            beforeX = event.pageX;
            beforeY = event.pageY;
            resizeobj = $(this).parent("div:first");
            rwidth = resizeobj.width();
            rheight = resizeobj.height();
            var msg = "大小：(宽：" + rwidth + ",高：" + rheight + ")";
            ClearBoxMsg();
            CreateBoxMsg(msg, event.pageY, event.pageX);
            $("body").bind("mousemove", function (event) {
                var rright = resizeobj.css("right");
                var rtop = resizeobj.css("top");
                rright = rright.substring(0, rright.length - 2);
                rtop = rtop.substring(0, rtop.length - 2);
                rright = parseInt(rright) - event.pageX + beforeX;
                rtop = parseInt(rtop) + event.pageY - beforeY;
                resizeobj.css({ "right": rright, "top": rtop });
                beforeX = event.pageX;
                beforeY = event.pageY;
                rwidth = resizeobj.width();
                rheight = resizeobj.height();
                var msg = "大小：(宽：" + rwidth + ",高：" + rheight + ")";
                MoveBoxMsg(msg, event.pageY, event.pageX);
            });
            isresize = true;
        }
    });
    /***右下角单击改变大小***/
    $(".rrightDown").live("click", function (event) {
        if (isresize) {
            var rparent = resizeobj.parent("div:first");
            rparent.width(resizeobj.width());
            rparent.height(resizeobj.height());
            resizeobj.css({ "right": "0px", "bottom": "0px" })
            ClearBoxMsg();
            $("body").unbind("mousemove");
            isresize = false;
        } else {
            beforeX = event.pageX;
            beforeY = event.pageY;
            resizeobj = $(this).parent("div:first");
            var msg = "大小：(宽：" + resizeobj.width() + ",高：" + resizeobj.height() + ")";
            ClearBoxMsg();
            CreateBoxMsg(msg, event.pageY, event.pageX);
            $("body").bind("mousemove", function (event) {
                var rright = resizeobj.css("right");
                var rbottom = resizeobj.css("bottom");
                rright = rright.substring(0, rright.length - 2);
                rbottom = rbottom.substring(0, rbottom.length - 2);
                rright = parseInt(rright) - event.pageX + beforeX;
                rbottom = parseInt(rbottom) - event.pageY + beforeY;
                resizeobj.css({ "right": rright, "bottom": rbottom });
                beforeX = event.pageX;
                beforeY = event.pageY;
                var msg = "大小：(宽：" + resizeobj.width() + ",高：" + resizeobj.height() + ")";
                MoveBoxMsg(msg, event.pageY, event.pageX);
            });
            isresize = true;
        }
    });
})
/*****************从这里开始绑定编辑事件*********************/
$(function () {
    var editmenu = "<div class='popmenu'><ul><li>编辑</li><li>删除</li><li>取消</li></ul></div>";
    var operationid = "";  //编辑的DIV
    $(".righthead").live("click", function (event) {
        operationid = $(this).parent().parent().attr("id");
        $(".popmenu").remove();  //删除上一个编辑
        $("body").append(editmenu);
        $(".popmenu").css({ "top": event.pageY + 10, "left": event.pageX });
        // $(".popmenu ul").mouseout(function(){ setTimeout($(this).hide(),3000);});
        var menus = $(".popmenu ul li");
        menus.eq(0).bind("click", function () {   //编辑
            CreateboxCover(); //创建浮动层
            $("#boxCover").css({ "cursor": "auto" });
            var params = {};
            params.titile = $("#" + operationid).find(".poptitle").html();
            params.content = $("#" + operationid).find(".popcontent").html();
            $.get("pop.aspx?_dc=" + new Date().getTime(), params, function (data) {
                $("#boxCover").html(data);
                $(".popmenu").remove();
                var ftleft = ($(document).width() - $("#boxCover .floatbox").width()) / 2;
                $("#boxCover .floatbox").css({ "position": "absolute", "top": event.pageY, "left": ftleft });
                $("#boxCover .ftclose").click(function () { $("#boxCover").remove(); });
                $("#boxCover #btncancel").click(function () { $("#boxCover").remove(); });
                /**------头部拖动事件-----------**/
                var pt = 0;
                var pl = 0;
                var ftobj;
                $("#boxCover .ftitle").mousedown(function (event) {
                    ftobj = $("#boxCover .floatbox"); //移动对象
                    ftobj.css({ "z-index": 1000 });
                    pt = event.pageY - ftobj.position().top;
                    pl = event.pageX - ftobj.position().left;
                    $("#boxCover").bind("mousemove", function (event) {
                        ftobj = $("#boxCover .floatbox");
                        var nt = event.pageY - pt;
                        var nl = event.pageX - pl;
                        ftobj.css({ "top": nt, "left": nl });
                    });
                });
                $("#boxCover").mouseup(function () {
                    $(this).unbind("mousemove");
                });
                //var editor = CKEDITOR.replace('txt_content', { skin: 'v2' });
                //editor.setData(params.content);
                //点击确定事件 --operationid
                $("#boxCover #btnok").click(function () {
                    alert("添加成功！");
                    var strStyle = parseInt($("#" + operationid).css("top")) + "," + parseInt($("#" + operationid).css("left")) + "," + parseInt($("#" + operationid).css("width")) + "," + parseInt($("#" + operationid).css("height"));
                    var content = escape(ContStr);
                    ContStr = "";
                    var overflowStr = document.getElementById("OverflowVal").innerHTML;
                    var displayStr = document.getElementById("DisplayVal").innerHTML;
                    //$("#" + operationid).css({ "overflow": "visible" });
                    tjAjax(window.location.href + "&status=SaveContent&LabelID=" + operationid + "&style=" + strStyle + "&content=" + content + "&Overflow=" + overflowStr + "&Display=" + displayStr);
                    //alert(window.location.href + "&status=SaveContent&LabelID=" + operationid + "&style=" + strStyle + "&content=" + content + "&Overflow=" + overflowStr);
                    $("#" + operationid).find(".popcontent").html($("#HideContent").html()); //editor.getData()
                    $("#boxCover").remove();
                });
            });
        });
        menus.eq(1).bind("click", function () {
            if (confirm("您确定要删除吗？")) {
                modelArray.pop(operationid);
                $("#" + operationid).remove();
                //alert("删除成功！");
                //alert(window.location.href + "&status=DelLabel&LabelID=" + operationid);
                tjAjax(window.location.href + "&status=DelLabel&LabelID=" + operationid + "&_dc=" + new Date().getTime());
            }
            $(".popmenu").remove();
        });
        menus.eq(2).bind("click", function () { $(".popmenu").remove(); });
    })
});
function CreateModelCli(mid, mtop, mleft, mwidth, mheight) {
    $("#main").append("<div id='" + mid + "' onmouseout='hideDiv(\"" + mid + "\")'></div>");
    this.Current = $("#" + mid);
    mtop = mtop - this.Current.offset().top;
    mleft = mleft - this.Current.offset().left;
    this.Current.addClass("divbg8");
    this.Current.css({ "position": "absolute", "top": mtop, "left": mleft, "width": mwidth, "height": mheight });
    this.Current.append("<div id='mask" + mid + "' class='mask'onmouseover='showDiv(\"" + mid + "\")' onclick='GetDiv(\""+mid+"\")'></div> ");
    this.Mask = this.Current.find("#mask" + mid);
    this.Mask.addClass("addBorder");
    this.Mask.append(borderhtml);  //添加选中状态
    this.Current.append("<div class=\"pophead\" style='display:none' onclick='GetDiv(\"" + mid + "\")' onmouseover='showDiv(\"" + mid + "\")'><span class=\"lefthead\"><img src='/User/Develop/Images/lefthead.gif'></span><span class=\"righthead\">编辑</span></div>")
    this.Current.append("<div class='poptitle' onclick='GetDiv(\"" + mid + "\")' onmouseover='showDiv(\"" + mid + "\")'></div><div class='popcontent' id='" + mid + "popcontent' onmouseover='showDiv(\"" + mid + "\")'></div>");
    this.Head = this.Current.children(".pophead:first");
    /** 头部拖拽事件从这里开始**/
    var padtop = 0;
    var padleft = 0;
    var moveMask = this.Mask;
    var moveObj = this.Current;
    this.Head.mousedown(function (event) {
        AddBorder(moveMask[0]);
        moveObj.css({ "z-index": 999, "opacity": 0.5 }); //让其处于最上方
        var ptop = moveObj.position().top;
        var pleft = moveObj.position().left;
        padleft = event.pageX - pleft;
        padtop = event.pageY - ptop;
        var msg = "位置：(上：" + ptop + ",左：" + pleft + ")";
        ClearBoxMsg();
        CreateBoxMsg(msg, event.pageY, event.pageX);
        $(document).bind("mousemove", function (event) {
            var pmleft = event.pageX - padleft;
            var pmtop = event.pageY - padtop;
            moveObj.css({ "top": pmtop, "left": pmleft });
            msg = "位置：(上：" + pmtop + ",左：" + pmleft + ")";
            MoveBoxMsg(msg, event.pageY, event.pageX);
        });
    })
    this.Head.mouseup(function () {
        $(document).unbind("mousemove");
        padtop = 0;
        padleft = 0;
        ClearBoxMsg();
        moveObj.css({ "z-index": "auto", "opacity": 1.0 }); //还原
    });
    /**模型单击事件**/
    this.Current.click(function () { AddBorder(moveMask[0]); });
    this.Current.keyup(function (event) {
        if (event.which == 46 && confirm("您确定要删除吗？")) {
            modelArray.pop($(this).attr("id"));
            $(this).remove();
        } else {
            switch (event.which) {
                case 37:
                    $(this).css("left", $(this).position().left - 1);
                    break;
                case 38:
                    $(this).css("top", $(this).position().top - 1);
                    break;
                case 39:
                    $(this).css("left", $(this).position().left + 1);
                    break;
                case 40:
                    $(this).css("top", $(this).position().top + 1);
                    break;
            }
            // $.keypress()
        }
    });
    //this.Current.blur(function () { $(".mask").hide(); });
    //$(".mask").hide();
}
function showDiv(PObj) {
    $("#" + PObj + " .pophead").css("display", "");
    $("#" + PObj + " .pophead").css("z-index", "99");
};
function hideDiv(PObj) {
    $("#" + PObj + " .pophead").css("display", "none");
}
function GetTop() {
    return document.documentElement.scrollTop;
}
function GetDiv(Pobj) {
    parent.document.getElementById("htag").value = "";
    $(".bodybg").not($("#" + Pobj)).removeClass("bodybg").addClass("divbg8");
    $("#" + Pobj).toggleClass("bodybg").toggleClass("divbg8");
    if ($("#" + Pobj).attr("class").replace(/(^\s*)|(\s*$)/g, "")== "bodybg") {
        parent.document.getElementById("htag").value = Pobj; //层的名字
    } else {
        parent.document.getElementById("htag").value =""; //层的名字
    }


}