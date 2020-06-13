<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_AddPub, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>互动信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../JS/RiQi.js" type="text/javascript"></script> 
<script src="../JS/Common.js" type="text/javascript"></script>
<style type="text/css">
	.style1
	{
		background: #e0f7e5;
		line-height: 120%;
		width: 133px;
	}
</style>
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
             <tr class="tdbg">
<td align="right" class="style1">标题</td><td><asp:TextBox ID="TextBox1" runat="server" Width="365px"></asp:TextBox></td></tr>
  <tr class="tdbg">
<td align="right" class="style1">内容</td><td><asp:TextBox ID="tx_PubContent" runat="server" 
          Height="107px" TextMode="MultiLine" Width="456px"></asp:TextBox></td></tr>
            <asp:Literal ID="ModelHtml" runat="server"></asp:Literal><tr class="tdbgbottom border">
                <td colspan="2" style="height: 84px">                    
                    <asp:HiddenField ID="HdnModel" runat="server" />
                     <asp:HiddenField ID="HiddenParentid" runat="server" />
                       <asp:HiddenField ID="HdnPubid" runat="server" />
                    <asp:HiddenField ID="HdnID" runat="server" />
                    <asp:HiddenField ID="HdnType" runat="server" />
                    <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
                    <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />   
                      <asp:Button ID="Button1" Text="返回"  runat="server" onclick="Button1_Click" />               
                    <br />
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>


