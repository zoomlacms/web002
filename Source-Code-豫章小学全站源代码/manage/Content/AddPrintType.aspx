<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AddPrintType, App_Web_pkfeggyy" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=type%>类型模板</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript">
    function CheckImg(type, t) {
        window.open('MaskList.aspx?PID=' + '<%=Request.QueryString["PID"] %>' + '&type=' + type + '&t=' + t + '', 'newWin', 'modal=yes,width=570,height=480,resizable=yes,scrollbars=yes');
    }
</script>
</head>
<body>
<form id="opener" name="opener" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 内容管理 &gt;&gt; 打印输出 &gt;&gt;	<a href="Print_Type.aspx">类型设置</a> &gt;&gt; <%=type%>类型模板</div>
<table style="text-align: center; width: 20">
	<thead class="spacingtitle">
		<tr>
			<td colspan="2" align="center">
				<%=type%>类型模板
			</td>
		</tr>
	</thead>
	<tbody class="tdbg">
		<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td style="width: 20%" class="tdbgleft">
				类型模板名称
			</td>
			<td align="left">
				<asp:TextBox ID="txtModelName" class="l_input" runat="server"></asp:TextBox>
			</td>
		</tr>
	</tbody>
	<tbody class="tdbg">
		<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td style="width: 20%" class="tdbgleft">
				是否关联商品：
			</td>
			<td align="left">
				<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
					AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
					<asp:ListItem Value="1" Selected="True">关联商品</asp:ListItem>
					<asp:ListItem Value="2">不关联商品</asp:ListItem>
				</asp:RadioButtonList>
				<span id="spanLink" runat="server">【<a href="javascript:void{}" onclick="javascript:window.open('PrintShopList.aspx','','width=600,height=450,resizable=0,scrollbars=yes');"><font
					color="Red">选择关联商品</font></a>】</span><asp:HiddenField ID="hfShopID" runat="server" />
			</td>
		</tr>
	</tbody>
	<tbody class="tdbg">
		<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td style="width: 20%" class="tdbgleft">
				图片缩放
			</td>
			<td align="left">
				<asp:TextBox ID="txtBL" class="l_input" runat="server" MaxLength="3" onkeyup="this.value=this.value.replace(/\D/g,'')"
					Width="50px"></asp:TextBox>%
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入图片缩放比例"
					ControlToValidate="txtBL"></asp:RequiredFieldValidator><strong style="color: Red"> 图片缩放比例按照%值计算,即：原图大小则是100%</strong>
			</td>
		</tr>
	</tbody>
	<tbody class="tdbg">
		<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td style="width: 20%" class="tdbgleft">
				类型模板
				<br /><br />
				<font color="red">该模板的显示尺寸为<br />600*400</font>
			</td>
			<td align="left">
				底层图片：<br />
				<asp:TextBox ID="txtImg" class="l_input" runat="server" Width="300px" /><iframe id="Iframe12" style="top: 2px"
					src="../Common/FlashUpImg.aspx?CID=Img&dir=" width="100%" height="25px" frameborder="0"
					marginheight="0" marginwidth="0" scrolling="no"></iframe>
				<br />
				遮罩层图片：<br />
				<asp:TextBox ID="txtMaskImg"  class="l_input" runat="server" Width="300px" />【<a href="javascript:void{};"
							onclick="CheckImg('single','Left')" style="color: Red">从遮罩库中提取</a>】<iframe style="top: 2px"
								src="../Common/FlashUpImg.aspx?CID=MaskImg&dir=m&type=single" width="100%" height="25px"
								frameborder="0" marginheight="0" marginwidth="0" scrolling="no" id="Iframe14"
								runat="server"></iframe>
			</td>
		</tr>
	</tbody>
	<asp:ScriptManager ID="ScriptManager1" runat="server">
	</asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<tbody class="tdbg" >
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td style="width: 20%" class="tdbgleft">
						是否显示多角度
					</td>
					<td align="left" colspan="2">
						<asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged"
							RepeatDirection="Horizontal">
							<asp:ListItem Value="1">是</asp:ListItem>
							<asp:ListItem Value="2" Selected="True">否</asp:ListItem>
						</asp:RadioButtonList>
					</td>
				</tr>
			</tbody>
			<tbody class="tdbg" id="TypeAngle" runat="server" visible="false">
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td style="width: 20%" class="tdbgleft">
						类型模板显示角度
					</td>
					<td align="left" colspan="2">
						<asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal"
							OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="True">
							<asp:ListItem Value="left">左面</asp:ListItem>
							<asp:ListItem Value="right">右面</asp:ListItem>
							<asp:ListItem Value="obverse">正面</asp:ListItem>
							<asp:ListItem Value="reverse">反面</asp:ListItem>
							<asp:ListItem Value="roof">顶面</asp:ListItem>
							<asp:ListItem Value="bottom">底面</asp:ListItem>
						</asp:CheckBoxList>
					</td>
				</tr>
			</tbody>
			<tbody class="tdbg" id="lefttd" visible="false" runat="server">
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td style="width: 20%" class="tdbgleft">
						类型模板左面图片<br /><br />
				<font color="red">该模板的显示尺寸为<br />200*200</font>
					</td>
					<td align="left">
						底层图片：<br />
						<asp:TextBox ID="txtLeftImg" class="l_input" runat="server" Width="300px" /><iframe id="Iframe1"
							style="top: 2px" src="../Common/FlashUpImg.aspx?CID=LeftImg&dir=" width="100%"
							height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
						<br />
						遮罩层图片：<br />
						<asp:TextBox ID="txtLeftMask" class="l_input" runat="server" Width="300px" />【<a href="javascript:void{};"
							onclick="CheckImg('single','Left')" style="color: Red">从遮罩库中提取</a>】<iframe style="top: 2px"
								src="../Common/FlashUpImg.aspx?CID=LeftMask&dir=m&type=single" width="100%" height="25px"
								frameborder="0" marginheight="0" marginwidth="0" scrolling="no" id="Iframe6"
								runat="server"></iframe>
					</td>
				</tr>
			</tbody>
			<tbody class="tdbg" id="righttd" visible="false" runat="server">
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td style="width: 20%" class="tdbgleft">
						类型模板右面图片<br /><br />
				<font color="red">该模板的显示尺寸为<br />200*200</font>
					</td>
					<td align="left">
						底层图片：<br />
						<asp:TextBox ID="txtRightImg" class="l_input" runat="server" Width="300px" /><iframe id="Iframe2"
							style="top: 2px" src="../Common/FlashUpImg.aspx?CID=RightImg&dir=" width="100%"
							height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
						<br />
						遮罩层图片：<br />
						<asp:TextBox ID="txtRightMask" class="l_input" runat="server" Width="300px" />【<a href="javascript:void{};"
							onclick="CheckImg('single','Right')" style="color: Red">从遮罩库中提取</a>】<iframe style="top: 2px"
								src="../Common/FlashUpImg.aspx?CID=RightMask&dir=m&type=single" width="100%"
								height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"
								id="Iframe7" runat="server"></iframe>
					</td>
				</tr>
			</tbody>
			<tbody class="tdbg" id="obversetd" visible="false" runat="server">
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td style="width: 20%" class="tdbgleft">
						类型模板正面图片<br /><br />
				<font color="red">该模板的显示尺寸为<br />200*200</font>
					</td>
					<td align="left">
						底层图片：<br />
						<asp:TextBox ID="txtObverseImg" runat="server"  class="l_input" Width="300px" /><iframe id="Clearimgs"
							style="top: 2px" src="../Common/FlashUpImg.aspx?CID=ObverseImg&dir=" width="100%"
							height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
						<br />
						遮罩层图片：<br />
						<asp:TextBox ID="txtObverseMask" class="l_input" runat="server" Width="300px" />【<a href="javascript:void{};"
							onclick="CheckImg('single','Obverse')" style="color: Red">从遮罩库中提取</a>】<iframe style="top: 2px"
								src="../Common/FlashUpImg.aspx?CID=ObverseMask&dir=m&type=single" width="100%"
								height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"
								id="Iframe8" runat="server"></iframe>
					</td>
				</tr>
			</tbody>
			<tbody class="tdbg" id="reversetd" visible="false" runat="server">
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td style="width: 20%" class="tdbgleft">
						类型模板反面图片<br /><br />
				<font color="red">该模板的显示尺寸为<br />200*200</font>
					</td>
					<td align="left" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						底层图片：<br />
						<asp:TextBox ID="txtReverseImg" class="l_input" runat="server" Width="300px" /><iframe id="Iframe3"
							style="top: 2px" src="../Common/FlashUpImg.aspx?CID=ReverseImg&dir=" width="100%"
							height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
						<br />
						遮罩层图片：<br />
						<asp:TextBox ID="txtReverseMask"  class="l_input" runat="server" Width="300px" />【<a href="javascript:void{};"
							onclick="CheckImg('single','Reverse')" style="color: Red">从遮罩库中提取</a>】<iframe style="top: 2px"
								src="../Common/FlashUpImg.aspx?CID=ReverseMask&dir=m&type=single" width="100%"
								height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"
								id="Iframe9" runat="server"></iframe>
					</td>
				</tr>
			</tbody>
			<tbody class="tdbg" id="rooftd" visible="false" runat="server">
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td style="width: 20%" class="tdbgleft">
						类型模板顶部图片<br /><br />
				<font color="red">该模板的显示尺寸为<br />200*200</font>
					</td>
					<td align="left">
						底层图片：<br />
						<asp:TextBox ID="txtRoofImg"  class="l_input" runat="server" Width="300px" /><iframe id="Iframe4"
							style="top: 2px" src="../Common/FlashUpImg.aspx?CID=RoofImg&dir=" width="100%"
							height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
						<br />
						遮罩层图片：<br />
						<asp:TextBox ID="txtRoofMask" class="l_input" runat="server" Width="300px" />【<a href="javascript:void{};"
							onclick="CheckImg('single','Roof')" style="color: Red">从遮罩库中提取</a>】<iframe style="top: 2px"
								src="../Common/FlashUpImg.aspx?CID=RoofMask&dir=m&type=single" width="100%" height="25px"
								frameborder="0" marginheight="0" marginwidth="0" scrolling="no" id="Iframe10" runat="server"></iframe>
					</td>
				</tr>
			</tbody>
			<tbody class="tdbg" id="bottomtd" visible="false" runat="server">
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td style="width: 20%" class="tdbgleft">
						类型模板底部图片<br /><br />
				<font color="red">该模板的显示尺寸为<br />200*200</font>
					</td>
					<td align="left">
						底层图片：<br />
						<asp:TextBox ID="txtBottomImg" class="l_input" runat="server" Width="300px" /><iframe id="Iframe5"
							style="top: 2px" src="../Common/FlashUpImg.aspx?CID=BottomImg&dir=" width="100%"
							height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
						<br />
						遮罩层图片：<br />
						<asp:TextBox ID="txtBottomMask"  class="l_input" runat="server" Width="300px" />【<a href="javascript:void{};"
							onclick="CheckImg('single','Bottom')" style="color: Red">从遮罩库中提取</a>】<iframe style="top: 2px"
								src="../Common/FlashUpImg.aspx?CID=BottomMask&dir=m&type=single" width="100%"
								height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" id="Iframe11" runat="server"></iframe>
					</td>
				</tr>
			</tbody>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
				<td style="width: 20%" class="tdbgleft">
					使用遮罩
				</td>
				<td align="left">
					<asp:CheckBox ID="CheckBox1" Text="使用多遮罩库" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
				</td>
			</tr>
			<tbody class="tdbg" id="tdMask" runat="server" visible="false">
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td class="tdbgleft">
					</td>
					<td align="left" valign="top">
						<asp:TextBox ID="txtMask" class="l_input"  runat="server" Width="300px" />【<a href="javascript:void{};"
							onclick="CheckImg('multi','')" style="color: Red">从遮罩库中提取</a>】<iframe style="top: 2px" src="../Common/FlashUpImg.aspx?CID=Mask&dir=m" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
					</td>
				</tr>
			</tbody>
		</ContentTemplate>
	</asp:UpdatePanel>
	<tr class="tdbgbottom">
		<td colspan="2">
			<asp:Button ID="EBtnSubmit" style="width:110px;"  class="C_input" Text="添加类型模板" runat="server" OnClick="EBtnSubmit_Click" />
			&nbsp;
			<input id="BtnBack" class="C_input" type="button" style="width:110px;"  value="返　回" onclick="javascript:location.href='Print_Type.aspx'" />
		</td>
	</tr>
</table>
</form>
</body>
</html>