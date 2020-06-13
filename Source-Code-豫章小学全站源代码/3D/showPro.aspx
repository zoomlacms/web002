<%@ page language="C#" autoeventwireup="true" inherits="_3D_showPro, App_Web_qpzgofad" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>3D 展厅</title>
<link href="../Skin/showPro.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="fmain-r4">
  <div class="fmain-r5">
	<div class="fmain-r6"><img src="../Skin/fire/yuan.jpg"  width="14" /></div>
	<div class="fmain-r7"><asp:Label ID="Proname2" runat="server" Text=""></asp:Label></div> 
  </div>
<div class="fmain-r9">
  <div style="height:300px; position:relative">
  <div style="position:absolute; left: 62px; top: 23px;"><asp:Label ID="Clearimg" runat="server" Text=""></asp:Label></div>  
  <ul style="position:absolute; left: 89px; top: 225px;" class="flist4"><li>Price：<asp:Label ID="ShiPrice" runat="server" Text=""></asp:Label></li></ul>
  <ul style="position:absolute; left: 342px; top: 34px;" class="flist4">
	<li>【编号】<asp:Label ID="work" runat="server" Text=""></asp:Label></li>
	<li>【产品名称】<asp:Label ID="Proname" runat="server" Text=""></asp:Label> </li>
	<li>【制造商】<asp:Label ID="changjia" runat="server" Text=""></asp:Label></li>
	<li>【最后更新】<asp:Label ID="chandi" runat="server" Text=""></asp:Label></li>
  </ul>
  </div>
<div class="fmain-r5" style="border-top:1px solid #CCCCCC">
 <div class="fmain-r6"><img src="../Skin/fire/yuan.jpg"  width="14" /></div>
 <div class="fmain-r7">产品描述</div> 
</div>
  <div style="padding:10px;"><asp:Label ID="Procontent" runat="server" Text=""></asp:Label></div> 
</div>
</div>
</form>
</body>
</html>