<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_OrderPri, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>快速订购</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style1	{height: 60px;}
</style>
</head>
<body>
<form id="form1" runat="server">
<table>
<tr><td align="center" colspan="2"><h1>快速订购</h1></td></tr>
<tr>
<td>
<table cellspacing="0" cellpadding="1" width="100%" style="border: 1px solid #CCCCFF;">
	<tr>
		<td style="height: 30px;" align="right">
			&nbsp;&nbsp;订花人姓名：
		</td>
		<td style="height: 30px;">
		<asp:TextBox ID="ordername2" runat="server"> </asp:TextBox>
			  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ordername2"
					Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
		</td>
		<td style="height: 30px;" align="right">
			电话：
		</td>
		<td>
		   <asp:TextBox ID="phonenumber" runat="server"></asp:TextBox>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="phonenumber"
					Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td style="height: 30px;" align="right">
			&nbsp;&nbsp;订花人性别：
		</td>
		<td>
			<asp:RadioButtonList ID="rdlSex" runat="server" RepeatDirection="Horizontal">
				<asp:ListItem Value="0" Selected="True">男</asp:ListItem>
				<asp:ListItem Value="1">女</asp:ListItem>
			</asp:RadioButtonList>
		</td>
		<td style="height: 30px;" align="right">
			手机：
		</td>
		<td>
		   <asp:TextBox ID="Mobile" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td style="height: 30px;" align="right">
			&nbsp;&nbsp;订花人地址：
		</td>
		<td height="20" colspan="3">
			<input id="address" size="70" name="address" runat="server" />
		</td>
	</tr>
</table>
</td>
<td> <table cellspacing="0" cellpadding="0" width="100%" style="border: 1px solid #CCCCFF;">
		<tr>
			<td style="height: 30px;" align="right">
				&nbsp;&nbsp;收花人姓名：
			</td>
			<td style="height: 30px;">
				<asp:TextBox ID="ordername" runat="server"></asp:TextBox>
				   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ordername"
					Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
			</td>
			<td style="height: 30px;" align="right">
				电话：
			</td>
			<td width="">
				<asp:TextBox ID="phone" runat="server"></asp:TextBox>
				  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="phone"
					Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td style="height: 30px;" align="right">
				&nbsp;&nbsp;收花人性别：
			</td>
			<td height="20">
				<asp:RadioButtonList ID="rblS" runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Value="0" Selected="True">男</asp:ListItem>
					<asp:ListItem Value="1">女</asp:ListItem>
				</asp:RadioButtonList>
			</td>
			<td style="height: 30px;" align="right">
				手机：
			</td>
			<td height="20">
			<asp:TextBox ID="BMbile" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td style="height: 30px;" align="right">
				&nbsp;&nbsp;收花人地址：
			</td>
			<td height="20" colspan="3">
				<asp:TextBox ID="floAdd" runat="server"  size="70" ></asp:TextBox>
			</td>
		</tr>
	</table> </td>
