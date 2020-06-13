<%@ page language="C#" autoeventwireup="true" inherits="_3D_ShowInfo, App_Web_qpzgofad" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>3D 展厅</title>
<link href="../Skin/showPro.css" rel="stylesheet" type="text/css" />
<style>
ul{ margin:0px; padding:0px; list-style:none; float:left;}
.listbg{float:left;}
.listbg li{ float:left; width:100px; height:100px; padding-top:8px; padding-left:18px;}
</style>
</head>
<body>
<form id="form1" runat="server">
    <table><tr><td></td><td><asp:HiddenField ID="HiddenShopid" runat="server" /></td></tr></table>
<div class="fmain-r4">
  <div class="fmain-r5">
   <div class="fmain-r6"><img src="../Skin/fire/yuan.jpg"  width="14" /></div>
 <div class="fmain-r7"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div> 
  </div>
  <div class="fmain-r9"><div style=" text-indent:25px;"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div></div>
  <div style="text-align:center"></div>
</div>    
<div style="clear:both"></div>
</form>
</body>
</html>