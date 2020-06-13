<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.ChangAnswer, App_Web_jwpynmiq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>修改密码提示</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="s_bright">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>gt;&gt; <a title="信息管理" href="/User/ChangPSW.aspx">修改密码</a>
</div>

	  <div class="us_seta" style="margin-top:10px;">
		  <h1 style ="text-align:center">修改密码提示</h1>
          <li style="width:15%; float:left;line-height:30px;text-align:right;">
            密码提示问题：
          </li>
          
        <li style="width:83%;line-height:30px">
        <asp:TextBox ID="TxtQuestion" runat="server" TextMode="Password" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtQuestion"
                runat="server" ErrorMessage="密码提示问题！" Display="Dynamic" />
        </li>
        
          <li style="width:15%; float:left;line-height:30px;text-align:right;">新密码提示答案：</li>
          
        <li style="width:83%;line-height:30px">
        <asp:TextBox ID="TxtNewAnswer" runat="server" TextMode="Password" />                 
        </li>
        <li style="width:15%; float:left;line-height:30px; text-align:right">
        	确认密码提示答案：
        </li>
          
        <li style="width:83%;line-height:30px">
         <asp:TextBox ID="TxtNewAnswer2" runat="server" TextMode="Password" />
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtNewAnswer2" ControlToCompare="TxtNewAnswer"
                ErrorMessage="两次输入的密码提示答案不一致！" runat="server" />
        </li>

        <li style="width:100%; float:left;line-height:30px; text-align:center">
            <asp:Button ID="BtnSubmit" runat="server" Text="修改" OnClick="BtnSubmit_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="BtnCancle" runat="server" Text="取消" OnClick="BtnCancle_Click" ValidationGroup="BtnCancel" />
        </li>
        
        <li style="width:100%; float:left;line-height:30px">
        </li>        
	  </div>
</div>
</div>
</div>
</form>
</body>
</html>