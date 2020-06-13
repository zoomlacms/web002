<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_RejectionPage, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title><%=title %>投稿管理</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="column">
        <div class="columntitle">
            <%=title %>&nbsp;&nbsp;当前位置：功能导航 >>>投稿管理&nbsp;&nbsp;&nbsp;【<a href="ContentManage.aspx?NodeID=<%=NodeID%>">返回内容管理</a>】</div>
 
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="GeneralID" Width="100%" AutoGenerateColumns="False">
            <Columns>
            <asp:TemplateField HeaderText="投稿频道" HeaderStyle-Width="200px">
            <ItemTemplate>
            <%#GetColumn(Eval("NodeID").ToString())%>
            </ItemTemplate>

<HeaderStyle Width="200px"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="状态" HeaderStyle-Width="100px">
            <ItemTemplate>
            <%#GetState(Eval("Status").ToString())%>
            </ItemTemplate>

<HeaderStyle Width="100px"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="信息" ItemStyle-HorizontalAlign="Left">
            <ItemTemplate>
            <%#string.IsNullOrEmpty(Eval("because_back") + "") ? "无" : Eval("because_back").ToString()%>
            </ItemTemplate>

<ItemStyle HorizontalAlign="Left"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除" HeaderStyle-Width="50px">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" Enabled='<%#(Eval("Status").ToString()=="99")?false:true%>' onclick="LinkButton1_Click" OnClientClick="return confirm('你确定要彻底删除这项投稿内容吗？')">删除</asp:LinkButton>
            </ItemTemplate>

<HeaderStyle Width="50px"></HeaderStyle>
            </asp:TemplateField>
            </Columns>
            </asp:GridView>
    </div>
    </form>
</body>
</html>
