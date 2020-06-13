<%@ page language="C#" autoeventwireup="true" inherits="OnlineService_ModifyName, App_Web_hhmv0c5o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改昵称</title>
<style type="text/css">
body { margin-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; font-size: 9pt; }
#cont { height: 134px; }
.C_input{background: url('../App_Themes/AdminDefaultTheme/images/input_bg.gif') repeat-x center;
margin: 2px;_margin: 2px;overflow: visible;border: 1px solid #8EC1EE;cursor: pointer;
    padding-top:3px;_padding-top:0px;
    padding-left: 13px;_padding-left: 13px;
    padding-right: 14px;_padding-right: 14px;
    padding-bottom: 3px;_padding-bottom:0px;
    height: 24px;
}
*{ margin:0px; padding:0px;}
*{padding: 0px;margin: 0px;}
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-top:50px; padding:5px; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small;" 
        align="center">
        昵称:<asp:TextBox ID="txtName" runat="server" Height="23px" ></asp:TextBox>
    <asp:Button ID="btn" class="C_input" runat="server" Text="修改" onclick="btn_Click"/>
    <div>(留空则不修改)</div>
    <br />
    </div>
    </form>
</body>
</html>
