<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_ADDAffiche, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>设置3D地带信息</title>    
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/pacalendar.js"></script>
</head>

<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; 3D地带 &gt;&gt; <a href="ADDAffiche.aspx"><asp:Label ID="Label2" runat="server" Text="发布"></asp:Label>展区公告</a></div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg">
			<td align="center" colspan="2" class="title" width="5%">
				<asp:Label ID="Label1" runat="server" Text="发布"></asp:Label>展区公告
			</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" >
				公告标题:
			</td>
			<td align="left" >
				<asp:TextBox ID="DafficheTitle" class="l_input" runat="server" Width="343px"></asp:TextBox>
			</td>
		</tr>
		 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right"  style="height: 24px; padding-right: 20px; font-weight: bold">
				公告类型:
			</td>
			<td align="left" >
				<asp:RadioButtonList ID="Duserstate" runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Selected="True" Value="0">正式公告</asp:ListItem>
					<asp:ListItem Value="1">即时公告</asp:ListItem>
				</asp:RadioButtonList>
			</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right"  style="height: 24px; padding-right: 20px; font-weight: bold">
				接收对象:
			</td>
			<td align="left" >
				<asp:RadioButtonList ID="Dsendto" runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Selected="True" Value="0">所有3D会员</asp:ListItem>
					<asp:ListItem Value="1">参展商</asp:ListItem>
					<asp:ListItem Value="2">买家</asp:ListItem>
				</asp:RadioButtonList>
			</td>
		</tr>
		  
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right"  style="height: 24px; padding-right: 20px; font-weight: bold">
				公告截止时间:</td>
			<td align="left">
				<asp:TextBox ID="DendTime" onclick="showCalendar(this, this, 'yyyy-mm-dd','cn',1);" Width="163px" runat="server" class="l_input"></asp:TextBox>
					<img src="/App_Themes/AdminDefaultTheme/images/rili.gif" style="cursor:hand;" align="absmiddle" border="0"  onclick="showCalendar(G('DendTime'), G('DendTime'), 'yyyy-mm-dd','cn',1);">
			 </td>
		</tr>
		   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right"  style="height: 24px; padding-right: 20px; font-weight: bold">
				公告内容:
			</td>
			<td align="left">
				<asp:TextBox ID="DafficheContent" class="l_input" runat="server" Height="118px" TextMode="MultiLine" Width="345px"></asp:TextBox>
			   </td>
		</tr>
		<tr class="tdbg" >
			<td colspan="2" align="center"  style="height: 24px;">
				<asp:Button ID="Button1" runat="server" Text=" 提 交 " onclick="Button1_Click" class="C_input"/>
				<asp:Button ID="Button2" runat="server" class="C_input" Text="返回" OnClientClick="location.href='Affiche.aspx';return false;" />
			</td>
		</tr>
	</tbody>
</table>

</form>
</body>
</html>