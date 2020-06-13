<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_userinfo, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改资料</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
 <div class="main_user_bg"></div>
<div class="user_con">
<h2>修改资料</h2>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table">
    <tr>
        <td width="100" align="right">用 户 名：</td>
        <td><asp:TextBox ID="txtName" runat="server" />
         <span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName"  runat="server" ErrorMessage="用户名不能为空！"/></span></td>
    </tr>
        <tr>
        <td align="right" width="100">真实姓名：</td>
        <td> <asp:TextBox ID="tbTrueName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td align="right" width="100">原 密 码：</td>
        <td><asp:TextBox ID="TxtOldPassword" runat="server" TextMode="Password" Width="150px" />
          <span>不修改请留空!</span></td>
    </tr>
    <tr>
        <td align="right" width="100">新 密 码：</td>
        <td><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"  Width="150px" />
              <span>不修改请留空!</span></td>
    </tr>
    <tr>
        <td align="right" width="100">确认密码：</td>
        <td><asp:TextBox ID="TxtPassword2" runat="server" TextMode="Password" Width="150px"  />
            <span>不修改请留空!</span>
        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtPassword2" ControlToCompare="TxtPassword" ErrorMessage="两次输入的密码不一致！" runat="server" /></td>
    </tr>
        <tr>
        <td align="right" width="100">E-Mail ：</td>
        <td><asp:TextBox ID="txtmail" runat="server" />
          <span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtmail" runat="server" ErrorMessage="E-Mail不能为空！"/>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="txtmail" ErrorMessage="邮件地址不规范" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator></span></td>
    </tr>
        <tr>
        <td align="right" width="100">手机号码：</td>
        <td>
        <span><asp:TextBox ID="tbMobile" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="输入不能为空"   ControlToValidate="tbMobile" Display="Dynamic" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4" ValidationExpression="^1[(0-9)]{10}$"  ControlToValidate="tbMobile" ErrorMessage="按照手机号规则输入"></asp:RegularExpressionValidator>
            </span>        
        </td>
    </tr>
        <tr>
        <td align="right" width="100">身份证号码：</td>
        <td>
        <asp:TextBox ID="tbIDCard" runat="server" Columns="40"></asp:TextBox>
        <span><asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator5" ValidationExpression="(^\d{15}$)|(^\d{17}([0-9]|X)$)"  ControlToValidate="tbIDCard" ErrorMessage="请输入正确格式"></asp:RegularExpressionValidator></span>
        </td>
    </tr>
        <tr>
        <td align="center">
        <asp:Button ID="BtnSubmit" runat="server" Text="修改" OnClick="BtnSubmit_Click" class="srhbtn" />
        &nbsp;&nbsp;</td>
    </tr>
</table>
</div>
</form>
</body>
</html>
