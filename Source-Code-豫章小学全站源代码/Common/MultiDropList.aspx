<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Common.MultiDropList, App_Web_s2bhlxup" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>多级选项</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
</head>
<body class="tdbg">
<form id="form1" runat="server">&nbsp;
    <asp:DropDownList ID="DDLGrade1" runat="server" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="DDL_Grade1ChangeIndex">
    </asp:DropDownList>&nbsp;&nbsp;
    <asp:DropDownList ID="DDLGrade2" runat="server" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="DDL_Grade2ChangeIndex">
    </asp:DropDownList>&nbsp;&nbsp;
    <asp:DropDownList ID="DDLGrade3" runat="server" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="DDLGrade3_SelectedIndexChanged">
    </asp:DropDownList>&nbsp;&nbsp;
    <asp:DropDownList ID="DDLGrade4" runat="server" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="DDLGrade4_SelectedIndexChanged">
    </asp:DropDownList>&nbsp;&nbsp;
    <asp:dropdownlist id="DDLGrade5" runat="server" visible="false" AutoPostBack="true" OnSelectedIndexChanged="DDLGrade5_SelectedIndexChanged">
    </asp:dropdownlist>&nbsp;&nbsp;
    <asp:dropdownlist id="DDLGrade6" runat="server" visible="false" AutoPostBack="true" onselectedindexchanged="DDLGrade6_SelectedIndexChanged">
    </asp:dropdownlist>
    <asp:HiddenField ID="HdnCateID" runat="server" />
    <asp:HiddenField ID="HdnField" runat="server" />
</form>
</body>
</html>