<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_File_Pigeonhole, App_Web_zscwa44e" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>归档管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script type="text/javascript" language="javascript" src="/JS/RiQi.js" ></script>
</head>
<body>
<form id="form1" runat="server">
  <div class="column">
    <div class="columntitle"> 当前位置：功能导航 >> <a href="SelectPigeonhole.aspx">
      <asp:Label ID="Label1" runat="server" Text="数据归档"></asp:Label>
      </a> </div>
    <table border="0" cellpadding="2" width="100%" cellspacing="1">
      <tr>
        <td style="width: 70px"> 归档时间： </td>
        <td align="left"><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" AutoPostBack="True"  OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Value="1" Selected="True">按年份归档</asp:ListItem>
            <asp:ListItem Value="2">自定义归档时间</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left" id="tdyear" runat="server" colspan="2"> 请选择归档的年份：
          <asp:DropDownList ID="ddlYear" runat="server" Width="100px" DataValueField="CreateTime" DataTextField="CreateTime"> </asp:DropDownList></td>
        <td align="left" id="tdday" runat="server" colspan="2" visible="false"> 从
          <asp:TextBox ID="txtStime" runat="server" onclick="setday(this)"></asp:TextBox>
          到
          <asp:TextBox ID="txtEtime" runat="server" onclick="setday(this)"></asp:TextBox></td>
      </tr>
    </table>
    <asp:Button ID="Button1" runat="server" CssClass="button" Text="  确  定  "  onclick="Button1_Click" />
    <br />
  </div>
</form>
</body>
</html>