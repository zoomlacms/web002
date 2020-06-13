<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_AddSchool, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>学校信息管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt; <span>SNS空间管理</span> &gt;&gt; <span>添加学校信息</span>
	</div>
	<div class="clearbox"></div>
    <table class="border" cellspacing="1" cellpadding="0" width="100%" border="0" align="center">
            <tr class="gridtitle" align="center" style="height:25px;">
	             <td height="26" colspan="2"><strong>
                     <asp:Label ID="Label1" runat="server" Text="添加学校信息"></asp:Label></strong></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" height="24" align="center" class="tdbgleft"><strong>学校名称</strong></td>
                  <td width="69%" height="24">
                      <asp:TextBox ID="txtSchoolName" class="l_input" runat="server" Width="340px"></asp:TextBox>
                      <span style="color:Red">*</span>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSchoolName"
                          Display="Dynamic" ErrorMessage="学校名称不能为空!"></asp:RequiredFieldValidator></td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" align="center" class="tdbgleft" style="height: 24px"><strong>所属国家</strong></td>
                  <td width="69%" style="height: 24px"><asp:DropDownList ID="txtCountry" runat="server" AutoPostBack="True">
                  </asp:DropDownList>
                      <span style="color:Red">*</span>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCountry"
                          ErrorMessage="所属国家不能为空!"></asp:RequiredFieldValidator></td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" align="center" class="tdbgleft" style="height: 24px"><strong>所属省份</strong></td>
                  <td width="69%" style="height: 24px">
                      <asp:TextBox ID="txtProvince" class="l_input" runat="server" Width="108px"></asp:TextBox>
                      <asp:DropDownList ID="Province2" runat="server" AutoPostBack="True">
                  </asp:DropDownList> <span style="color:Red">*</span> 
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProvince"
                          ErrorMessage="省份不能为空!"></asp:RequiredFieldValidator></td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" height="24" align="center" class="tdbgleft"><strong>学校类型</strong></td>
                  <td width="69%" height="24">
                      <asp:DropDownList ID="txtSchoolType" runat="server">
                          <asp:ListItem Value="1">小学</asp:ListItem>
                          <asp:ListItem Value="2">中学</asp:ListItem>
                          <asp:ListItem Value="3">大学</asp:ListItem>
                          <asp:ListItem Value="4">其他</asp:ListItem>
                      </asp:DropDownList></td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" height="24" align="center" class="tdbgleft"><strong>学校性质</strong></td>
                  <td width="69%" height="24">
                      <asp:DropDownList ID="txtVisage" runat="server">
                          <asp:ListItem Value="1">公办</asp:ListItem>
                          <asp:ListItem Value="2">私立</asp:ListItem>
                      </asp:DropDownList></td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" align="center" class="tdbgleft" style="height: 55px"><strong>学校信息</strong></td>
                  <td width="69%" style="height: 55px">
              <asp:TextBox ID="txtSchoolInfo" class="l_input" runat="server" Height="148px" Width="451px"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
                <td colspan="2" align="center" class="tdbg" style="height: 53px">
                    &nbsp;<asp:HiddenField ID="txtID" runat="server" />
                    <asp:Button ID="Button1" class="C_input"  runat="server" Text="确认添加" Height="25px" Width="72px" OnClick="Button1_Click" />
                  <asp:Button ID="Button2" class="C_input"  runat="server" Text="取消返回" Height="25px" Width="72px" OnClientClick="location.href='SnsSchool.aspx';return false;" /></td>
            </tr>
      </table>
</form>
</body>
</html>
