<%@ page language="C#" autoeventwireup="true" inherits="manage_Microblog_AddTheme, App_Web_hihf5f3l" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加话题</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
 <form id="form1" runat="server">
<div class="r_navigation">

<span>后台管理</span> &gt;&gt; <span>微博管理</span> &gt;&gt; <span><a href="ThemeManage.aspx">话题管理</a></span>
    &gt;&gt;<span><asp:Label ID="lbltitle" runat="server" Text="新增话题"></asp:Label></span></div>
<div class="clearbox"></div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr>
        <td class="spacingtitle" colspan="2" align="center">
            <asp:Literal ID="LTitle" runat="server" Text="添加话题"></asp:Literal>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" width="30%" class="tdbgleft"><strong>微博话题：</strong></td>
        <td> <asp:TextBox ID="txtTheme" runat="server" class="l_input" Width="214px" Height="20px"></asp:TextBox><font color="red">*</font>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="微博话题不能为空！"  ControlToValidate="txtTheme"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" width="30%" class="tdbgleft"><strong>微博副标题：</strong></td>
        <td> <asp:TextBox ID="txtTitle" runat="server" class="l_input" Width="214px" Height="20px"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg">
        <td align="center" class="tdbgleft" style="height: 26px"><strong>所属分类：</strong></td>
        <td style="height: 26px;">
            <asp:DropDownList ID="ddclass" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="分类不能为空！"  ControlToValidate="ddclass"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg">
        <td align="center" class="tdbgleft" style="height: 26px"><strong>上传图片：</strong></td>
        <td style="height: 26px;">
              <asp:FileUpload ID="FileUpload1" runat="server" onkeydown="event.returnValue=false;" onpaste="return false" />
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" class="tdbgleft"><strong>是否启用：</strong></td>
        <td><asp:RadioButtonList ID="rbisUse" runat="server" RepeatDirection="Horizontal">
               <asp:ListItem Value="0" Selected="True">启用</asp:ListItem><asp:ListItem Value="1">停用</asp:ListItem></asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" class="tdbgleft"><strong>话题属性：</strong></td>
        <td><asp:CheckBox ID="cbRecommon" runat="server" Text="推荐" />&nbsp;&nbsp;<asp:CheckBox ID="cbHot" runat="server" Text="热门" /></td>
    </tr>
    <tr>
        <td colspan="2" align="center" style="height: 59px">
            <asp:HiddenField ID="hfid" runat="server" />
            <asp:Button ID="EBtnSubmit" class="C_input" Text="新增话题" runat="server" OnClick="EBtnSubmit_Click" />
            <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='ThemeManage.aspx'" id="Button2" />
        </td>
    </tr>
</table>
</form>
</body>
</html>
