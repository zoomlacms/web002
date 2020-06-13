<%@ page language="C#" autoeventwireup="true" inherits="t_post, App_Web_vevnwosu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>发表微博</title>
 <link href="../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
<script src="/JS/ajaxrequest.js"></script>
<script>
    var ajax = new AJAXRequest();
    function showinput() {
        var obj = document.getElementById("txt_Content");
        var value = obj.value.replace(/(^\s*)|(\s*$)/g, "");

        if (obj.value == "") {
            document.getElementById("lastNummber").innerHTML = 140;
        }
        else if (obj.value.length <= 140) {
            document.getElementById("lastNummber").innerHTML = 140 - obj.value.length;
            document.getElementById("subimg").disabled = "";
            document.getElementById("tip").innerHTML = "还可以输入";
            document.getElementById("subimg").src = "../App_Themes/Microblog/images/submit1.gif";
        }
        else {
            document.getElementById("lastNummber").innerHTML = obj.value.length - 140;
            document.getElementById("tip").innerHTML = "超出";
            document.getElementById("subimg").disabled = "disabled";
            document.getElementById("subimg").src = "../App_Themes/Microblog/images/submit2.gif";
        }
    }
    window.onload = function () {
        document.getElementById("txt_Content").value = "江西人自己的微博……";
        showinput();
    }
    function clicktxt() {
        if (document.getElementById("txt_Content").value == "江西人自己的微博……") {
            document.getElementById("txt_Content").value = "";
        }
    }

    function Postto() {
        var cont = document.getElementById("txt_Content").value;
        if (cont != "") {
            ajax.get("DataCommon.aspx?menu=login",
               function (obj) {
                   var login = obj.responseText;
                   if (login == "1") {
                       alert("请先登录！");
                   } else {
                       document.getElementById("Button1").click();
                   }
               }
            );

        } else {
            alert("请输入内容！");
        }
    }
    function success() {
        alert("发表成功");
    }
    
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:280px; float: left">
            <ul>
                <li style="  margin-left:10px;  font-family: 微软雅黑;font-size: 18px; font-weight: bold; color: #333; float:left; width:130px;height:30px;line-height:30px;display:none" >正在做什么？ </li>
                <li style=" width:140px; float: left;  margin-bottom: 10px; text-align: right;height: 30px; line-height: 30px;"><div id="tip" style="width:80px;float:left;display:none">还可以输入</div>
                <div id="lastNummber"style="color:Red; font-family: Constantia, Georgia; font-size: 30px; height: 30px;width:40px;float:left; margin-top: -5px;display:none">140</div><div style="float:left;width:20px;;display:none">字</div> </li>
                <li style="float:left;  width:100%;margin-top: -35px; ">
                
                    <asp:TextBox ID="txt_Content" runat="server" onclick="clicktxt();" Style=" border:1px solid #CCCCCC; height:75px; width:276px; margin-left: 0px;
                        overflow: auto" class="input" TextMode="MultiLine"></asp:TextBox>
                </li>
                <li style="float: right; width:60%; padding-left: 20px; margin-right: 5px; margin-top:2px; text-align: right;">
                      <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" Style="display: none" />
                    <img src="../App_Themes/Microblog/images/submit2.gif" border="0" id="subimg" name="subimg" style="cursor: hand" title="发表微博" onclick="Postto()" />
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
