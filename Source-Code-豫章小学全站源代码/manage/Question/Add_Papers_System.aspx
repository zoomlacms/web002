<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_Add_Papers_System, App_Web_o4pcw2mi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>编辑试卷信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../Common/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
<script src="/ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/kindeditor/kindeditor.js"></script>
</head>
<body>
   
    <form id="form1" runat="server">
    <div class="r_navigation">
        <div class="r_n_pic">
        </div>
        <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt;<a href="Papers_System_Manage.aspx">组卷管理</a>
        &gt;&gt;<span> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
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
                    <asp:Label ID="ssjd_txt" runat="server" Text="试卷名称："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtPaperName" runat="server" class="l_input"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="试卷不能为空!" ControlToValidate="txtPaperName"></asp:RequiredFieldValidator>
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
                </td>
            </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
               <asp:Button ID="EBtnSubmit" class="C_input" Text="保存试卷" OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" OnClick="BtnBack_Click" UseSubmitBehavior="False" CausesValidation="False" />
            </td>
        </tr>
    </table>
    </form>
   
</body>
</html>
