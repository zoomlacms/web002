<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_codemodule, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>分站内容设置</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
<script>
    //url检查
    function chkurl() {

        var url = document.getElementById("txtUrl").value;
       
        if (url.length == 0) {
            return true;
        } else {
            var urlRegS = /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^\"\"])*$/;
            if (urlRegS.exec(url)) {
                return true;
            }
            else {
                alert("数据接收Url格式不正确");
                return false;
            }
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="main_user_bg"></div>
<div class="user_con">
<h2>API开发接口(适合有一定网站技术的用户)</h2>
<table width="100%" border="0" cellspacing="2" cellpadding="3" class="user_table">
    <tr>
    <th colspan="2" align="center">ttfanli接口</th>
    </tr>
    <tr>
    <td width="30%"  align="center">数据传送方式（联盟会员将会员注册数据传送到ttfanli）：</td>
    <td>一、联盟会员需要用自己的程序语言开发一个发送数据的接口，请求地址如下：<br />
    <asp:Label ID="lblurl" runat="server"></asp:Label><br />
    二、参数说明：merid：您在<asp:Label ID="lblName" runat="server"></asp:Label> 的用户名，merpass：您的密码，username：注册帐号，pass：密码，
    type：注册类型(整型，1为用户名注册,2为Email注册)，mail：注册邮箱，regTime：注册时间<br />
    三、返回值：1、您的用户名不存在；2、您的密码错误；3、你的帐户未通过验证或被锁定，请与网站管理员联系； 4、帐号已存在；5、添加成功；6、添加失败
    </td>
    </tr>
     <tr>
    <td>数据接收Url：</td>
    <td><asp:TextBox ID="txtUrl" runat="server"></asp:TextBox>(例： http://www.xxx.com/API/ttfanliApi.aspx 为保证数据发送，请输入正确的Url，不需要参数)
    <asp:HiddenField ID="hfid" runat="server" /></td>
    </tr>
    <tr>
    <td>数据接收方式(ttfanli将会员注册数据传送到联盟会员)：</td>
    <td>一、会员需要用自己的程序语言开发一个接收数据的接口，ttfanli用GET方式发送数据给联盟会员的接口，具体形式如下：<br />
    <span>http://www.xxx.com/API/ttfanliApi.aspx?username=xxx&pass=xxx&type=xxx&mail=xxx& regTime=xxx </span>[<font color="red">注：数据接收Url 只需取“?”前的地址</font>]；
    <br />二、参数说明：username：注册帐号，pass：密码，mail：注册邮箱（参数可选）；
    <br />三、返回值：接收数据成功返回字符串:[success]；失败返回字符串：[Fail]</td>
    </tr>
    <tr>
    <td></td>
    <td><asp:Button ID="btnSave" runat="server" Text="保存" onclick="btnSave_Click" OnClientClick="return chkurl()"  /></td>
    </tr>
</table>
</div>
</form>
</body>
</html>
