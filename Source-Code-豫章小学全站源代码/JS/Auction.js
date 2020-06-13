//竞拍商城
var ajax = new AJAXRequest;

function setCurrency(s) {
    if (/[^0-9\.\-]/.test(s)) return "invalid value";
    s = s.replace(/^(\d*)$/, "$1.");
    s = (s + "0000").replace(/(\d*\.\d\d)\d*/, "$1"); //取小数点后四位
    s = s.replace(".", ",");
    var re = /(\d)(\d{3},)/;
    while (re.test(s))
        s = s.replace(re, "$1,$2");
    s = s.replace(/,(\d\d)$/, ".$1"); //取小数点后四位

    return s.replace(/^\./, "0.")
}
//获取当前时间与结束时间的间隔
window.onload = function () { GetTime();  }
 function GetTime() {
     var elm = document.getElementsByName("Hiddenfilename");
     var belm = document.getElementsByName("buttons");
    for (var s = 0; s < elm.length; s++) {
        if (elm[s].value != "") {
            ajax.get(
        elm[s].value.toString(),
        function (obj) {
            var xmlcontent = obj.responseText;
            //alert(xmlcontent);
            var ID = xmlcontent.split('<ID>')[1].split('</ID>')[0];
            var EndTime = xmlcontent.split('<EndTime>')[1].split('</EndTime>')[0];
            var InitPrice = setCurrency(xmlcontent.split('<InitPrice>')[1].split('</InitPrice>')[0]);
            var username = "-";
            if (xmlcontent.indexOf('<UserName>') > -1) {
                username = xmlcontent.split('<UserName>')[1].split('</UserName>')[0];
            }

            ajax.get(
            "/Action/GetTime.aspx?menu=getTime",
            function (obj) {
                var nowtime = obj.responseText;
                var times = ID + "|" + EndTime + "|" + username + "|" + InitPrice + "|||" + nowtime;
                if (times != null) {
                    var all = times.split("|||");
                    var idtime = all[0].split(",");  //id与相应结束时间
                    if (idtime != null && idtime.length > 0) {
                        for (j = 0; j < idtime.length; j++) {
                            var val = idtime[j].split('|');
                            if (val != null && val.length > 1) {
                                today = new Date(all[1].replace('-', '/'));   //当前时间
                                var initprice = val[3];  //竞拍价格
                                var lastusername = val[2];  //最后一个竞拍的用户
                                var id = val[0];   //竞拍ID
                                var endtime = new Date(val[1].replace('-', '/')).getTime();  //结束时间
                                timeold = endtime - today.getTime();
                                sectimeold = timeold / 1000;
                                secondsold = Math.floor(sectimeold);
                                msPerDay = 24 * 60 * 60 * 1000;
                                e_daysold = timeold / msPerDay;
                                daysold = Math.floor(e_daysold);   //结束时间的天数
                                e_hrsold = (e_daysold - daysold) * 24;
                                hrsold = Math.floor(e_hrsold);    //小时数
                                e_minsold = (e_hrsold - hrsold) * 60;
                                minsold = Math.floor((e_hrsold - hrsold) * 60);  //分数
                                seconds = Math.round((e_minsold - minsold) * 60);  //秒数
                                if (daysold < 0 || (hrsold <= 0 && minsold <= 0 && seconds <= 0)) {      //竞拍结束
                                    ajax.get(
                                                        "/Action/DataComm.aspx?menu=submit",
                                                        function (obj) {
                                                            var s = obj.responseText;
                                                            //                                                            var users = s.split('|');
                                                            //                                                            if (users[1] == "Sec") {   //当前用户竞拍成功
                                                            //                                                                // alert("恭喜您竞拍成功");
                                                            //                                                            } else {
                                                            //                                                                // alert("恭喜" + users[0]+"拍得此商品");
                                                            //                                                            }
                                                        }
                                                        );
                                    document.getElementById("TimeCounter_" + id).innerHTML = "<font color='gray'>--:--:--</font>";
                                    document.getElementById(id).value = "成 交";
                                    document.getElementById(id).disabled = "disabled";
                                    document.getElementById("bid_btn_" + id).className = "button button-disabled";
                                }
                                else {
                                    if (hrsold < 10) { hrsold = "0" + hrsold }
                                    if (minsold < 10) { minsold = "0" + minsold }
                                    if (seconds < 10) { seconds = "0" + seconds }
                                    if (daysold > 0) {
                                        hrsold = parseFloat(hrsold) + parseFloat(daysold * 24);
                                    }

                                    if (document.getElementById("TimeCounter_" + id) != null) {
                                        if (hrsold <= 0 && minsold <= 0 && seconds <= 30) {
                                            document.getElementById("TimeCounter_" + id).innerHTML = "<font color='red'>" + hrsold + ":" + minsold + ":" + seconds + "</font>";
                                        } else {
                                            document.getElementById("TimeCounter_" + id).innerHTML = "<font color='green'>" + hrsold + ":" + minsold + ":" + seconds + "</font>";
                                        }
                                    }
                                }

                                //显示最后一个竞拍的用户
                                document.getElementById("bidder_" + id).innerHTML = lastusername;
                                var price = document.getElementById("price_" + id).innerHTML;
                                var priceSp = price.split('¥');
                                if (priceSp != null && priceSp.length > 1 && parseFloat(priceSp[1]) != parseFloat(initprice)) {  //判断当前显示价格是否等于商品的竞拍价格

                                    //////////////提示已有人出价,价格加特效
                                    document.getElementById("price_" + id).innerHTML = "&yen;" + initprice;
                                    //                                $("#CC" + id).show(100);
                                    //                                $("#CC" + id).hide(1400);
                                    ////////////////////////////////

                                } else {   //直接显示竞拍价格
                                    document.getElementById("price_" + id).innerHTML = "&yen;" + initprice;
                                }
                            }
                        }
                    }
                }

            });
        }
        )
        }
    else {
        belm[s].innerHTML = '结 束';
        belm[s].disabled = "disabled";
        }
    }
}

