<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_AddQuestion_Knowledge, App_Web_o4pcw2mi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加知识点</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <div class="r_n_pic">
        </div>
        <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt;
        <asp:HyperLink ID="hlManage" runat="server">知识点管理</asp:HyperLink>
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
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" height="26px">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="ssjd_txt" runat="server" Text="知识点："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:TextBox ID="txtK_Name" runat="server" class="l_input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="知识点不能为空!"
                    ControlToValidate="txtK_Name"></asp:RequiredFieldValidator>
                <asp:HiddenField ID="hfC_Id" runat="server" Value="" />
            </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="zt_txt" runat="server" Text="所属类别："></asp:Label>
                &nbsp;
            </td>
            <td>
                <asp:DropDownList ID="ddlC_ClassId" runat="server">
                </asp:DropDownList>
                <asp:TextBox ID="txtClassId" runat="server" CssClass="l_input"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="hits_txt" runat="server" Text="排　　序："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:TextBox ID="txtK_OrderBy" class="l_input" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存知识点" OnClick="EBtnSubmit_Click"
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
