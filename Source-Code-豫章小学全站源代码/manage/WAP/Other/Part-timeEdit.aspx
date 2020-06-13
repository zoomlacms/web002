<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_Other_Part_timeEdit, App_Web_zuybre3k" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>编辑兼职信息</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>Wap管理</span> &gt;&gt;<a href="Part-timeInfo.aspx">兼职信息管理</a>
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
                <asp:Label ID="ssjd_txt" runat="server" Text="标题："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:TextBox ID="txtName" runat="server" class="l_input" ></asp:TextBox>
                兼职信息名称只能以数字,字母或下划线组成<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="兼职信息不能为空!"
                    ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="请输入正确的格式!" 
                    ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="zt_txt" runat="server" Text="内容:"></asp:Label>
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtContent" runat="server" class="l_input" 
                    TextMode="MultiLine" Height="103px" Width="280px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="内容不能为空!"
                    ControlToValidate="txtContent"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存兼职信息" OnClick="EBtnSubmit_Click"
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