//setInterval("GetTime()", 1000);


///设置竞拍秘书
function setSec(ids) {
    var txtprice = document.getElementById("txtprice").value;
    var txttimes = document.getElementById("txttimes").value;
    if (txtprice == "" || txttimes == "") {
        alert("值不能为空！");
    } else if (isNaN(txtprice) || isNaN(txttimes)) {
        alert("请输入正确的格式!");
    } else if (parseFloat(txtprice) <= 0 || parseInt(txttimes) <= 0) {
        alert("数字范围不对!");
    }
    else {
        ajax.get(
            "/Action/DataComm.aspx?menu=set&id=" + ids + "&price=" + txtprice + "&times=" + txttimes,
            function (obj) {
                if (parseInt(obj.responseText) > 0) {
                    alert("设置成功!");
                    location.href = location.href;
                } else if (parseInt(obj.responseText) == -1) {
                    alert("宝点不足!");
                } else if (parseInt(obj.responseText) == -2) {
                    alert("您的帐号未激活或已被锁定,请与管理员联系!");
                } else if (parseInt(obj.responseText) == -3) {
                    alert("您不符合竞拍该商品的条件!");
                } else if (parseInt(obj.responseText) == -4) {
                    alert("最高价格必须高于当前竞拍价9元!");
                } else if (parseInt(obj.responseText) == -5) {
                    alert("请先登录!");
                } else if (parseInt(obj.responseText) == -6) {
                    alert("此为新人竞拍商品!");
                } else {
                    alert("设置失败!");
                }
            }
            );
    }
}




function Mod(rslt) {
    if (rslt >= 0) {
        rslt = Math.floor(rslt); //返回小于等于原rslt的最大整数。
    } else {
        rslt = Math.ceil(rslt); //返回大于等于原rslt的最小整数。
    }
}
function mouseover(obj) {
    if (document.getElementById(obj).innerHTML != "成 交") {
        ajax.get(
         "/Action/DataComm.aspx?menu=login",
        function (objs) {
            if (objs.responseText == "1") {
                document.getElementById(obj).innerHTML = "出 价";
            } else {
                var buttons = document.getElementsByName("buttons");
                for (i = 0; i < buttons.length; i++) {
                    if (buttons[i].value != "成 交") {
                        buttons[i].value = "出 价";
                    }
                }
                document.getElementById(obj).innerHTML = "登 录";
            }
        }
        );
    }
}

