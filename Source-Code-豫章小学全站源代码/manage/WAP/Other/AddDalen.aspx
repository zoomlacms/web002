<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_Other_AddDalen, App_Web_zuybre3k" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>编辑图片</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>Wap管理</span> &gt;&gt;<a href="Dalen_School.aspx">校园达人</a>
        &gt;&gt;<span>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="ssjd_txt" runat="server" Text="名称："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:TextBox ID="txtName" runat="server" class="l_input" ></asp:TextBox>
                 名称只能以数字,字母或下划线组成<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="名称不能为空!"
                    ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="请输入正确的格式!" 
                    ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg">
              <td class="tdbgleft" style="width: 20%" align="right">达人图片：</td>
                <td valign="top" class="bqright">
                <asp:Image ID="img" runat="server" Width="100px" Height="50px" /> &nbsp;
                    <asp:FileUpload ID="FupFile" runat="server" CssClass="l_input" />
                <asp:HiddenField ID="HdnType" runat="server" />
                </td>
            </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存达人" OnClick="BtnUpload_Click"
                    runat="server" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返　回" OnClick="BtnBack_Click"
                    UseSubmitBehavior="False" CausesValidation="False" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>