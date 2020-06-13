<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_AddProjectCategory, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加项目分类</title>

 <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
</head>
<body>
<form id="form1" runat="server">
 <div class="r_navigation">
	
	<span>后台管理</span>&gt;&gt;<a href="ProjectManage.aspx">项目管理</a>&gt;&gt;<span><asp:Literal ID="LNav" runat="server" Text="创建项目分类"></asp:Literal></span>
</div>
<div class="clearbox"></div>
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
    <tr align="center">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="LblTitle" runat="server" Text="创建项目分类" Font-Bold="True"></asp:Label>
            
            </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 105px">
            <strong>分类名称：&nbsp;</strong></td>
        <td class="tdbg" align="left">
            <asp:TextBox ID="TxtProCateName" runat="server" class="l_input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValrKeywordText" ControlToValidate="TxtProCateName"
                runat="server" ErrorMessage="分类名称不能为空！" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 105px">
            <strong>分类简述：&nbsp;</strong></td>
        <td class="tdbg" align="left">
            <asp:TextBox ID="TxtProCateIntro" runat="server" TextMode="MultiLine" Rows="8" 
                Columns="50" class="l_input" Height="89px"></asp:TextBox>                
        </td>
    </tr>       
    <tr class="tdbgbottom">
        <td colspan="2">
          <asp:Button ID="EBtnModify" Text="修改" OnClick="EBtnModify_Click" runat="server" Visible="false" class="C_input"/>
            <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" class="C_input"/>&nbsp;&nbsp;
            <input name="Cancel" type="button"  id="Cancel" value="取消" runat="server" onclick="javascript:window.location.href='ProjectCategoryManage.aspx'" class="C_input"/>
        </td>
    </tr>        
</table>
</form>
</body>
</html>
