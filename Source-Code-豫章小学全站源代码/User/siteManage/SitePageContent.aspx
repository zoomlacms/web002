<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_SitePageContent, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>分站内容设置</title>
<link rel="stylesheet" type="text/css" href="/user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="/user/skin/user_user.css" />
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<script>
//复制命令
function copytext(inputid) {
    var text = document.getElementById(inputid);
    if (text.value == "") { alert("没有内容"); text.focus(); return; }
    text.select(); //选择对象
    document.execCommand("Copy"); //执行浏览器复制命令
    alert("已复制好，可贴粘。");
}

function load() {
    var areurl = document.getElementById("areurl").value;
    var hfid = document.getElementById("hfid").value;
    var url = document.getElementById("hfurl").value;
    url = url + "/page/Default.aspx?pageid=" + hfid;
    if (hfid != "" && hfid != "0") {
        areurl = "<iframe src='"+url+"'></iframe>";
    }
}
</script>
</head>
<body onload="load()">
<form id="form1" runat="server">
<div class="user_con">
<div style="margin-top: 10px;">
    <h2>配置信息设置</h2>
    <div class="us_seta" style="margin-top: 5px; ">
        <table>
            <tr>
                <td width="35%">黄页标题：</td>
                <td> <asp:TextBox ID="Title" runat="server" class="input_out" Width="434px" /></td>
            </tr>
            <tr>
                <td width="35%">菜单高度：</td>
                <td><asp:TextBox ID="HeadHeight" runat="server" class="input_out" Width="100px" /> &nbsp;px</td>
            </tr>
            <tr>
                <td width="35%">栏目背景图片：</td>
                <td>
                    <table border='0' cellpadding='0' cellspacing='1' width='100%'>
                        <tr class='tdbg'>
                        <td><asp:TextBox ID="HeadBackGround" runat="server" Width="320px"></asp:TextBox></td>
                        </tr><tr class='tdbg'>
                        <td><iframe id="Iframe1" src="/Common/UserUpload.aspx?FieldName=HeadBackGround" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="35%">栏目背景颜色：</td>
                <td><asp:TextBox ID="HeadColor" runat="server" Width="101px"  class="input_out"></asp:TextBox></td>
            </tr>
            <tr>
                <td width="35%">KeyWords关键：</td>
                <td><asp:TextBox ID="KeyWords" runat="server" class="input_out" Width="434px" TextMode="MultiLine" Height="40px" /></td>
            </tr>
            <tr>
                <td width="35%">Description内容：</td>
                <td><asp:TextBox ID="Description" runat="server" class="input_out" Width="434px" TextMode="MultiLine" Height="40px" /></td>
            </tr>
            <tr>
                <td width="35%">顶部HTML内容：</td>
                <td><asp:TextBox ID="TopWords" runat="server" class="input_out" Width="434px" TextMode="MultiLine" Height="80px" /></td>
            </tr>
            <tr>
                <td width="35%">尾部HTML内容：</td>
                <td><asp:TextBox ID="BottonWords" runat="server" class="input_out" Width="434px" TextMode="MultiLine" Height="80px" /></td>
            </tr>
            <tr>
                <td width="35%">iframe框架尺寸：</td>
                <td>宽度：<input type="text" id="wid" runat="server" value="700" style="width:50px"/>px &nbsp;&nbsp;
                    高度：<input type="text" id="hei" runat="server" value="800" style="width:50px"/>px &nbsp;&nbsp;
                    边框：<input type="text" id="bord" runat="server" value="0" style="width:50px"/>px</td>
            </tr>
            <tr>
                <td style="text-align: center;" colspan="2" >
                    <asp:Button ID="BtnSubmit" runat="server" Text="预览" class="i_bottom" onclick="BtnSubmit_Click" />&nbsp;&nbsp;
                    <input type="button" style="vertical-align:top; margin-left:16px;" value="复制代码"  onclick="copytext('areurl')"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HiddenField ID="hfid" runat="server" />
                    <asp:HiddenField ID="hfurl" runat="server" />
                    <textarea id="areurl" runat="server"  style="width:100%;height:100px"></textarea>
                </td>
            </tr>
        </table>
    </div>
</div>
<div align="center" style="border:1px solid #b8d2f7"></div>
</div>
</form>
</body>
</html>
