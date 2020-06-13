<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectClass, App_Web_orznmsil" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title></title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" ShowLines="True" EnableViewState="False"
            NodeIndent="10">
            <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
            <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
            <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
            <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
        </asp:TreeView>
    </div>
    <div style="margin-top:20px">
        <asp:TreeView ID="TreeView2" runat="server" ShowLines="True" EnableViewState="False"
            NodeIndent="10">
            <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
            <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
            <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
            <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
        </asp:TreeView>
    </div>
    </form>
</body>
</html>
