<%@ page language="C#" autoeventwireup="true" inherits="manage_Boss_Bosstree, App_Web_akeaiuth" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<html>
<head id="Head1" runat="server">
<title>节点栏目导航</title>
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/JS/menu.js"></script>
<script type="text/javascript">
    function Switch(obj) {
        obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
        var nextDiv;
        if (obj.nextSibling) {
            if (obj.nextSibling.nodeName == "DIV") {
                nextDiv = obj.nextSibling;
            }
            else {
                if (obj.nextSibling.nextSibling) {
                    if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                        nextDiv = obj.nextSibling.nextSibling;
                    }
                }
            }
            if (nextDiv) {
                nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
            }
        }
    }
    function OpenLink(lefturl, righturl) {
        if (lefturl != "") {
            parent.frames["left"].location = lefturl;
        }
        try {
            parent.MDIOpen(righturl); return false;
        } catch (Error) {
            parent.frames["main_right"].location = righturl;
        }
    }
    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }
    function LinkClick(str) {
        if (confirm('确实要删除此加盟商吗？')) {
            //location.href = 'Bosstree.aspx?type=del&id=' + str;
            gotourl("Boss/Bosstree.aspx?type=del&id=" + str);
        }
    }
</script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
    <form id="formGuide" runat="server">
    <div id="Guide_back">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">招商管理</div>
            </li>
            <li id="Guide_main">
                <div style="height: 25px; text-indent: 25px; line-height: 25px;">
                    <a href="Bosstree.aspx">显示所有</a>&nbsp;&nbsp;招商名：<asp:TextBox ID="TextBox1" runat="server" CssClass="l_input"></asp:TextBox>
                    <asp:Button ID="Button1" CssClass="C_input" runat="server" Text="查找" OnClick="Button1_Click" />
                </div>
                <div id="Guide_box" style="height: 600px">
                    <asp:TreeView ID="tvNav" runat="server" ExpandDepth="1" ShowLines="True" EnableViewState="False" NodeIndent="10">
                        <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
                        <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
                        <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                        <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                    </asp:TreeView>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>