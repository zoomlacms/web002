<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Page.EditContent, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加内容</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span> &gt;&gt; <span>企业黄页</span> &gt;&gt;<span> 编辑内容</span>
</div>
<div class="clearbox"></div>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr align="center">
        <td colspan="3" class="spacingtitle">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    </tr>        
</table>
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
    <tbody id="Tabs0">
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="left">                    
               <b>内容标题:</b> </td>
            <td class="bqright">
                <asp:TextBox ID="txtTitle" class= "l_input" runat="server" Text='' Width="50%"></asp:TextBox>
                <span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTitle">内容标题必填</asp:RequiredFieldValidator></td>
         </tr>
         <asp:Literal ID="ModelHtml" runat="server"></asp:Literal><tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">                    
                推荐：</td>
            <td class="bqright">
                <asp:CheckBox ID="ChkAudit" Text="推荐" runat="server" /></td>
         </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">                    
                指定内容模板：</td>
            <td >
                <asp:TextBox ID="TxtTemplate" MaxLength="255" class= "l_input" runat="server" Columns="50"></asp:TextBox>
                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)" class="C_input"/></td>
         </tr>
    </tbody>        
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:HiddenField ID="HdnItem" runat="server" />
                <asp:HiddenField ID="HdnNode" runat="server" />
                <asp:Button ID="EBtnSubmit" Text="保存项目" class="C_input"  OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;                
                <asp:Button ID="BtnBack" runat="server" class="C_input" Text="返　回" OnClick="BtnBack_Click" UseSubmitBehavior="False"
                    CausesValidation="False" />
            </td>
        </tr>
</table>

</form>
</body>
</html>