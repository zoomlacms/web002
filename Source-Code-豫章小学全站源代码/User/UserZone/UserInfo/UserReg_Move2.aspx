<%@ page language="C#" autoeventwireup="true" inherits="UserReg_Move2, App_Web_ld40vqjm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" target="_parent" href='<%=ResolveUrl("~/User/Default.aspx")%>'> 会员中心</a>&gt;&gt;我的择偶条件 
</div>
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <uc1:WebUserControlUserInfoTop ID="WebUserControlUserInfoTop1" runat="server" />
    <br />
    <div class="us_topinfo" style="overflow: hidden; width: 98%">
      <table border="0" class="us_showinfo" align="center" width="100%" cellpadding="0"
                cellspacing="0">
        <tr>
          <td align="right" valign="middle"> 工作地区： </td>
          <td valign="top"><table>
              <tr>
                <td> 省： </td>
                <td><asp:DropDownList ID="DropDownList3" Width="150px" runat="server" AutoPostBack="True"
                                        OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"> </asp:DropDownList></td>
              </tr>
              <tr>
                <td> 市： </td>
                <td><asp:DropDownList ID="DropDownList4" Width="150px" runat="server" Visible="false"> </asp:DropDownList></td>
              </tr>
            </table></td>
          <td style="height: 22px"></td>
        </tr>
        <tr>
          <td align="right"> 婚姻状况： </td>
          <td>&nbsp;
            <asp:DropDownList ID="marryDropDownList" Width="50px" runat="server"> </asp:DropDownList></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right" style="height: 22px"> 身高： </td>
          <td style="height: 22px">&nbsp;
            <asp:TextBox ID="Staturetxt" runat="server" Width="50px" Text="不限"></asp:TextBox>
            Cm </td>
          <td style="height: 22px"><span id="YourPosition0">
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="Staturetxt" ErrorMessage="请输入正确的身高信息" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator></td>
        </tr>
        <tr>
          <td align="right"> 体重： </td>
          <td>&nbsp;
            <asp:TextBox ID="Avoirtxt" runat="server" Width="50px" Text="不限"></asp:TextBox>
            Kg </td>
          <td><span id="YourPosition1">
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="Avoirtxt" ErrorMessage="请输入正确的体重信息" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator></td>
        </tr>
        <tr>
          <td align="right"> 学历： </td>
          <td>&nbsp;
            <asp:DropDownList ID="BachelorDropDownList" Width="110px" runat="server"> </asp:DropDownList></td>
          <td></td>
        </tr>
        <tr>
          <td align="right" style="height: 26px"> 月收入： </td>
          <td style="height: 26px">&nbsp;
            <asp:DropDownList ID="monthDropDownList" Width="110px" runat="server"> </asp:DropDownList></td>
          <td style="height: 26px"></td>
        </tr>
        <tr>
          <td align="right"> 住房条件： </td>
          <td>&nbsp;
            <asp:DropDownList ID="homeDropDownList" Width="110px" runat="server"> </asp:DropDownList></td>
          <td></td>
        </tr>
        <tr>
          <td align="right" style="height: 24px"> 其他条件： </td>
          <td style="height: 24px">&nbsp;
            <textarea id="TextArea1" style="width: 236px; height: 64px" runat="server"></textarea></td>
          <td style="height: 24px"></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="2"><asp:Label ID="errLabel" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><asp:Button ID="nextButton" runat="server" Text="提  交" OnClick="nextButton_Click" /></td>
          <td></td>
        </tr>
      </table>
  </div>
</form>
</body>
</html>