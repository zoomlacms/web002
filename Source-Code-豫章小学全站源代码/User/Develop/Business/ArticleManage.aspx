<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_Business_ArticleManage, App_Web_ldfwx3fz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>文章管理</title>
<link rel="stylesheet" href="/User/Develop/css/global.css" type="text/css" />
</head>
<body>
<form runat="server">
<div id="wrap">
<div class="cssHeight20" ></div>
<div id="title_L" runat="server">文章管理</div><div id="title_R"></div>
<div class="clear"></div>
<div id="Busi_main">
<div id="NodeTree" style="float:left; width:150px;">
<asp:TreeView ID="tvNav" runat="server" ImageSet="XPFileExplorer" NodeIndent="15">
    <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
    <NodeStyle Font-Names="Tahoma" Font-Size="12px" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
    <ParentNodeStyle Font-Bold="False" />
    <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" /></asp:TreeView>
</div>
<div style="float:left; width:825px; height:700px;">
<iframe name="ifrContent" width="100%" height="100%" frameborder="no"></iframe>
</div>
</div>
<div class="cssHeight20" ></div>
</div>
</form>
</body>
</html>