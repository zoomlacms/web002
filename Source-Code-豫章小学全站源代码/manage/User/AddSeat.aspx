<%@ page language="C#" autoeventwireup="true" inherits="manage_User_AddSeat, App_Web_tskucmgh" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>客服信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理 &gt;&gt;附件管理&gt;&gt; 客服管理&gt;&gt;<a href='ServiceSeat.aspx'>客服席位</a>&gt;&gt; 添加席位</div>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr>
        <td align="center" colspan="2" class="spacingtitle"><b> <%=SeatType %></b></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="25%" align="right" class="tdbgleft"><strong>席位名称：</strong></td>
        <td><asp:TextBox ID="txtSeat" runat="server" class="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="25%" align="right" class="tdbgleft"><strong>客服人员：</strong></td>
        <td><asp:DropDownList ID="ddlAdmin" runat="server" DataTextField="AdminName" DataValueField="AdminID"> </asp:DropDownList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="25%" align="right" class="tdbgleft"><strong>显示位置：</strong></td>
        <td><asp:DropDownList ID="ddlIndex" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="25%" align="right" class="tdbgleft"><strong>默认客服：</strong></td>
        <td><asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="1">设为默认</asp:ListItem>
            <asp:ListItem Value="2">取消默认</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td colspan="2" align="center"><asp:Button ID="Button1" class="C_input" runat="server" Text="提 交" OnClick="Button1_Click" />
          <asp:Button ID="Button2" class="C_input" runat="server" Text="取消" CausesValidation="false"  onclick="Button2_Click" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>