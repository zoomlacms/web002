<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.EditModelInfo, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>用户模型信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="/Common/Common.js" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/Common/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo" style="width: 98%">
    <div class="us_pynews"> <span><a title="网站首页" href="/" target="_parent">
      <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
      </a></span><span> &gt;&gt;
      <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
      </span> <span> &gt;&gt; </span><span>
      <asp:Label ID="LblModel" runat="server" Text="模型名称"></asp:Label>
      </span> </div>
    <div class="cleardiv"></div>
  </div>
  <div class="us_setaa2" style="margin-top:10px;"　id="manageinfos" runat ="server">
    <ul>
      <li><a href="UserInfo.aspx">注册信息</a></li>
      <li><a href="UserBase.aspx">基本信息</a></li>
      <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
      <div class="cleardiv"></div>
    </ul>
  </div>
  <div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
    <h1 style="text-align:center">
      <asp:Label ID="LblModelName" runat="server" Text="Label"></asp:Label>
    </h1>
    <table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="border">
      <tr class="tdbg">
        <td style="width:35%; line-height:30px; text-align:right" nowrap>用户名：</td>
        <td style="width:65%;line-height:30px"><asp:Label ID="LblUser" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
      <tr class="tdbgbottom">
        <td colspan="2" align="center"><asp:HiddenField ID="HdnModel" runat="server" />
          <asp:HiddenField ID="HdnID" runat="server" />
          <asp:HiddenField ID="HdnType" runat="server" />
          <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
          <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server"/></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>