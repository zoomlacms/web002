<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_BannerEdit, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员组模型编辑</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" type="text/javascript"></script>  
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
   <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>栏目管理</span> &gt;&gt; 栏目管理  &gt;&gt;<span><asp:Literal ID="LNav" runat="server" Text="修改栏目"></asp:Literal></span>
	</div>
    <div class="clearbox"></div>    
    <table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr>
            <td class="spacingtitle" colspan="2" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="修改栏目"></asp:Literal></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 35%">
                <strong>栏目名称：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtModelName" runat="server" Width="156" MaxLength="200" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtModelName">模板名称不能为空</asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 35%">
                <strong>栏目模板：</strong>
            </td>
            <td><asp:TextBox ID="ModeTemplate" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ModeTemplate')+'&FilesDir=',650,480)" class="btn"/></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 35%">
                <strong>栏目类型：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">分栏目</asp:ListItem>
                    <asp:ListItem Value="1">首页栏目</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 35%">
                <strong>栏目状态：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">不显示</asp:ListItem>
                    <asp:ListItem Value="1">显示</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2"> 
                <asp:Button ID="EBtnSubmit" Text="保存"  runat="server" OnClick="EBtnSubmit_Click" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button" class="inputbutton" id="Cancel" value="取消" onclick="javescript:history.go(-1)" />                
            </td>
        </tr>
    </table> 
</form>
</body>
</html>
