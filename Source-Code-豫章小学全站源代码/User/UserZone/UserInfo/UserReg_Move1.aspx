<%@ page language="C#" autoeventwireup="true" inherits="User_UserInfo_UserReg_Move1, App_Web_ld40vqjm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlUserInfoTop.ascx" TagName="WebUserControlUserInfoTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>个人信息管理</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src='<%=ResolveUrl("~/Common/RiQi.js")%>' type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_top"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent"> 会员中心</a>&gt;&gt;我的基本资料</div>
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <uc1:WebUserControlUserInfoTop ID="WebUserControlUserInfoTop1" runat="server" />
    <br />
    <div class="us_topinfo" style="overflow: hidden; width: 98%">
      <table border="0" class="us_showinfo" width="100%" align="center" cellpadding="0"
                cellspacing="0">
        <tr valign="top">
          <td width="17%" align="right"> 用户名： </td>
          <td width="41%">&nbsp;
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label></td>
          <td width="42%">&nbsp;</td>
        </tr>
        <tr valign="top">
          <td width="17%" align="right"> 昵&nbsp;&nbsp; 称： </td>
          <td width="41%">&nbsp;
            <asp:TextBox ID="lblhoney" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td align="right" style="height: 26px"> 真实姓名： </td>
          <td style="height: 26px">&nbsp;
            <asp:TextBox ID="txtrealname" runat="server" Width="140px"></asp:TextBox></td>
          <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
          <td align="right" style="height: 24px"> 性&nbsp;&nbsp; 别： </td>
          <td style="height: 24px">&nbsp;
            <asp:Label ID="lblSex" runat="server" Text=""></asp:Label></td>
          <td style="height: 24px">&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 出生日期： </td>
          <td>&nbsp;
            <asp:TextBox ID="txtbir" runat="server" Width="140px" OnFocus="setday(this)"></asp:TextBox>
            如：2008-08-08<br />
            生肖：
            <asp:Label ID="shengxiao" runat="server"><%=GetTree(Convert.ToDateTime(txtbir.Text))%></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp
            星座：
            <asp:Label ID="xingzuo" runat="server" Text=""><%=GetConstellation(Convert.ToDateTime(txtbir.Text))%></asp:Label></td>
          <td>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbir"
                            ErrorMessage="出生日期不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator2" runat="server" ErrorMessage="请输入正确的出生日期" ValidationExpression="^\d{4}-\d{2}-\d{2}$"
                                ControlToValidate="txtbir"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
          <td align="right" style="height: 22px"> 身份证号码： </td>
          <td style="height: 22px">&nbsp;
            <asp:DropDownList ID="CardType" runat="server">
              <asp:ListItem Value="身份证" />
              <asp:ListItem Value="军官证" />
              <asp:ListItem Value="护照" />
            </asp:DropDownList>
            <asp:TextBox ID="txtNum" runat="server" Width="200px" MaxLength="18"></asp:TextBox></td>
          <td style="height: 22px"></td>
        </tr>
        <%--  <tr>
                    <td align="right" style="height: 22px">
                        国家：</td>
                    <td style="height: 22px">
                    &nbsp;<asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td style="height: 22px">
                    </td>
                </tr>--%>
        <tr>
          <td align="right" style="height: 22px"> 户籍所在地省： </td>
          <td style="height: 22px">&nbsp;
            <asp:DropDownList ID="ddlProvince" Width="150px" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="ddlProvince_SelectedIndexChanged"> </asp:DropDownList></td>
          <td style="height: 22px"> 市： &nbsp;
            <asp:DropDownList ID="ddlCity" Width="150px" runat="server"> </asp:DropDownList></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td style="height: 19px;" align="right"> 对他人隐藏信息： </td>
          <td colspan="2" style="height: 19px"><asp:RadioButtonList ID="RadioButtonList1" name="RadioButtonList1" runat="server"
                            RepeatDirection="Horizontal">
              <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
              <asp:ListItem Value="1">否</asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
        <tr>
          <td style="height: 19px">&nbsp;</td>
          <td colspan="2" style="height: 19px"><asp:Label ID="errLabel" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
          <td style="height: 19px">&nbsp;</td>
          <td colspan="2" style="height: 19px"><asp:Label ID="Label1" runat="server" Text="其他所有信息填写完整可获得积分哦" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2">&nbsp;
            <asp:Button ID="nextButton" runat="server" Text="提  交" OnClick="nextButton_Click" /></td>
        </tr>
      </table>
  </div>
</form>
</body>
</html>