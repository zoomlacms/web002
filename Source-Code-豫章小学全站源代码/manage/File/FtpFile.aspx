<%@ page language="C#" autoeventwireup="true" inherits="manage_File_FtpFile, App_Web_lz1ef1my" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>

<html>
<head runat="server">
<title>文件上传</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>文件管理</span> &gt;&gt; <span>FTP配置</span>
    </div>
    <div>
    <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
    <tr>
         <td class="spacingtitle" colspan="2" style="height: 26px; text-align:center;">
             <strong><asp:Label ID="Label1" runat="server" Text=""></asp:Label></strong>
         </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="left" class="style1">
        FTP服务器：
    </td>
    <td><asp:TextBox ID="txt_fs" runat="server" CssClass="l_input"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt_fs" ErrorMessage="请输入服务器名称" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="left" class="style1">
        FTP端口：
    </td>
    <td><asp:TextBox ID="txt_pt" runat="server" CssClass="l_input" Text="21"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_pt" ErrorMessage="请输入端口号默认21" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="left" class="style1">
        用 户 名：
    </td>
    <td><asp:TextBox ID="txt_user" runat="server" CssClass="l_input"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txt_user" ErrorMessage="请输入用户名" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="left" class="style1">
        密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码：&nbsp;  
        </td>
        <td>
        <asp:TextBox ID="txt_pass" runat="server" CssClass="l_input" Width="127px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txt_pass" ErrorMessage="请输入密码" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>

        <tr style="display:none" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" class="style1">
        超时时间(秒)：
        </td>
        <td>
        <asp:TextBox ID="txt_time" runat="server" CssClass="l_input" Width="127px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txt_time" ErrorMessage="请输入超时时间" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" class="style1">文件存放目录：&nbsp;</td> 
        <td>
            <asp:TextBox ID="txt_file" runat="server" CssClass="l_input" Width="127px"></asp:TextBox>
            <asp:FileUpload ID="file_path" runat="server" CssClass="l_input" Visible="true" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="file_path" ErrorMessage="请输入附件保存路径" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
     </tr>
    </table>
        <asp:Button ID="Button1" runat="server" Text="上传" onclick="Button1_Click" CssClass="C_input" />
        <asp:Button ID="Button2" runat="server" Text="Button" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