</tr>
<tr>
	<td colspan="2">
		<table width="100%">
			<tr>
				<td style="height: 60px;" align="center">
					详细描述您理想中的商品
				</td>
				<td>
					<textarea id="Remark" runat="server" rows="3" cols="100"></textarea>
				</td>
			</tr>
			<tr>
				<td style="height: 40px;" align="center">上传您理想的花束图片</td>
				<td><asp:FileUpload ID="FileUpload1" runat="server" onkeydown="event.returnValue=false;" onpaste="return false" /><span id="lblMessage" runat="server" style="color:Red"></span></td>
			</tr>
			<tr style="border-bottom: 1px solid #CCCCFF;">
				<td style="height: 40px;" align="center">
					价格范围
				</td>
				<td>
					<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr style="border-bottom: 1px solid #CCCCFF;">
				<td style="height: 50px;" align="center" width="20%">
					送花区域
				</td>
				<td class="shqu">
					<asp:RadioButtonList ID="rdb" runat="server" RepeatDirection="Horizontal">
						<asp:ListItem Value="0" Selected="True">市区送货（免费送货）</asp:ListItem>
						<asp:ListItem Value="1">近郊配送（+20元）</asp:ListItem>
						<asp:ListItem Value="2">远郊及乡镇配送（+40元）</asp:ListItem>
					</asp:RadioButtonList>
				   <p> * 边远乡镇及乡镇偏远地区送货费用请与我们客服咨询确定为准，如超过40元，需另行支付。</p>
				</td>
			</tr>
			<tr style="border-bottom: 1px solid #CCCCFF;">
				<td style="height: 40px;" align="center">
					送货日期
				</td>
				<td>
					<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr style="border-bottom: 1px solid #CCCCFF;">
				<td style="height: 40px;" align="center" width="20%">
					送花时段
				</td>
				<td>
				   <div style="width:52%;float:left"> <asp:RadioButtonList ID="rbtime" runat="server" RepeatDirection="Horizontal">
						<asp:ListItem Value="0" Selected="True">不限</asp:ListItem>
						<asp:ListItem Value="1">上午(8:30——12:00)</asp:ListItem>
						<asp:ListItem Value="2">下午(12:00-18:00)</asp:ListItem>
						<asp:ListItem Value="3">晚上(18:00-20:30)</asp:ListItem>
						<asp:ListItem Value="4">定点服务</asp:ListItem>
					</asp:RadioButtonList></div>
				 <div style="width:15%;float:left"><asp:TextBox ID="txtTime" runat="server"></asp:TextBox></div>
				   <div style="width:100%">送货日期/时段说明：(1)非节日：如果您选择了上午、下午或晚上，我们会尽力（但不承诺）在您要求的送货时段送达；<font color="#FF0000">重大节日（情人节、圣诞节等）只保证当天送达不接受定时服务;</font>(2)定点服务:加收20元,如果您需要“定时定点服务”,请选此项,并在后面的方框注明您的送达时间！</div>
				</td>
			</tr>
			<tr>
				<td style="height: 60px;" align="center">
					贺卡赠言
				</td>
				<td>
					<textarea id="zen" runat="server" rows="3" cols="100"></textarea>
				</td>
			</tr>
			<tr>
				<td align="center" class="style1">
					其他要求
				</td>
				<td class="style1">
					<textarea id="other" runat="server" rows="3" cols="100"></textarea>
				</td>
			</tr>
			<tr>
				<td align="center" class="style1">
					是否需要发票
				</td>
				<td>
					<select id="IsTic" runat="server" onchange="chan(this.value)">
						<option value="0" selected="selected">否</option>
						<option value="1">是</option>
					</select>
				</td>
			</tr>
			<tbody id="youji" style="display:none">
				<tr align="center" class="style1"><td>是否需要邮寄：</td>
					<td align="left"><select id="IsMi" runat="server"><option value="是">是</option><option value="否" selected="selected">否</option></select><font color="red">邮寄需加20元</font></td>
				</tr>
			</tbody>
			<tr>
				<td style="height: 40px;" align="center">发票内容：</td>
				<td><asp:TextBox ID="txtf" runat="server" TextMode="MultiLine" Height="104px" 
						Width="723px"></asp:TextBox></td>
			</tr>
		</table>
		<script>
			function chan(obj) {
				if (obj == "1") {
					document.getElementById("youji").style.display = "";
				} else {
					document.getElementById("youji").style.display = "none";
				}
			}
		</script>
	</td>
</tr>
		<tr>
			<td style="height: 30px;" colspan="4" align="center">
			<asp:Button ID="btn" Text='提交订单' runat="server" style="width: 60px; height: 25px;" 
					onclick="btn_Click" />
			<input type="reset" value="重置" style="width: 60px; height: 25px;" />
			</td>
		</tr>
</table>
</form>
</body>
</html>