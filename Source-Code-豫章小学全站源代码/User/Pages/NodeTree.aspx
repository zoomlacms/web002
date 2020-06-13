<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Page.NodeTree, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head runat="server">
<title>栏目导航</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function ZoomlaPage_dh(url){
    window.parent.location.href = url;
}
</script>
</head>
<body>
<form id="form1" runat="server">    
<asp:TreeView ID="tvNav" runat="server" ExpandDepth="0" ShowLines="True" EnableViewState="False" NodeIndent="10">
	<NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
	<ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
	<SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
	<RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
	</asp:TreeView>    
</form>
</body>
</html>