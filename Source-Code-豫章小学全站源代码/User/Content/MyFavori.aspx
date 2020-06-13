<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Content.MyFavori, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的收藏-内容收藏</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/SelectCheckBox.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="us_pynews" style="height: 24px; line-height: 24px;">
            您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/">
            <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; </span>
            <span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span>
            <span> &gt;&gt;</span><span>内容收藏</span></span>
        </div>
        <div class="clearbox"></div>
        <div id="noconten" runat="server" align="center" style="width: 800px; line-height: 100px; border: solid 1px #CCC">暂无收藏内容</div>
        <div id="cont" runat="server">
            <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="FavoriteID" OnRowCommand="Lnk_Click" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <Columns>
                    <asp:TemplateField HeaderText="选择">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSel" runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="InfoID" HeaderText="ID">
                        <HeaderStyle Width="6%" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="标题">
                        <HeaderStyle Width="50%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <a href="<%#Eval("FavUrl")%>" target="_blank"><%# Eval("Title")%></a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="操作">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("FavoriteID") %>' OnClientClick="return confirm('你确定将该数据从收藏夹删除吗？')">移出收藏夹</asp:LinkButton>
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
            </asp:GridView>
            <div align="center">
                共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条信息
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/
                <asp:Label ID="PageSize" runat="server" Text="" />页
                <span style="text-align: center">
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox></span>条信息/页 转到第
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                页
            </div>
            <div style="padding-top: 5px;">
                <div class="us_seta" style="height: auto;">
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="选中本页显示的所有项目" />
                    <asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项从收藏夹删除吗？')}" CssClass="button" UseSubmitBehavior="true" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;搜索标题：
                    <asp:TextBox ID="TxtSearchTitle" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="button" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>