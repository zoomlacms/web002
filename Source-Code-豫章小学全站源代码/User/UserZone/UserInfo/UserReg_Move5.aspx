<%@ page language="C#" autoeventwireup="true" inherits="UserReg_Move5, App_Web_ld40vqjm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlUserInfoTop.ascx" TagName="WebUserControlUserInfoTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>个人信息管理</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" target="_parent" href='<%=ResolveUrl("~/User/Default.aspx")%>'> 会员中心</a>&gt;&gt;我的生活状态
</div>
    <div>
      <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
      <uc1:WebUserControlUserInfoTop ID="WebUserControlUserInfoTop1" runat="server" />
    </div>
    <br />
    <div class="us_topinfo" style="overflow: hidden; width:98%">
      <table border="0" class="us_showinfo" align="center" width="100%" cellpadding="0"
                cellspacing="0">
        <tr>
          <td align="right" width="17%"> 是否吸烟： </td>
          <td width="41%">&nbsp;
            <asp:DropDownList ID="SmokeDropDownList" Width="177px" runat="server"> </asp:DropDownList></td>
          <td width="42%">&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 是否喝酒： </td>
          <td>&nbsp;
            <asp:DropDownList ID="DrinkDropDownList" Width="177px" runat="server"> </asp:DropDownList></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right" style="height: 22px"> 职业类别： </td>
          <td style="height: 22px">&nbsp;
            <asp:DropDownList ID="ddlWork" Width="177px" runat="server"> </asp:DropDownList></td>
          <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
          <td align="right" style="height: 22px"> 是否购车： </td>
          <td style="height: 22px">&nbsp;
            <asp:DropDownList ID="CarDropDownList" Width="177px" runat="server"> </asp:DropDownList></td>
          <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 公司类别： </td>
          <td>&nbsp;
            <asp:TextBox ID="Comtxt" runat="server" Width="170px"></asp:TextBox></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 是否想要孩子： </td>
          <td>&nbsp;
            <asp:DropDownList ID="NeedchildDropDownList" Width="177px" runat="server"> </asp:DropDownList></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 我的内心独白： </td>
          <td colspan="2" valign="top">&nbsp;
            <textarea id="TextArea1" runat="server" style="width: 203px; height: 89px"></textarea></td>
        </tr>
        <tr>
          <td align="right"> 我的爱情宣言： </td>
          <td valign="top">&nbsp;
            <textarea id="Textarea2" runat="server" style="width: 203px; height: 89px"></textarea></td>
          <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textarea2"
                            ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
          <td style="width: 158px">&nbsp;</td>
          <td colspan="2"><asp:Label ID="errLabel" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
          <td style="width: 158px; height: 24px;">&nbsp;</td>
          <td colspan="2" style="height: 24px">&nbsp;
            <asp:Button ID="nextButton" runat="server" Text="提  交" OnClick="nextButton_Click" /></td>
        </tr>
      </table>
  </div>
</form>
</body>
</html>
