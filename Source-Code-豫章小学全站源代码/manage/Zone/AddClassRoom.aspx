<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_AddClassRoom, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>班级信息管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />  
</head>
<script language="javascript">
function SelectRule()
        {
            window.open('SchoolList.aspx','','width=600,height=450,resizable=0,scrollbars=yes');
        }
</script>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt; <span>SNS空间管理</span> &gt;&gt; 
        <asp:Label ID="Label2" runat="server"></asp:Label><span>添加班级信息</span>
	</div>
	<div class="clearbox"></div>
    <table class="border" cellspacing="1" cellpadding="0" width="100%" border="0" align="center">
            <tr class="gridtitle" align="center" style="height:25px;">
	             <td height="26" colspan="2"><strong>
                     <asp:Label ID="Label1" runat="server" Text="添加学校班级"></asp:Label></strong></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" height="24" align="center" class="tdbgleft"><strong>班级名称</strong></td>
                  <td width="69%" height="24">
                      <asp:TextBox ID="txtRoomName" class="l_input" runat="server" Width="304px"></asp:TextBox>
                      <span style="color:Red">*
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRoomName"
                              ErrorMessage="班级名称不能为空!"></asp:RequiredFieldValidator></span></td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" align="center" class="tdbgleft" style="height: 24px"><strong>所属学校</strong></td>
                  <td width="69%" style="height: 24px">
                      <asp:TextBox ID="txtSchoolName" class="l_input" runat="server" Width="304px" onclick="SelectRule();" ReadOnly="true"></asp:TextBox>
                      <span style="color:Red">*
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSchoolName"
                              ErrorMessage="所属学校不能为空!" Display="Dynamic"></asp:RequiredFieldValidator>
                          点击输入框进行选择学校</span></td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" align="center" class="tdbgleft" style="height: 24px"><strong>班主任</strong></td>
                  <td width="69%" style="height: 24px">
                      <asp:TextBox ID="txtTeacher" class="l_input" runat="server" Width="104px"></asp:TextBox>
                      <span style="color:Red">*
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTeacher"
                              ErrorMessage="请输入班主任名字"></asp:RequiredFieldValidator></span></td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" align="center" class="tdbgleft" style="height: 24px"><strong>副管理员</strong></td>
                  <td width="69%" style="height: 24px">
                      <asp:TextBox ID="txtAdviser" class="l_input" runat="server" Width="304px"></asp:TextBox>多个请用逗号 , 隔开</td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" align="center" class="tdbgleft" style="height: 24px"><strong>创建人(管理员)</strong></td>
                  <td width="69%" style="height: 24px">
                      <asp:TextBox ID="txtCreateUser" class="l_input" runat="server" Width="104px"></asp:TextBox>
                      创建人ID <span style="color:Red">*
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCreateUser"
                              ErrorMessage="请输入创建人用户ID"></asp:RequiredFieldValidator></span></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" height="24" align="center" class="tdbgleft"><strong>班长</strong></td>
                  <td width="69%" height="24">
                      <asp:TextBox ID="txtMonitor" class="l_input" runat="server" Width="104px"></asp:TextBox>
                      <span style="color:Red">*
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMonitor"
                              ErrorMessage="请输入班长名字"></asp:RequiredFieldValidator></span></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" height="24" align="center" class="tdbgleft"><strong>入学时间</strong></td>
                  <td width="69%" height="24">
                      <asp:TextBox ID="txtGrade" class="l_input" runat="server" Width="75px" MaxLength="4"></asp:TextBox>
                      年份 <span style="color:Red">*
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtGrade"
                              Display="Dynamic" ErrorMessage="请输入入学年份"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtGrade"
                              Display="Dynamic" ErrorMessage="格式不正确" ValidationExpression="(D-)?\d{4}"></asp:RegularExpressionValidator></span></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" height="24" align="center" class="tdbgleft"><strong>审核</strong></td>
                  <td width="69%" height="24">
                      <asp:RadioButtonList ID="txtIsTrue" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem Selected="True" Value="1">审核通过</asp:ListItem>
                          <asp:ListItem Value="0">取消审核</asp:ListItem>
                      </asp:RadioButtonList></td>
            </tr>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td width="31%" align="center" class="tdbgleft" style="height: 55px"><strong>班级介绍</strong></td>
                  <td width="69%" style="height: 55px">
                      <asp:TextBox ID="txtClassinfo" class="l_input" runat="server" Height="168px" Width="443px"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
                <td colspan="2" align="center" class="tdbg" style="height: 53px">
                    &nbsp;<asp:HiddenField ID="txtSchoolID" runat="server" />
                    <asp:HiddenField ID="txtRoomID" runat="server" />
                    <asp:Button ID="Button1" class="C_input" runat="server" Text="确认添加" Height="25px" Width="72px" OnClick="Button1_Click" />
                  <asp:Button ID="Button2" class="C_input" runat="server" Text="取消返回" Height="25px" Width="72px" OnClientClick="location.href='SnsSchool.aspx';return false;" /></td>
            </tr>
      </table>
</form>
</body>
</html>