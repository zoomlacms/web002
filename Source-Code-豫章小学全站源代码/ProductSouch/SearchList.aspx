<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.SearchList, App_Web_0jgtjhhe" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>搜索结果</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
    <div class="us_seta">
        <ul class="us_seta">
            您现在的位置：<a title="网站首页" href="/"><asp:Label ID="sitename" runat="server" Text="Label"></asp:Label></a><span> &gt;&gt; 信息搜索</span>
        </ul>
        <div class="cleardiv" style="padding-top: 10px">
        </div>
        <h1 style="text-align: center">
            信息搜索</h1>
        <div class="us_seta">
            站内搜索
            <asp:DropDownList ID="DDLNode" runat="server">
            </asp:DropDownList>
            <asp:TextBox ID="TxtKeyword" runat="server">关键字</asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="搜  索" OnClick="Button1_Click" />
        </div>
        <div class="cleardiv" style="padding-top: 10px">
        </div>
        <h1 style="text-align: center">
            搜索结果</h1>
        <div class="us_seta">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div>
                        <a href="<%# GetUrl(Eval("GeneralID","{0}")) %>">
                            <%# Eval("Title") %>
                        </a>
                    </div>
                    <div class="clearbox">
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div id="Pager1" runat="server">
        </div>
    </div>
</form>
</body>
</html>
