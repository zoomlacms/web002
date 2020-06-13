<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.PointHis, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>点券明细</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt; <a href="UserInfo.aspx">账户管理</a> &gt;&gt; 
		<asp:Literal ID="LitPointName" runat="server"></asp:Literal>明细记录</span>
</div>
        <div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
            <h1 style="text-align: center">
                <asp:Literal ID="LitPointNam1" runat="server"></asp:Literal>明细记录</h1>
            <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                DataKeyNames="PID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging"
                Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="暂无点券明细记录">
                <Columns>
                    <asp:BoundField DataField="OperDate" HeaderText="日期时间">
                        <HeaderStyle Width="15%" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OperatorIP" HeaderText="操作IP">
                        <HeaderStyle Width="10%" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UserPoint" HeaderText="数量">
                        <HeaderStyle Width="10%" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Detail" HeaderText="备注">
                        <HeaderStyle Width="40%" />
                        <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="操作人">
                        <ItemTemplate>
                            <%# GetOperator(Eval("Operator","{0}")) %>
                        </ItemTemplate>
                        <HeaderStyle Width="10%" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="查看">
                        <ItemTemplate>
                            <a href="ViewPointHis.aspx?PID=<%# Eval("PID","{0}") %>">查看</a>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <EmptyDataRowStyle BackColor="White" Font-Bold="True" ForeColor="#000000" Height="100px"
                    HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" Height="25px" />
                <EditRowStyle BackColor="#2461BF" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"  NextPageText="下一页" PreviousPageText="上一页" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>