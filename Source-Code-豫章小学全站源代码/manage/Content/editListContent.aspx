<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.editListContent, App_Web_0tiy15lx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员组模型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" type="text/javascript"></script> 
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">        
        <table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="border">
            <tr class="tdbg">
                <td colspan="2" style="line-height:30px">
           		<h1 style="text-align:center; font-size:14px;"><asp:Label ID="LblModelName" runat="server" Text=""></asp:Label></h1>
                </td>
            </tr>
            <asp:Literal ID="ModelHtml" runat="server"></asp:Literal><tr class="tdbgbottom border">
			<td colspan="2" style="height: 84px">                    
				<asp:HiddenField ID="HdnModel" runat="server" />
		        <asp:HiddenField ID="HdnModelName" runat="server" />
				<asp:HiddenField ID="HdnID" runat="server" />
				<asp:HiddenField ID="HdnType" runat="server" />
				<asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
				<asp:Button ID="EBtnSubmit" class="C_input"  Text="保存" OnClick="EBtnSubmit_Click" runat="server" />   
			    <asp:Button ID="Button1" class="C_input"  Text="返回"  runat="server" onclick="Button1_Click" />               
			</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>