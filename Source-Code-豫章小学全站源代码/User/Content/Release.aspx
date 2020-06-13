<%@ page language="C#" autoeventwireup="true" inherits="User_Content_Release, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>发布页面</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../css/mmic.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="../../JS/prototype-1.5.1.js"></script>
<script language="javascript" type="text/javascript">
function addRow() {
var row = document.getElementById("HiddenField1").value;
var ModelID = document.getElementById("HiddenField2").value;
var NodeID = document.getElementById("HiddenField3").value;
var num = Number(row) + 1;        
window.location.href = 'Release.aspx?ModelID=' + ModelID + '&NodeID=' + NodeID + '&row=' + num;
}
function delRow() {
var row = document.getElementById("HiddenField1").value;
var ModelID = document.getElementById("HiddenField2").value;
var NodeID = document.getElementById("HiddenField3").value;
var num = Number(row) - 1;
window.location.href = 'Release.aspx?ModelID=' + ModelID + '&NodeID=' + NodeID + '&row=' + num;
}

function back() {
var NodeID = document.getElementById("HiddenField3").value;
window.location.href = 'MyContent.aspx?NodeID=' + NodeID;
}

function gettxt() {       
var rows = Number(document.getElementById("HiddenField1").value);      
var bool = false;
for (var i = 0; i < rows; i++) {
var txt = document.getElementById("txt_"+i+"_Title").value;           
if (txt != "" && txt != null) {
	bool = true;
}
}
if (!bool) {
alert('至少输入一个标题！');
return;
}
}

function OverImg(a) {
if (a.src.indexOf('add') > -1)
a.src = a.src.replace('add', 'add2');
if (a.src.indexOf('dec') > -1)
a.src = a.src.replace('dec', 'dec2');
}

function OutImg(a) {
if (a.src.indexOf('add') > -1) 
a.src = a.src.replace('add2', 'add');
if (a.src.indexOf('dec') > -1)
a.src = a.src.replace('dec2', 'dec');
}

</script>
</head>
<body style="background: none">
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div  class="us_seta" >   <h1 style="text-align: center"><span><a>内容发布</a></span></h1></div>

<div visible="false" runat="server">        
<table width="50%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
<tr align="center">
		<td >全选<asp:CheckBox ID="CheckBox2" runat="server" 
				oncheckedchanged="CheckBox2_CheckedChanged" /></td>
		<td><strong>字段名</strong></td>
		<td><strong>字段别名</strong></td>
		<td><strong>是否批量添加</strong></td>
</tr>
<asp:Repeater ID="Repeater1" runat="server">
	<ItemTemplate>
	<tr align="center">
		<td><asp:CheckBox ID="CheckBox1" runat="server" /></td>                    
		<td><%#Eval("FieldName")%></td>
		<td><%#Eval("FieldAlias")%></td>
		<td><%# GetIslotsize(Eval("Islotsize", "{0}"))%></td>
	</tr>
	</ItemTemplate>
</asp:Repeater>
</table>
</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
<table cellpadding="0" cellspacing="0" class="commtable addtable" style="width: 98%;
margin-top: 20px">                              
	 <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>                
</table>
<table width="80%" border="0" cellspacing="0" cellpadding="0">
<tr>           
	<td style="height: 20px; text-align: center; padding-bottom: 15px; padding-top: 20px;">   
		<asp:Label ID="lblstr" runat="server" ></asp:Label>
		&nbsp;<asp:Button ID="Button1" runat="server" CssClass="i_bottom" Text="立刻提交" OnClientClick="gettxt()" onclick="Button1_Click" />&nbsp;                      
	   <input type="button" value="重写" class="i_bottom" onclick="$('form1').reset()" /> &nbsp;
		<input type="button" id="BtnBack" class="i_bottom" value="返　回" onclick="back()" />
	</td>
</tr>
</table>                
<asp:HiddenField ID="HiddenField1" runat="server" />
<asp:HiddenField ID="HiddenField2" runat="server" />
<asp:HiddenField ID="HiddenField3" runat="server" />
<asp:HiddenField ID="HiddenField4" runat="server" />
</div>
<%--        </ContentTemplate>
</asp:UpdatePanel>--%>
</form>
</body>
</html>
