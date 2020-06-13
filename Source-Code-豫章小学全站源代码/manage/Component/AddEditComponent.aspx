<%@ page language="C#" autoeventwireup="true" inherits="manage_Component_AddEditComponent, App_Web_vh0dja20" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>组件编辑</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理 </span>&gt;&gt;<span> 用户社区 </span>&gt;&gt; <span><a href="Component.aspx">组件列表 </a></span>&gt;&gt;<span><asp:Literal ID="Literal1" runat="server" Text="添加组件"></asp:Literal></span>
</div>
    <div class="clearbox"></div>    
    <table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr>
            <td class="spacingtitle" colspan="2" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="添加组件"></asp:Literal></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width:200px">
                <strong>标题：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtName" class="l_input" runat="server" Width="156" MaxLength="200" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtName">标题不能为空</asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>链接地址：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtUrl"  class="l_input" runat="server" Width="156" MaxLength="50" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtUrl">链接地址不能为空</asp:RequiredFieldValidator>
            </td>
         </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
            <td class="tdbgleft">
                <strong>图标地址：</strong><br />
                
            </td>
            <td>
                <asp:TextBox ID="txtIcon"  class="l_input" runat="server" Width="156" MaxLength="50" />推荐使用45px*45px大小<br />
               <%-- <iframe  frameborder="0" scrolling="no" src="UserUpload.aspx?fileID=Icon" style="width:300px; height:40px;"></iframe>--%>
            </td>
         </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:HiddenField ID="HdnModelId" runat="server" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button" class="C_input" id="Cancel" value="取消" onclick="location.href='Component.aspx'" />                
            </td>
        </tr>
    </table> 
</form>
</body>
</html>
