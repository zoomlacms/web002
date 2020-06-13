<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.SurveyItem, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>问卷投票问题</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理&gt;&gt;<a href="SurveyManage.aspx">问卷投票管理</a>&gt;&gt;添加问卷投票问题</div>
  <table class="border" width="100%" cellpadding="2" cellspacing="1">
    <tr>
      <td class="spacingtitle" colspan="2" align="center"> 添加问卷投票问题:
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 35%"><strong>问题标题：</strong></td>
      <td><asp:TextBox ID="TxtQTitle" class="l_input" runat="server" Width="156" MaxLength="200" />
        <font color="red">*</font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtQTitle">问题标题不能为空</asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft"><strong>类型：</strong></td>
      <td><asp:RadioButtonList ID="RblTypeID" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Value="1" Selected="True">单选项</asp:ListItem>
          <asp:ListItem Value="2">复选项</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft">分行键入每个选项：</td>
      <td><asp:TextBox ID="RadioType_Content" class="l_input" runat="server" 
					TextMode="MultiLine" Columns="40" Rows="6" Height="68px"></asp:TextBox>
        <span style="color: red"> *</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RadioType_Content">选项不能为空</asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbgbottom">
      <td colspan="2"><asp:HiddenField ID="HdnSurveyID" runat="server" />
        <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" class="C_input" />
        &nbsp;&nbsp;
        <input name="Cancel" type="button"  id="Cancel" value="取消" onclick="window.location.href='SurveyManage.aspx';" class="C_input" /></td>
    </tr>
  </table>
</form>
</body>
</html>