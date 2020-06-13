<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_SourceAdd, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>选择来源</title>

 <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />  
 <script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script> 
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:TextBox ID="TxtTemplate" MaxLength="255" runat="server" Columns="50" class="l_input"></asp:TextBox>
                <input type="button" value="选择来源" onclick="WinOpenDialog('SourceList.aspx?flag=source',650,480)" class="btn" class="C_input"/><br />
<asp:TextBox ID="TxtAuthor" MaxLength="255" runat="server" Columns="50" class="l_input"></asp:TextBox>
                <input type="button" value="选择作者" onclick="WinOpenDialog('SourceList.aspx?flag=author',650,480)" class="btn" class="C_input"/><br />
              <asp:TextBox ID="TxtKeyWord" MaxLength="255" runat="server" Columns="50" class="l_input"></asp:TextBox>
                <input type="button" value="选择关键字" onclick="WinOpenDialog('SourceList.aspx?flag=keyword',650,480)" class="btn" class="C_input"/>
</div>
</form>
</body>
</html>
