<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_SelecQuestionClass, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>选择分类</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../../JS/Dialog.js"></script>
<script>
    function onstr() {
        window.opener = null;
        parent.Dialog.close();
    }

    function setvalue(objname, valuetxt) {
        var mainright = window.top.main_right;
        mainright.frames[parent.nowWindow].document.getElementById(objname).value = valuetxt;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div align="center">
 <asp:TreeView ID="tvNav" runat="server" ExpandDepth="0" ShowLines="True" 
    EnableViewState="False"  NodeIndent="10" Height="197px" Width="147px">
    <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
    <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
    <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
    <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
</asp:TreeView>
</div>
</form>
</body>
</html>
