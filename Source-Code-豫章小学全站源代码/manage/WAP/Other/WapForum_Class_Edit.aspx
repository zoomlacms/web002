<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_Other_WapForum_Class_Edit, App_Web_zuybre3k" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>编辑版块</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>Wap管理</span> &gt;&gt;<a href="WapForum_Class.aspx">版块管理</a>
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
                <asp:Label ID="ssjd_txt" runat="server" Text="版块名称："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:TextBox ID="txtClassName" runat="server" class="l_input" ></asp:TextBox> 版块名称只能以数字,字母或下划线组成
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="版块不能为空!"
                    ControlToValidate="txtClassName"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtClassName" ErrorMessage="请输入正确的格式!" 
                    ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="zt_txt" runat="server" Text="所属版块："></asp:Label>
                &nbsp;
            </td>
            <td>
                <asp:DropDownList ID="ddlC_ClassId" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存版块" OnClick="EBtnSubmit_Click"
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
