<%@ page language="C#" autoeventwireup="true" inherits="User_Project_AddProjects, App_Web_ndk53ewn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>新建项目</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style2{	background: #e0f7e5;
	padding: 2px;
	width: 30%;
	height: 25px;}
.style3{	height: 25px;}
.style4{	background: #e0f7e5;
	padding: 2px;
	height: 22px;}
.style5{	height: 22px;}
.style6{	width: 766px;}
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置:<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="用户项目列表" href="ProjectList.aspx">用户项目列表</a>
</div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
		<tr class="spacingtitle" style="height:30px">
			<td align="center" colspan="2"><asp:Label ID="lblText" runat="server"></asp:Label></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td class="style2"><b>名称</b><br />项目的名称</td>
			<td class="style3"><asp:TextBox ID="TxtProjectName" runat="server" Width="300px" class="l_input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RV" runat="server" 
                    ControlToValidate="TxtProjectName" Display="Dynamic" ErrorMessage="*">项目名称不可为空</asp:RequiredFieldValidator>
            </td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td class="style4" > <b>项目类型</b><br />请选择项目类型</td>
			<td class="style5" > 
                <asp:DropDownList ID="DDList" runat="server" Width="126px"></asp:DropDownList>
			    <a href="ProjectsAddType.aspx">添加项目类型</a>
			</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td class="tdbgleft" style=" width: 282px;"><b>项目价格</b><br />完成此项目的价格</td>
			<td ><asp:TextBox ID="TxtProjectPrice" runat="server" class="l_input" Width="300px" ></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td class="tdbgleft" ><b>要求</b><br />项目需求说明</td>
			<td><asp:TextBox ID="TxtProjectRequire" runat="server" Width="398px" class="l_input" Height="68px" TextMode="MultiLine"></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td  class="tdbgleft" style=" width: 282px;"><b>姓名</b><br />申请人姓名</td>
			<td ><asp:TextBox ID="TxtUserName" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td class="tdbgleft"  ><b>单位</b><br />申请人的工作单位</td>
			<td class="style6" ><asp:TextBox ID="TxtUserCompany" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td  class="tdbgleft" ><b>联系电话</b><br />申请人的常用电话</td>
			<td style="width: 766px;"><asp:TextBox ID="TxtUserTel" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td class="tdbgleft" ><b>手机</b><br />申请人的手机号码</td>
			<td align="left" valign="middle"><asp:TextBox ID="TxtUserMobile" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td  class="tdbgleft" valign="top" ><b>QQ</b><br />申请人的QQ号码</td>
			<td ><asp:TextBox ID="TxtUserQQ" runat="server" Width="300px" class="l_input"></asp:TextBox> </td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td class="tdbgleft"  valign="top" ><b>MSN</b><br />申请人MSN号码</td>
			<td ><asp:TextBox ID="TxtUserMSN" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td  class="tdbgleft" ><b>联系地址</b><br />申请人的居住地址</td>
			<td style="width: 766px;">
           <asp:TextBox ID="TxtUserAddress" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td  class="tdbgleft" ><b>邮箱</b><br />申请人的电子邮箱地址</td>
			<td style="width: 766px;"><asp:TextBox ID="TxtUserEmail" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		<td><asp:Literal ID="lblHtml" runat="server"></asp:Literal></td>
	</table>
	<div class="clearbox"></div>
    <div style=" text-align:center">
        <asp:Button ID="Commit" runat="server" Text="提交" class="C_input"  onclick="Commit_Click"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Cancle" runat="server" Text="返回" class="C_input"  onclick="Cancle_Click" />
    </div>
    </form>
</body>
</html>