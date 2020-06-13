<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_LmUserListTree, App_Web_j5qlofg5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>联盟会员树状图</title>
    <script src="../../../JS/jquery.js" type="text/javascript"></script>
    <link href="../../../App_Themes/AdminDefaultTheme/index.css" rel="stylesheet" type="text/css" />
    <link href="../../../App_Themes/AdminDefaultTheme/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #UserTree
        {
            background-color: rgb(199, 224, 246);
            background: url(../../../App_Themes/AdminDefaultTheme/images/tdbg.jpg);
        }
        a:hover
        {
            text-decoration: none;
        }
        #UserTree td
        {
            line-height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>联盟会员树状图</span>
    </div>
    <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%" id="usernode">
        <tr>
            <td class="spacingtitle" align="center">
                联盟会员树状图
            </td>
        </tr>
    </table>
    <asp:TreeView ID="UserTree" CssClass="border" runat="server" Style="margin-left: 10px;" ImageSet="Arrows" Width="98%">
        <HoverNodeStyle ForeColor="#5555DD" />
        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        <ParentNodeStyle Font-Bold="False" />
        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
    </asp:TreeView>
    </form>
</body>
</html>