function GetComSec(comid) {
    ajax.get(
         "/Action/DataComm.aspx?menu=getComSec&cid=" + comid,
        function (objs) {
            document.getElementById("comsec").innerHTML = objs.responseText;
        }
        );
}

function mouseout(obj) {
    if (document.getElementById(obj).innerHTML != "成 交") {
        document.getElementById(obj).innerHTML = "出 价";
    }
}


///保价购买（按钮提交）
function pual(id) {
    ajax.get(
    "/Action/DataComm.aspx?menu=paul&id=" + id,
    function (obj) {
        var tip = obj.responseText;
        if (parseInt(tip) > 0) {
            alert("保价成功");
        }
        if (parseInt(tip) == -1) {
            alert("请先登录!");
        }
    }
    );
}

//出价:objs为竞拍ID ,type 为交易类型(0为交易区,1为免费区) op:出价方式:0为手动,1为自动
//返回状态：0为未登录,1为宝点不足,2为出价失败,3为用户帐户未通过验证或被锁定！,4商品已成交，出价结束,5出价太快,6新人竞拍商品,7为已出价,不需要重复
//          8为出价成功   9,您未达到该商品竞拍等级
function sub(objs, type, op) {
    ajax.get(
         "/Action/DataComm.aspx?menu=sub&id=" + objs + "&type=" + type + "&op=" + op,
        function (obj) {
            if (obj.responseText != "" && parseInt(obj.responseText) == 8) {
                //document.getElementById("tips_" + objs).innerHTML = "您出价成功!";
                //alert("您出价成功");
            }
            if (parseInt(obj.responseText) == 0) {
                window.location.href = "/user/login.aspx?returnUrl=" + location.href;
            }
            if (parseInt(obj.responseText) == 1) {
                //document.getElementById("tips_" + objs).innerHTML = "您的宝点不足,请充值";
                if (type == 0) {
                    alert("您的宝点不足,请充值！");
                } else {
                    alert("您的玩点不足,请充值！");
                }
            }
            if (parseInt(obj.responseText) == 2) {
                //document.getElementById("tips_" + objs).innerHTML = "您出价失败,请重试";
                alert("您出价失败,请重试！");
            }
            if (parseInt(obj.responseText) == 3) {
                //document.getElementById("tips_" + objs).innerHTML = "您的帐户未通过验证或被锁定,请与客服联系";
                alert("您的帐户未通过验证或被锁定,请与客服联系！");
            }
            if (parseInt(obj.responseText) == 4) {
                //document.getElementById("tips_" + objs).innerHTML = "商品已成交，出价结束";
                alert("商品已成交，出价结束！");
            }
            if (parseInt(obj.responseText) == 5) {
                //document.getElementById("tips_" + objs).innerHTML = "您出价太快，请放松！";
                alert("您出价太快，请放松！");
            }
            if (parseInt(obj.responseText) == 6) {
                //document.getElementById("tips_" + objs).innerHTML = "出价失败，您已获得过商品，此为新人竞拍商品！";
                alert("出价失败，您已获得过商品，此为新人竞拍商品！");
            }
            if (parseInt(obj.responseText) == 7) {
                //document.getElementById("tips_" + objs).innerHTML = "您已出价，无需重复！";
                alert("您已出价，无需重复！");
            }
            if (parseInt(obj.responseText) == 9) {
                //document.getElementById("tips_" + objs).innerHTML = "您未达到该商品竞拍等级！";
                alert("您未达到该商品竞拍等级！");
            }
            if (parseInt(obj.responseText) == 10) {
                //document.getElementById("tips_" + objs).innerHTML = "您未达到该商品竞拍等级！";
                alert("您已达到商品封顶的数量！");
            }
        }
        );
    }

    ///设置秘书状态:type:1为停用,0为启用
    function setSecState(ids, type) {
        ajax.get(
        "/Action/DataComm.aspx?menu=setSecState&id=" + ids + "&type=" + type,
        function (obj) {
            if (parseInt(obj.responseText) == 0) {  //修改成功
                alert("设置成功");
            } else {
                alert("设置失败");
            }
        }
        );
    }


