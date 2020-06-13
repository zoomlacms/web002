<%@ page language="C#" autoeventwireup="true" inherits="manage_File_FtpConfig, App_Web_lz1ef1my" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>远程文件配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../JS/jquery.js"></script>
<script type="text/javascript">
function CheckName() {
    $.ajax({
        url: "FtpConfig.aspx",
        data: "action=CheckName&Alias=" + $("#Alias").val() + "&ID=" + $("#FTPID").val(),
        success: function (msg) {
            switch (msg) {
                case "1": $("#checkName").css("display", "");
                    $("#Button2").attr("disabled", "disabled");
                    break;
                case "0": $("#checkName").css("display", "none");
                    $("#Button2").attr("disabled", "");
                    break;
            }
        }
    });
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        后台管理&gt;&gt;文件管理&gt;&gt;<a href="FtpAll.aspx">云端存储</a>&gt;&gt;添加云端服务器</div>
    <div>
        <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
            <tr>
                <td class="spacingtitle" colspan="2" style="height: 26px; text-align: center;">
                    <strong>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="style1">
                    远程服务器名：
                </td>
                <td>
                    <input id="Alias" runat="server" class="l_input" onblur="CheckName()" />&nbsp;&nbsp;*不可重名
                    <span id="checkName" style="color: red; display: none;">重名了</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="style1">
                    IP地址：
                </td>
                <td>
                    <asp:TextBox ID="txt_fs" runat="server" CssClass="l_input" Text="u.zoomla.cn"></asp:TextBox>&nbsp;&nbsp;可以是别名，如u.zoomla.cn
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="style1">
                    访问路径：
                </td>
                <td>
                    <asp:TextBox ID="txt_url" runat="server" CssClass="l_input" Text="u.zoomla.cn"></asp:TextBox>
                    &nbsp;&nbsp;<span class="red"><a href="http://www.zoomla.cn/u.html" target="_blank">免费申请云存储</a></span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="style1">
                    端口：
                </td>
                <td>
                    <asp:TextBox ID="txt_pt" runat="server" CssClass="l_input" Text="21"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pt" ErrorMessage="请输入端口号默认21" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="style1">
                    用 户 名：
                </td>
                <td>
                    <asp:TextBox ID="txt_user" runat="server" CssClass="l_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_user" ErrorMessage="请输入用户名" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="style1">
                    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码：
                </td>
                <td>
                    <asp:TextBox ID="txt_pass" runat="server" CssClass="l_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_pass" ErrorMessage="请输入密码" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="style1">
                    存储路径：&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txt_file" runat="server" CssClass="l_input" Text="/"></asp:TextBox>
                    &nbsp;&nbsp;必须为/或/path形式
                    <asp:FileUpload ID="file_path" runat="server" CssClass="l_input" Visible="false" />
                    <asp:Button ID="Button3" runat="server" Text="测试服务器" CssClass="C_input" OnClick="Button3_Click" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_file" ErrorMessage="请输入远程文件路径" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" Text="添加存储" CssClass="C_input" OnClick="Button2_Click" />
        <input id="Button1" type="button" value="返回列表" class="C_input" onclick="javascript:history.back();" />
    </div>
    </form>
    <div style="display: none">
        <input type="text" id="FTPID" value="0" runat="server" />
    </div>
</body>
</html>