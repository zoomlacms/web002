<%@ page language="C#" autoeventwireup="true" inherits="User_UserInfo_UserReg_Move6, App_Web_ld40vqjm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlUserInfoTop.ascx" TagName="WebUserControlUserInfoTop" TagPrefix="uc1" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 个人信息管理</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_top"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" target="_top" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent">会员中心</a>&gt;&gt;联系方式 
</div>
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <uc1:WebUserControlUserInfoTop ID="WebUserControlUserInfoTop1" runat="server" />
    <br />
    <div class="us_topinfo" style="overflow: hidden; width:98%">
      <table border="0" class="us_showinfo" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="17%" align="right"> 联系地址： </td>
          <td width="41%">&nbsp;
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
          <td width="42%">&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 邮政编码： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox></td>
          <td><asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtZipCode" ErrorMessage="请输入正确的邮政编码" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator></td>
        </tr>
        <tr>
          <td align="right"> 办公室电话： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtOfficePhone" runat="server"></asp:TextBox></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 家用电话： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 传真： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtFax" runat="server"></asp:TextBox></td>
          <td></td>
        </tr>
        <tr>
          <td align="right"> 小灵通： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtPHS" runat="server"></asp:TextBox></td>
          <td></td>
        </tr>
        <tr>
          <td align="right"> 移动电话： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> QQ： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtQQ" runat="server"></asp:TextBox></td>
          <td>&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtQQ" ErrorMessage="请输入正确的QQ号" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator></td>
        </tr>
        <tr>
          <td align="right"> MSN： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtMSN" runat="server"></asp:TextBox></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> ICQ： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtICQ" runat="server"></asp:TextBox></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> UC： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtUC" runat="server"></asp:TextBox></td>
          <td>&nbsp;
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtUC" ErrorMessage="请输入正确的UC号" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator></td>
        </tr>
        <tr>
          <td align="right"> YaHoo： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtYaHoo" runat="server"></asp:TextBox></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 个人主页： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtHomePage" runat="server" TextMode="MultiLine" Columns="2" Width="300px"></asp:TextBox></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><asp:Label ID="errLabel" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
          <td colspan="2" align="center">&nbsp;
            <asp:Button ID="nextButton" runat="server" Text="提  交" OnClick="nextButton_Click" /></td>
          <td>&nbsp;</td>
        </tr>
      </table>
  </div>
</form>
</body>
</html>