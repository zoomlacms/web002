<%@ page language="C#" autoeventwireup="true" inherits="manage_Boss_EditBoss, App_Web_akeaiuth" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加栏目节点</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../JS/Common.js" type="text/javascript"></script>
<script language="JavaScript" type="text/JavaScript">
var tID=0;
var arrTabTitle = new Array("TabTitle0","TabTitle1","TabTitle2","TabTitle3","TabTitle4","TabTitle5");
var arrTabs = new Array("Tabs0","Tabs1","Tabs2","Tabs3","Tabs4","Tabs5");
function ShowTabs(ID)
{
	if(ID!=tID)
	{
		document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
		document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
		document.getElementById(arrTabs[tID].toString()).style.display = "none";
		document.getElementById(arrTabs[ID].toString()).style.display = "";
		tID=ID;
	}
}
function showCustom(value)
{            
	var index=parseInt(value);
	
	for(i=2; i <= 20; i++)
	{
		if(i<=index)
			document.getElementById("Custom"+i).style.display = "";
		else
			document.getElementById("Custom"+i).style.display = "none";
	}
	
}
</script>
<style type="text/css">
.style1
{
	background: #e0f7e5;
	line-height: 120%;
	width: 288px;
	height: 40px;
}
.style2
{
	height: 40px;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理</span>&gt;&gt;加盟商&gt;&gt;<span>添加</span>加盟商</div>
<div class="clearbox"></div>    
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr align="center">
	<td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
		企业信息</td>
	<td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
		银行账户信息</td>
	<td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
		联系人信息</td>
	<td id="TabTitle3"  >
	   &nbsp;</td>
	<td id="TabTitle4">
		&nbsp;</td>
	<td  >
		&nbsp;</td>
	<td>
		&nbsp;</td>
</tr>
</table>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
<tr class="tdbg">
	<td valign="top" style="margin-top: 0px; margin-left: 0px;">
 
					<asp:HiddenField ID="HdnParentId" Value="0" runat="server" />
					<asp:HiddenField ID="HdnDepth" Value="0" runat="server" />
					<asp:HiddenField ID="HdnOrderID" Value="0" runat="server" />
				<asp:HiddenField ID="HdnMenu" Value="0" runat="server" />
	<table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
		<tbody id="Tabs0">          
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>栏目名称：</strong></td>
				<td>
				   <asp:Label ID="LblNodeName" runat="server" Text=""></asp:Label>
				   </td>
			</tr>
		   
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>地区：</strong>
					</td>
				<td>
				   <asp:DropDownList ID="ddlProvince"  Width="100px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvince_SelectedIndexChanged" >
				</asp:DropDownList> &nbsp;<asp:DropDownList ID="ddlCity" Width="100px" runat="server" >
				</asp:DropDownList></td>
			</tr>
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>代理商级别：</strong></td>
				<td>
					<asp:RadioButtonList ID="tx_ShopType" runat="server" RepeatColumns="2">
						<asp:ListItem Value="1" Selected="True">市服务中心</asp:ListItem>
						<asp:ListItem Value="2">服务E店</asp:ListItem>
					</asp:RadioButtonList>
				</td>
			</tr>
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>代理商名称：</strong> <span style="color:Red;">*</span>
					</td>
				<td>
					<asp:TextBox ID="tx_cname" runat="server" Width="200px"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
						ControlToValidate="tx_cname" ErrorMessage="此项不能为空"></asp:RequiredFieldValidator>
				</td>
			</tr>
			  <tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>代理商费用：</strong>
					</td>
				<td>
					<asp:TextBox ID="CMoney" runat="server" Width="150px"></asp:TextBox>元
					   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
						ControlToValidate="CMoney" ErrorMessage="此项不能为空"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
						ErrorMessage="此项必须为数字" ValidationExpression="^(\d*)([.]{0,1})(\d{0,5})$" 
						ControlToValidate="CMoney"></asp:RegularExpressionValidator>
				</td>
			</tr>
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>代理商地址：</strong>
					</td>
				<td>
					<asp:TextBox ID="tx_adderss" runat="server" Width="400px"></asp:TextBox>
				</td>
			</tr>
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>法定代理人：</strong></td>
				<td>

				  <asp:TextBox ID="cx_Agent" runat="server" Width="200px"></asp:TextBox>
				</td>
			</tr>
			   <tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>营业执照：</strong></td>
				<td>

				
					   <asp:TextBox ID="cx_license" runat="server" Width="200px"></asp:TextBox>
				</td>
			</tr>
			
			   <tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>代理商电话：</strong></td>
				<td>
				  <asp:TextBox ID="tx_CTel" runat="server" Width="200px"></asp:TextBox>
				</td>
			</tr>
			  <tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>公司介绍：</strong></td>
				<td>
					<asp:TextBox ID="tx_CInfo" runat="server" Height="65" Width="500" Columns="60"
						Rows="4" TextMode="MultiLine"></asp:TextBox>
						
						
				</td>
			</tr>
		</tbody>
		<%--栏目选项--%>
		<tbody id="Tabs1" style="display: none">
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>合同协议号：<span style="color:Red;">*</span></strong></td>
				<td>
					 <asp:TextBox ID="ContractNum" runat="server" Width="200px"></asp:TextBox>   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
						ControlToValidate="ContractNum" ErrorMessage="此项不能为空"></asp:RequiredFieldValidator></td>
			</tr>
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>开户人：<span style="color:Red;">*</span> </strong></td>
				<td>
					 <asp:TextBox ID="AccountPeople" runat="server" Width="200px"></asp:TextBox>   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
						ControlToValidate="AccountPeople" ErrorMessage="此项不能为空"></asp:RequiredFieldValidator></td>
			</tr>
			<tr class="tdbg">
				<td style="width: 288px;" class="tdbgleft">
					<strong>开户银行1：</strong>
				   <span style="color:Red;">* </span> </td>
				<td>
					 <asp:TextBox ID="Bank" runat="server" Width="200px"></asp:TextBox>   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
						ControlToValidate="Bank" ErrorMessage="此项不能为空"></asp:RequiredFieldValidator></td>
			</tr>
			<tr class="tdbg">
				<td class="style1">
					<strong>银行账号1：<span style="color:Red;">*</span> </strong></td>
				<td class="style2">  <asp:TextBox ID="BankNum" runat="server" Width="300px"></asp:TextBox>   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
						ControlToValidate="BankNum" ErrorMessage="此项不能为空"></asp:RequiredFieldValidator></td>
			</tr>                        
		   <tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>开户人：</strong></td>
				<td>
				   <asp:TextBox ID="AccountPeople2" runat="server" Width="200px"></asp:TextBox></td>
			</tr>
			<tr class="tdbg">
				<td style="width: 288px;" class="tdbgleft">
					<strong>开户银行1：</strong>
				</td>
				<td>
					  <asp:TextBox ID="Bank2" runat="server" Width="200px"></asp:TextBox></td>
			</tr>
			<tr class="tdbg">
				<td class="style1">
					<strong>银行账号1：</strong></td>
				<td class="style2">  <asp:TextBox ID="BankNum2" runat="server" Width="300px"></asp:TextBox></td>
			</tr>                  
		</tbody>
		<%--收费设置--%>
		<tbody id="Tabs2" style="display: none">
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>联系人姓名：</strong><br />
				  
				</td>
				<td>
				   <asp:TextBox ID="linkname" runat="server" Width="200px"></asp:TextBox>
				</td>
			</tr>
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>性别：</strong><br />
				
				</td>
				<td>
					<asp:RadioButtonList ID="linksex" runat="server" RepeatColumns="2">
						<asp:ListItem Selected="True">男</asp:ListItem>
						<asp:ListItem>女</asp:ListItem>
					</asp:RadioButtonList>
				</td>
				
			</tr>
			<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>联系人职务：</strong><br />
				 
				</td>
				<td>
				  <asp:TextBox ID="linkPositions" runat="server" Width="200px"></asp:TextBox>
				</td>
			</tr>
				 <tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>联系电话：</strong><br />
				 
				</td>
				<td>
				   <asp:TextBox ID="linktel" runat="server" Width="200px"></asp:TextBox>
				</td>
			</tr>
				 <tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>传真：</strong><br />
				 
				</td>
				<td>
					<asp:TextBox ID="fax" runat="server" Width="200px"></asp:TextBox>
				</td>
			</tr>
				 <tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>邮编：</strong><br />
				 
				</td>
				<td>
					<asp:TextBox ID="PostCode" runat="server" Width="200px"></asp:TextBox>
				</td>
			</tr>
				<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>email：</strong><br />
				 
				</td>
				<td>
					<asp:TextBox ID="email" runat="server" Width="200px"></asp:TextBox>
				</td>
			</tr>
				<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>证件类型：<span style="color:Red;">*</span> </strong><br />
				 
				</td>
				<td>
					<asp:TextBox ID="Documents" runat="server" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
						ControlToValidate="Documents" ErrorMessage="此项不能为空"></asp:RequiredFieldValidator>
				</td>
			</tr>
				<tr class="tdbg">
				<td style="width: 288px" class="tdbgleft">
					<strong>证件号：<span style="color:Red;">*</span> </strong><br />
				 
				</td>
				<td>
				   <asp:TextBox ID="DocumentsNUm" runat="server" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
						ControlToValidate="DocumentsNUm" ErrorMessage="此项不能为空"></asp:RequiredFieldValidator>
				</td>
			</tr>
		</tbody>
		<%--模板选项--%>
	
	   
   
   
	</table>
	</td>
</tr>        
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td align="center">                
		&nbsp; &nbsp;
		<asp:Button ID="EBtnSubmit" Text="修改" runat="server" 
			onclick="EBtnSubmit_Click" />&nbsp; &nbsp;
		<input name="Cancel" type="button" class="inputbutton" id="BtnCancel" value="取消" onclick="window.location.href='Bosstree.aspx'" />                
	</td>
</tr>
</table>
</form>
</body>
</html>