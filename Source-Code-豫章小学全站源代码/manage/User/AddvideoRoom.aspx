<%@ page language="C#" autoeventwireup="true" inherits="manage_User_AddvideoRoom, App_Web_own0w3ym" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>多人视频管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../../JS/Dialog.js"></script>
<script type="text/jscript" language="javascript">
	function Openwin() {
		var diag = new Dialog();
		diag.Modal = false;
		diag.Width = 800;
		diag.Height = 450;
		diag.Title = "选择分类";
		diag.URL = "AddvideoRoom.aspx";
		diag.show();
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 用户管理 &gt;&gt; <a href="AdminManage.aspx">多人视频管理</a>&gt;&gt; <a href="VideoRoom.aspx">房间管理</a> &gt;&gt;<asp:Literal ID="Literal1" runat="server" Text="添加房间"></asp:Literal></div>
    <table width="99%" cellspacing="1" cellpadding="0" class="border" align="center">
      <tr>
        <td align="center" class="spacingtitle" colspan="2" style="height: 22px"><asp:Literal ID="LblTitle" Text="添加房间" runat="Server"></asp:Literal></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" valign="middle" style="width:30%"> 房间名称： </td>
        <td style="width: 100px"><asp:TextBox ID="txt_RoomName" runat="server" class="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" valign="middle"> 最大人数限制： </td>
        <td style="width: 100px"><asp:TextBox ID="txt_MaxPerson" runat="server" class="l_input" Text="0"></asp:TextBox>
          0为无限制 </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" valign="middle"> 排列顺序： </td>
        <td style="width: 100px"><asp:TextBox ID="txt_OrderNum" runat="server" class="l_input" Text="0"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" valign="middle"> 是否设置房间密码：</td>
        <td style="width: 100px">
          <asp:RadioButtonList ID="IsPassword" runat="server" RepeatDirection="Horizontal" 
                AutoPostBack="true" onselectedindexchanged="IsPassword_SelectedIndexChanged">
             <asp:ListItem Value="1">是</asp:ListItem>
             <asp:ListItem Selected="True"  Value="0">否</asp:ListItem>
          </asp:RadioButtonList>
        </td>
      </tr>
      <tr class="tdbg" id="password" runat="server" visible="false" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" valign="middle"> 房间密码： </td>
        <td style="width: 100px"><asp:TextBox ID="TxtPassword"  runat="server" class="l_input"  ></asp:TextBox><asp:RequiredFieldValidator
                ID="ReqTxtPassword" runat="server" ControlToValidate="TxtPassword" SetFocusOnError="false" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" valign="middle"> 视频服务器地址：(不填将使用系统默认服务器) </td>
        <td style="width: 100px"><asp:TextBox ID="txt_VideoServer" runat="server" class="l_input" Width="395px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 管理员：<font color="red">(多个管理员用逗号,隔开)</font></td>
        <td style="width: 100px"><asp:TextBox ID="txt_Manager" runat="server" class="l_input" Width="400px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"><%--<a href="UserType.aspx" onclick="Openwin();void(0)">--%>
          主持人：
          <%--</a>--%>
          <font color="red">(多个主持人用逗号,隔开)</font>
          <%-- <asp:HiddenField ID="hfid" runat="server"  />--%></td>
        <td style="width: 100px"><asp:TextBox ID="txt_VideoUser" runat="server" class="l_input" Width="400px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft" style="height: 20px" valign="middle"> 房间描述： </td>
        <td align="left" style="width: 100px; height: 20px" valign="middle"><asp:TextBox ID="txt_Remark" class="x_input" runat="server" Height="81px" TextMode="MultiLine"  Width="401px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td align="center" class="tdbgleft" colspan="2"><asp:Button ID="btnSave" runat="server" Text="添加房间" Width="95px" OnClick="Button2_Click" class="C_input" />
          <asp:Button ID="btnBack" class="C_input" runat="server" Text="返回房间列表" Width="100px" OnClientClick="location.href='VideoRoom.aspx';return false;" /></td>
      </tr>
    </table>
</form>
</body>
</html>