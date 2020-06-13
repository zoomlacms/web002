<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.GuestBookShow, App_Web_x4o5jstt" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>留言内容</title>
    
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt;<span>留言管理</span> &gt;&gt;<span>留言内容</span>
	</div>
	<div class="clearbox"></div>	
	<table class="TableWrap" border="0" cellpadding="0" cellspacing="0" width="100%">	    
	    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="repFileReName_ItemCommand">
          <ItemTemplate>
            <tr class="tdbgleft">
                <td style="height:80px;width:100px"><%# GetUserName(Eval("UserID","{0}")) %></td>
                <td style="width:60%"><strong><%# Eval("Title")%></strong><br /><p><%# Eval("TContent")%></p><p style="text-align:right"><%# Eval("GDate")%></p></td>
                <td>                
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("GID") %>' OnClientClick="return confirm('确实要删除吗？');">删除</asp:LinkButton>
                </td>
            </tr>
          </ItemTemplate>
        </asp:Repeater>
    </table>
    <div id="Pager1" runat="server"></div>
        <asp:HiddenField ID="HdnGID" runat="server" />
    </form>
</body>
</html>
