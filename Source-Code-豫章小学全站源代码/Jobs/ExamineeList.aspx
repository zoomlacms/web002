<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Jobs.ExamineeList, App_Web_t2xu0pgv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>面试通知信息</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_seta"><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>&gt;&gt;面试通知信息
</div>
<div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
    <h1 style="text-align:center">面试通知列表</h1>
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
        <Columns>
            <asp:BoundField DataField="EID" HeaderText="ID">
                <HeaderStyle Width="5%" />
                <ItemStyle HorizontalAlign="Center" />                    
            </asp:BoundField>                
            <asp:TemplateField HeaderText="招聘单位" >
                <ItemTemplate>                    
                <%# GetCompany(Eval("CompanyID", "{0}"))%>
                </ItemTemplate>
                <HeaderStyle Width="50%" />
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="SendTime" HeaderText="发出时间">
                <HeaderStyle Width="20%" />
                <ItemStyle HorizontalAlign="Center" />                    
            </asp:BoundField>
            <asp:TemplateField HeaderText="操作" >
                <ItemTemplate>                    
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("EID") %>' OnClientClick="return confirm('你确定将该数据删除吗？')">删除</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" Height="25px" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>        
</div>
</form>
</body>
</html>