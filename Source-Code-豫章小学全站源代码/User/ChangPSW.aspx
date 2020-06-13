<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.ChangPSW, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员修改密码</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../App_Themes/UserThem/bidding.css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank">
<asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 修改密码
</div>
  <div style="margin-top: 10px;">
    <div class="us_seta" style="margin-top: 5px;width:100%;">
      <table align="center" border="0">
        <tr>
          <td align="center" width="40%"><strong>原 密 码：</strong></td>
          <td><asp:TextBox ID="TxtOldPassword" runat="server" CssClass="f_input" Height="18px" TextMode="Password" /> <font style="color:Red">*</font>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="原密码不能为空" ControlToValidate="TxtOldPassword"></asp:RequiredFieldValidator>
           </td>
        </tr>
        <tr>
          <td align="center" width="40%"><strong>新 密 码：</strong></td>
          <td><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"  CssClass="f_input" Height="18px" /> <font style="color:Red">*</font>
            </td>
        </tr>
        <tr>
          <td align="center" width="40%"><strong>确认密码：</strong></td>
          <td><asp:TextBox ID="TxtPassword2" runat="server" TextMode="Password" CssClass="f_input" Height="18px" /> <font style="color:Red">*</font>
            
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtPassword2" ControlToCompare="TxtPassword" ErrorMessage="两次输入的密码不一致！" runat="server" /></td>
        </tr>
        <tr align="center">
          <td align="center" colspan="2"><asp:Button ID="BtnSubmit" runat="server" Text="修改" OnClick="BtnSubmit_Click" class="i_bottom" />
            &nbsp;&nbsp;
            <asp:Button ID="BtnCancle" runat="server" Text="取消" OnClick="BtnCancle_Click" ValidationGroup="BtnCancel"  class="i_bottom" /></td>
        </tr>
      </table>
        <div style="width:100%; text-align:center;margin-top:10px">
        <div style="width:100%; text-align:center"> </div>
      </div>
    </div>
  </div>
</form>
</body>
</html>