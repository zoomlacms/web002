<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="User_login, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI"  TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>用户登陆-<%Call.Label("{$SiteName/}"); %></title>
    <link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        if (self != top) { top.location = self.location; }
        function onfocus() {
            try {
                document.getElementById('TxtUserName').focus();
            } catch (Error) { }
        }

        var sts = 3; //登陆后跳转等待时间;单位：秒

        function sucse(s, url) {
            if (s == 1) {//成功
                document.getElementById("main_l").style.display = "none";
                document.getElementById("main_s").style.display = "";
                document.getElementById("sec").innerHTML = sts;
                setInterval(loacationgoto, 1000);
            }
            else {
                document.getElementById("main_l").style.display = "";
                document.getElementById("main_s").style.display = "none";
            }
        }
        function loacationgoto() {
            sts--;
            document.getElementById("sec").innerHTML = sts;
            if (sts <= 0) {
                location.href = "Default.aspx";
            }
        }

        function CheackMail() {
            document.getElementById("SendButton").disabled = true;
            $("#messageinfo").html("<img src=\"/images/ajax-loader.gif\"></img><b>正在提交...</b>");
            var senbot = $("#SendButton");
            var mailtxt = $("#SendMail").val();
            var SendVcodetxt = $('#SendVcode').val();
            var SendID = $('#hfSendid').val();

            $.post('/API/ChackReg.aspx?SendID=' + SendID, {
                Mail: mailtxt,
                SendVcode: SendVcodetxt
            }, function (data) {
                var dataarr = data.split('|');
                var d1 = dataarr[0];
                var d2 = dataarr[1];
                var errnum = 0;
                if (d1 == "false") {
                    $("#messageinfo").html("");
                    $('#mailerrinfo').html("<font color=red>此邮件已被注册!</font>");
                    errnum = errnum + 1;
                }
                else {
                    $('#mailerrinfo').html("");
                }
                if (d2 == "false") {
                    $('#Validateinfo').html("<font color=red>验证码不正确!</font>");
                    $("#messageinfo").html("");
                    errnum = errnum + 1;
                }
                else {
                    $('#Validateinfo').html("");
                }

                if (errnum > 0) {
                    return false;
                }
                else {
                    if (data == "succeed")
                        $("#messageinfo").html("<font color=green>发送成功！</font>");
                    else
                        $("#messageinfo").html("<font color=red>发送失败！</font>");
                }
            });

            window.setTimeout("Timer()", 200);
        }

        function Timer() {
            document.getElementById("SendButton").disabled = false;
        }
    </script>
</head>
<body onload="onfocus();">
    <form runat="server">
    <div id="main" style="width: 100%">
        <div id="main_k" style="width: 40%; float: left">
            <ul>
                <li style="color: #FF6600; font-size: 14px; font-weight: bold">创建一个新账户</li>
                <li>
                    <asp:Label ID="titletip" runat="server" Text="系统将自动发送一封验证邮件到您邮箱。"></asp:Label></li>
                <li style="color: #798B9B">邮箱：</li>
                <asp:HiddenField ID="hfSendid" runat='server'  />
                <asp:TextBox ID="SendMail" runat="server" Style="width: 220px; border: #CCC solid 1px;"
                    CssClass="input_out" onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
                    onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SendMail"
                    Display="Dynamic" ErrorMessage="邮箱格式错误!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SendMail"
                    Display="Dynamic" ErrorMessage="邮箱不能为空!"></asp:RequiredFieldValidator>
                    <asp:Label ID="mailerrinfo" runat="server" Text=""></asp:Label>
                </li>
                <li style="color: #798B9B">验证码： </li>
                <li>
                    <asp:TextBox ID="SendVcode" MaxLength="6" runat="server" Style="width: 60px; border: #CCC solid 1px;"
                        CssClass="input_out" onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
                        onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px"
                        ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;"
                        onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" /><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="SendVcode" Display="Dynamic"
                            ErrorMessage="验证码不能为空!"></asp:RequiredFieldValidator>
                    <asp:Label ID="Validateinfo" runat="server" Text=""></asp:Label>
                </li>
                <li><span id="messageinfo"></span></li>
                <li>
                    <asp:Button ID="SendButton" runat="server" Text="开始发送验证邮件" Width="140"  OnClientClick="CheackMail();"  /></li>
            </ul>
        </div>
        <div id="main_l" style="width: 40%; float: left">
            <ul>
                <h1>登录会员中心</h1>
                <li>
                    <asp:Label ID="lblUser" runat="server" Text="用户名："></asp:Label>
                    <asp:TextBox ID="TxtUserName" runat="server" Style="width: 140px; margin-left: 20px;
                        border: #CCC solid 1px;" CssClass="input_out" onfocus="this.className='input_on';this.onmouseout=''"
                        onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
                        onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox></li>
                <li>密 码：
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Style="width: 140px;
                        margin-left: 20px; border: #CCC solid 1px;" CssClass="input_out" onfocus="this.className='input_on';this.onmouseout=''"
                        onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
                        onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox></li>
                <li>
                    <div class="reg_put" id="trVcodeRegister" visible="false" runat="server">
                        验证码：<asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" Style="width: 140px;
                            margin-left: 20px; border: #CCC solid 1px;" CssClass="input_out" onfocus="this.className='input_on';this.onmouseout=''"
                            onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
                            onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px"
                            ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;"
                            onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
                    </div>
                </li>
                <li>
                    <asp:Button ID="btnLogin" class="i_bottom" runat="server" Text="登　录" OnClick="btnLogin_Click" CausesValidation="false" />
                    <input type="checkbox" name="checkbox" checked="checked" id="checkbox" style="margin-left: 18px" />记住登录&nbsp;
                    <asp:HyperLink ID="hlReg" runat="server" NavigateUrl="~/User/login.aspx?RegID=1">Email登录</asp:HyperLink></li>
                <li style="margin-top: 25px;"><a href="/User/GetPassword.aspx">忘记密码了？ </a>如果您尚未在本站注册为用户，请先点击<a
                    href="Register.aspx">点此注册</a>。</li>
            </ul>
        </div>
        <div id="main_s" style="display: none">
            <ul>
                <li style="color: green; font-size: 14px; font-weight: bold">欢迎您！登陆成功</li>
                <li style="margin-top: 25px;">系统将在 <span id="sec">3</span> 秒后自动跳转到<a href="Default.aspx">会员首页</a></li>
            </ul>
        </div>
        <div class="clear">
        </div>
    </div>
    <!--main end -->
    <div id="bottom">
        <a href="/">
            <img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
        <p>
            <script language="javascript" type="text/javascript"> 
<!--
                var year = "";
                mydate = new Date();
                myyear = mydate.getYear();
                year = (myyear > 200) ? myyear : 1900 + myyear;
                document.write(year); 
--> 
            </script>
            &nbsp;Copyright&copy;&nbsp;
            <%Call.Label("{$SiteName/}"); %>
            All rights reserved.</p>
    </div>
    <asp:RequiredFieldValidator ID="ValrUserName" runat="server" ErrorMessage="请输入用户名！"
        ControlToValidate="TxtUserName" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="ValrPassword" runat="server" ErrorMessage="请输入密码！"
        ControlToValidate="TxtPassword" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />--%>
    </form>
</body>
</html>
