<%@ page language="C#" autoeventwireup="true" inherits="User_UserInfo_UserReg_Move7, App_Web_ld40vqjm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" target="_parent" href='<%=ResolveUrl("~/User/Default.aspx")%>'> 会员中心</a>&gt;&gt;我的爱好
</div>
    <div>
      <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
      <uc1:WebUserControlUserInfoTop ID="WebUserControlUserInfoTop1" runat="server" />
    </div>
    <br />
    <div class="us_topinfo" style="overflow: hidden; width: 98%">
      <table border="0" class="us_showinfo" align="center" width="100%" cellpadding="0"
                cellspacing="0">
        <tr>
          <td valign="top" align="right"> 是否愿意与父母同住： </td>
          <td colspan="2" valign="top"><asp:DropDownList ID="LiveSamep" runat="server">
              <asp:ListItem Text="愿意" Value="0" />
              <asp:ListItem Text="欢迎常来小住" Value="1" />
              <asp:ListItem Text="视融洽程度" Value="2" />
              <asp:ListItem Text="不愿意" Value="3" />
            </asp:DropDownList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 锻炼频次： </td>
          <td colspan="2" valign="top"><asp:DropDownList ID="DuanL" runat="server">
              <asp:ListItem Text="每天" Value="0" />
              <asp:ListItem Text="每周" Value="1" />
              <asp:ListItem Text="每月" Value="2" />
              <asp:ListItem Text="很少" Value="3" />
            </asp:DropDownList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 作息习惯： </td>
          <td colspan="2" valign="top"><asp:DropDownList ID="Zuoxi" runat="server">
              <asp:ListItem Text="早睡早起" Value="0" />
              <asp:ListItem Text="较有规律" Value="1" />
              <asp:ListItem Text="夜猫子" Value="2" />
              <asp:ListItem Text="偶尔懒散随意" Value="3" />
              <asp:ListItem Text="作息不定" Value="4" />
            </asp:DropDownList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 个性自评： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="Self" runat="server" RepeatColumns="5" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 兴趣爱好： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="Love" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 喜欢的活动： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="acctiveCheckBoxList" runat="server" RepeatColumns="8" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 喜欢的体育运动： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="AthCheckBoxList" runat="server" RepeatColumns="5" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 喜欢的音乐： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="MusicCheckBoxList" runat="server" RepeatColumns="5" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 喜欢的影视节目/书： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="MovieCheckBoxList" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 喜欢的食物： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="FoodCheckBoxList" runat="server" RepeatColumns="5" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 宠物： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="Pet" runat="server" RepeatColumns="8" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 擅长的生活技能： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="LifeCan" runat="server" RepeatColumns="5" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
        </tr>
        <tr>
          <td valign="top" align="right"> 休闲去处： </td>
          <td colspan="2" valign="top"><asp:CheckBoxList ID="AreaCheckBoxList" runat="server" RepeatColumns="5" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
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