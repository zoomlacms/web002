<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_Addbooth, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>设置3D地带信息</title>    
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
 <script src="/JS/Common.js" type="text/javascript"></script>
  <script type="text/javascript">
      function SelectUser() {
          window.open('UserList.aspx?TypeSelect=UserList&OpenerText=<%=DboothUser.ClientID %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');

      }
    </script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; 3D地带 &gt;&gt; <a href="ADDbooth.aspx">添加展区摊位</a></div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg">
			<td align="center" colspan="2" class="title" width="5%">
				添加展区摊位
			</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right"  style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">
			   摊位名称:
			</td>
			<td align="left"  style="height: 24px; width:70%">
				<asp:TextBox ID="DboothName" class="l_input" runat="server" Width="343px"></asp:TextBox>
			</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right"  style="height: 24px; padding-right: 20px; font-weight: bold">
			   摊位负责人:
			</td>
			<td align="left"  style="height: 24px;">
			  
				<asp:TextBox ID="DboothUser" class="l_input" runat="server"></asp:TextBox>
				&gt;&gt;&gt;   &nbsp;<span style="color: #0000ff">&lt;=【</span><a href="#" onclick="SelectUser();"> <span
							style="text-decoration: underline; color: Green;">会员列表</span></a><span style="color: #0000ff">】</span></td>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right"  style="height: 24px; padding-right: 20px; font-weight: bold">
			   摊位LOGO:
			</td>
			<td align="left"  style="height: 24px;">
			 
				<asp:TextBox ID="txtDboothLogo" class="l_input" runat="server" Width="342px"></asp:TextBox>
		  *
			  <asp:Label
						   ID="LabPicPath" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label><br />
								<iframe id="Upload_Pic" src="../Common/DshowUpload.aspx?CID=DboothLogo&ftype=1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
			</td>
			</tr>
		<tr class="tdbg">
			<td colspan="2" align="center" class="tdbg" style="height: 24px;">
				<asp:Button ID="Button1" runat="server" Text=" 提 交 " onclick="Button1_Click" class="C_input"/>
				<asp:Button ID="Button2" runat="server" Text="返回列表页" onclick="Button2_Click" class="C_input"/>
			</td>
		</tr>
	</tbody>
</table>

</form>
</body>
</html>