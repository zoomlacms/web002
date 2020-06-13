<%@ page language="C#" autoeventwireup="true" inherits="manage_Microblog_AddClass, App_Web_hihf5f3l" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加分类</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
 <form id="form1" runat="server">
<div class="r_navigation">

<span>后台管理</span> &gt;&gt; <span>微博管理</span> &gt;&gt; <span><a href="ClassManage.aspx">分类管理</a></span>
    &gt;&gt;<span><asp:Label ID="lbltitle" runat="server" Text="新增分类"></asp:Label></span></div>
<div class="clearbox"></div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr>
        <td class="spacingtitle" colspan="2" align="center">
            <asp:Literal ID="LTitle" runat="server" Text="添加分类"></asp:Literal>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" width="30%" class="tdbgleft"><strong>分类名：</strong></td>
        <td> <asp:TextBox ID="txtTheme" runat="server" class="l_input" Width="214px" Height="20px"></asp:TextBox>*
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="分类名不能为空！"  ControlToValidate="txtTheme"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg">
        <td align="center" class="tdbgleft" style="height: 26px"><strong>所属分类：</strong></td>
        <td style="height: 26px;">
            <asp:DropDownList ID="ddclass" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="所属分类不能为空！"  ControlToValidate="ddclass"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center" style="height: 59px">
            <asp:HiddenField ID="hfid" runat="server" />
            <asp:Button ID="EBtnSubmit" class="C_input" Text="新增分类" runat="server" OnClick="EBtnSubmit_Click" />
            <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='ClassManage.aspx'" id="Button2" />
        </td>
    </tr>
</table>
</form>
</body>
</html>
