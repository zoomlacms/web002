<%@ page language="C#" autoeventwireup="true" inherits="manage_Page_AddStyle, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加风格</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span></span>企业黄页 &gt;&gt; <span><a href="PageStyle.aspx">
            黄页风格管理</a> &gt;&gt; <span>
                <asp:Label ID="Label1" runat="server" Text="添加风格"></asp:Label></span></span></div>
    <div class="clearbox"></div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg"><td colspan="2" align="center" class="title"><span><asp:Literal ID="txtTitle" runat="server"></asp:Literal></span></td></tr>
            <tr class="tdbg" id="1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td width="26%" height="24" align="left" class="tdbgleft"><strong>风格名称：</strong><br /></td>
                <td width="74%" align="left">
                    <asp:TextBox ID="Stylename" class="l_input" runat="server" Width="259px"></asp:TextBox><font color="red">*
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Stylename" ErrorMessage="风格名称不能为空!"></asp:RequiredFieldValidator></font></td>
            </tr>
            <tr class="tdbg" id="Tr2" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="24" align="left" class="tdbgleft"><b>风格路径：</b></td>
                <td align="left">
                    <asp:TextBox ID="StyleUrl" class="l_input" runat="server" Width="259px"></asp:TextBox>
                    &nbsp;<a href="javascript:void(0);" onclick="WinOpenDialog('../Template/TemplateListForld.aspx?OpenerText='+escape('StyleUrl')+'&FilesDir=',650,480)">浏览</a>&nbsp;<font color="red">*
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="StyleUrl" ErrorMessage="风格路径不能为空!"></asp:RequiredFieldValidator></font></td>
            </tr>
            <tr class="tdbg" id="Tr4" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="24" align="left" class="tdbgleft"><b>首页默认模板：</b></td>
                <td align="left">
                    <asp:TextBox ID="DefaultTemplate" class="l_input" runat="server" Width="259px"></asp:TextBox>
                    &nbsp;<a href="javascript:void(0);" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('DefaultTemplate')+'&FilesDir=',650,480)">浏览</a>&nbsp;<font color="red">*
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="StyleUrl" ErrorMessage="风格路径不能为空!"></asp:RequiredFieldValidator></font>
                </td>
            </tr>
            <tr class="tdbg" id="Tr5" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="24" align="left" class="tdbgleft"><b>节点默认模板：</b></td>
                <td align="left">
                    <asp:TextBox ID="NodeTemplate" class="l_input" runat="server" Width="259px"></asp:TextBox>
                    &nbsp;<a href="javascript:void(0);" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('NodeTemplate')+'&FilesDir=',650,480)">浏览</a>&nbsp;<font color="red">*
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="StyleUrl" ErrorMessage="风格路径不能为空!"></asp:RequiredFieldValidator></font>
                </td>
            </tr>
            <tr class="tdbg" id="Tr1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="24" align="left" class="tdbgleft"><b>是否为默认：</b></td>
                <td align="left"><asp:CheckBox ID="IsDefault" runat="server" Text="默认" /></td>
            </tr>
            <tr class="tdbg" id="Tr3" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="24" align="left" class="tdbgleft"><b>缩略图：</b></td>
                <td align="left">
                    <asp:TextBox ID="ShowImg" class="l_input" runat="server" Width="259px"></asp:TextBox>
                    <font color="red">*
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ShowImg" ErrorMessage="缩略图不能为空!"></asp:RequiredFieldValidator></font>
                    <iframe id="bigimgs" style="top: 2px" src="../shop/fileupload.aspx?menu=ShowImg" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                </td>
            </tr>
            <tr class="tdbg" id="Tr6" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft"><b>模板框架样式：</b></td>
                <td align="left"><textarea id="Css" runat="server" cols="50" rows="5"></textarea></td>
            </tr>
            <tr class="tdbg" id="Tr18">
                <td height="24" colspan="2" align="center">
                    <asp:HiddenField ID="lblid" runat="server" />
                    <asp:Button ID="Button1" class="C_input" runat="server" Text="添加样式" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" class="C_input" runat="server" Text="取消添加" OnClick="Button2_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>