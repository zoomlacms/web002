<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_ADDUser, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加3D地带用户</title>    
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; 3D地带 &gt;&gt; <a href="ADDUser.aspx">
		<asp:Label ID="Label1" runat="server" Text="添加"></asp:Label>3D地带用户</a></div>
<div class="clearbox">
</div>
<asp:HiddenField ID="HiddenDuserid" runat="server" />
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
	<ContentTemplate>
		<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
			<tbody id="Tbody1">
				<tr class="tdbg">
					<td align="center" colspan="2" class="title" style="width: 5%">
						<asp:Label ID="Label2" runat="server" Text="添加"></asp:Label>3D地带用户
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						用户类型：
					</td>
					<td align="left" style="height: 24px;">
						<asp:RadioButtonList ID="Dutype" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="Dutype_SelectedIndexChanged">
							<asp:ListItem Value="0">买家</asp:ListItem>
							<asp:ListItem Value="1" Selected="True">参展商</asp:ListItem>
						</asp:RadioButtonList>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">
						用户名：
					</td>
					<td align="left"  style="height: 24px; width: 70%">
						<asp:TextBox ID="UserName" class="l_input" runat="server" Width="191px"></asp:TextBox>
						<font color="red">*</font>
					</td>
				</tr>
				<tr  id="tw" runat="server" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						摊位编号：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:DropDownList ID="DropDownList1" runat="server">
						</asp:DropDownList>
					</td>
				</tr>
				<tr  id="trtype" runat="server" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
				<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						摊位类型：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:RadioButtonList ID="rboBoothType" runat="server" RepeatDirection="Horizontal">
						<asp:ListItem Value="0" Selected="True">用户店铺</asp:ListItem>
						<asp:ListItem Value="1">本站店铺</asp:ListItem>
						</asp:RadioButtonList>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="cj" runat="server">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						绑定场景：
					</td>
					<td align="left" style="height: 24px;">
						<asp:DropDownList ID="DropDownList2" runat="server">
						</asp:DropDownList>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						密码：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="UserPwd" class="l_input" runat="server" Width="136px" TextMode="Password"></asp:TextBox>
						<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="UserPwd2" ControlToValidate="UserPwd" ErrorMessage="两次密码不匹配" Display="Dynamic"></asp:CompareValidator>
						<font color="red">*</font>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						重复密码：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="UserPwd2" class="l_input" runat="server" Width="136px" TextMode="Password"></asp:TextBox>
						<font color="red">*</font>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						密码问题：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="Question" class="l_input" runat="server" Width="266px"></asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						问题答案：
					</td>
					<td align="left" style="height: 24px;">
						<asp:TextBox ID="Answer" class="l_input" runat="server" Width="266px"></asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						性别：
					</td>
					<td align="left" style="height: 24px;">
						<asp:RadioButtonList ID="Usersex" runat="server" RepeatDirection="Horizontal">
							<asp:ListItem Value="1" Selected>男</asp:ListItem>
							<asp:ListItem Value="0">女</asp:ListItem>
						</asp:RadioButtonList>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						Email地址：
					</td>
					<td align="left" style="height: 24px;">
						<asp:TextBox ID="DEmail" class="l_input" runat="server" Width="213px"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DEmail" ErrorMessage="Email不能为空!" Display="Dynamic"></asp:RequiredFieldValidator>
						<font color="red">*</font>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						手机号码：
					</td>
					<td align="left" style="height: 24px;">
						<asp:TextBox ID="Dmobile" class="l_input" runat="server" Width="136px"></asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						联系电话：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="Dphone" class="l_input" runat="server" Width="136px"></asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						传真：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="Dfax" class="l_input" runat="server" Width="136px"></asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						可发布商品数量：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="Dupicnum" class="l_input" runat="server" Width="63px">20</asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						有效截止期：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="Dexpiry" class="l_input" runat="server" Width="205px" onclick="calendar();"></asp:TextBox>
						<asp:Image ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" />
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						企业名称：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="Dcorp" class="l_input" runat="server" Width="282px"></asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						职业：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="Dmetier" class="l_input" runat="server" Width="274px"></asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						通信地址：
					</td>
					<td align="left" style="height: 24px;">
						<asp:TextBox ID="Daddress" class="l_input" runat="server" Width="276px"></asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						简介：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:TextBox ID="TextBox1" class="l_input" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						场景LOGO：<br />
						(显示于场景顶部)
					</td>
					<td align="left" style="height: 24px;">
						<table>
							<tr>
								<td>
									<asp:TextBox ID="txtDboothLogo" class="l_input" runat="server" Width="342px"></asp:TextBox>
									<font color="red">*</font>
									<asp:Label ID="LabPicPath" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label>
									<iframe id="Upload_Pic" src="../Common/DshowUpload.aspx?CID=DboothLogo&ftype=1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
								</td>
								<td>
									<asp:Label ID="picurl" runat="server"></asp:Label>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">
						是否已审核：
					</td>
					<td align="left"  style="height: 24px;">
						<asp:RadioButtonList ID="Dactiva" runat="server" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">是</asp:ListItem>
							<asp:ListItem Value="0" Selected="True">否</asp:ListItem>
						</asp:RadioButtonList>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2" align="center" class="tdbg" style="height: 24px;">
						<asp:Button ID="Button1" runat="server" Text=" 提 交 " OnClick="Button1_Click" class="C_input"/>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Button ID="Button2" runat="server" Text=" 返 回 " OnClick="Button2_Click" class="C_input"/>
						<asp:HiddenField ID="HiddenMenu" runat="server" />
					</td>
				</tr>
			</tbody>
		</table>
	</ContentTemplate>
</asp:UpdatePanel>
</form>
</body>
</html>
<script src="/JS/calendar.js" type="text/javascript"></script>