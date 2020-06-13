<%@ page language="C#" autoeventwireup="true" inherits="manage_User_JobsConfig, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>招聘模块配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form2" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 用户管理 &gt;&gt;<a href="JobsConfig.aspx">模块配置</a></div>
  <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tbody id="Tabss">
      <tr class="tdbg">
        <td width="100%" height="24" align="center" class="title" colspan="2"><asp:Label ID="Lbtitle" runat="server" Text="招聘模块配置"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="24" width="25%" align="left"> 启用模块：</td>
        <td height="24" width="75%" align="left"><asp:RadioButtonList ID="Isuse" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="1">启用</asp:ListItem>
            <asp:ListItem Value="0">停用</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="25%" align="left" height="24"> 个人会员组：</td>
        <td width="75%" align="left" height="24">&nbsp;
          <asp:DropDownList ID="userlist" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="25%" align="left" style="height: 24px"> 企业会员组：</td>
        <td width="75%" align="left" style="height: 24px">&nbsp;
          <asp:DropDownList ID="comlist" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="24" width="25%" align="left"> 个人会员简历模型：</td>
        <td height="24" width="75%" align="left">&nbsp;
          <asp:DropDownList ID="Resume" runat="server"> </asp:DropDownList>
          &nbsp;<font color="red">用于判断用户信息是否是简历</font></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="24" width="25%" align="left"> 企业信息模型：</td>
        <td height="24" width="75%" align="left">&nbsp;
          <asp:DropDownList ID="Company" runat="server" OnSelectedIndexChanged="Company_SelectedIndexChanged" AutoPostBack="True"> </asp:DropDownList>
          &nbsp;<font color="red">用于判断用户信息是否是企业信息</font></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="24" width="25%" align="left"> 企业信息显示字段：</td>
        <td height="24" width="75%" align="left">&nbsp;
          <asp:DropDownList ID="CompanyField" runat="server"> </asp:DropDownList>
          &nbsp;<font color="red">用于显示企业信息的名称</font></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="24" width="25%" align="left"> 招聘信息模型：</td>
        <td height="24" width="75%" align="left">&nbsp;
          <asp:DropDownList ID="CompanyJobs" runat="server" OnSelectedIndexChanged="CompanyJobs_SelectedIndexChanged" AutoPostBack="True"> </asp:DropDownList>
          &nbsp;<font color="red">用于判断用户信息是否是企业信息招聘信息</font></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="24" width="25%" align="left"> 招聘信息职位字段：</td>
        <td height="24" width="75%" align="left">&nbsp;
          <asp:DropDownList ID="JobsField" runat="server"> </asp:DropDownList>
          &nbsp;<font color="red">用于显示工作岗位名称显示</font></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="24" width="25%" align="left"> 企业会员查看简历消费点数：</td>
        <td height="24" width="75%" align="left"> 每次查看新的简历收费
          <asp:TextBox ID="TxtConsumePoint" runat="server" Columns="5" class="l_input">0</asp:TextBox>
          点(只在查看点数消费设置是消费点数时起作用) </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="24" width="25%" align="left"> 企业会员查看简历消费设置：</td>
        <td height="24" width="75%" align="left"><asp:RadioButtonList ID="ConsumeType" runat="server">
            <asp:ListItem Value="0" Selected="True">不启用消费</asp:ListItem>
            <asp:ListItem Value="1">使用点数查看简历</asp:ListItem>
            <asp:ListItem Value="2">在有效期内可以查看所有简历</asp:ListItem>
            <asp:ListItem Value="3">以上2种都启用</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td width="100%" align="center"colspan="2" style="height: 24px">&nbsp;
          <asp:Button ID="Button1" runat="server" Text="提　交" OnClick="Button1_Click" class="C_input"/></td>
      </tr>
    </tbody>
  </table>
</form>
</body>
</html>