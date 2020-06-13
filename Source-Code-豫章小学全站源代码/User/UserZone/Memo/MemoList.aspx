<%@ page language="C#" autoeventwireup="true" inherits="MemoList, App_Web_riis000b" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的备忘录</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">会员中心</a>&gt;&gt; 我的备忘录
</div>
    <div>
        <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
    </div>
    <br />
    <div class="us_topinfo" style="overflow: hidden; width: 98%">
    <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td style="height: 30px">
                <a href="EditMemo.aspx">添加备忘录</a>
            </td>
        </tr>
        <tr>
            <td class="border1">
                <asp:GridView ID="GridView1" Width="100%" DataKeyNames="ID" ShowHeader="False" runat="server"
                    AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <a href='<%#"memocontext.aspx?ID="+ DataBinder.Eval(Container.DataItem,"ID") %>'>
                                    <%#DataBinder.Eval(Container.DataItem,"MemoTitle") %>
                                </a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="100px" ItemStyle-HorizontalAlign="center">
                            <ItemTemplate>
                                <%#DateTime.Parse(DataBinder.Eval(Container.DataItem,"MemoTime").ToString()).ToShortDateString() %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="50px" ItemStyle-HorizontalAlign="center">
                            <ItemTemplate>
                                <a href='<%#"EditMemo.aspx?ID="+ DataBinder.Eval(Container.DataItem,"ID") %>'>修改</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ItemStyle-Width="50px" ItemStyle-HorizontalAlign="center" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
                <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
                <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
                <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
                页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize" runat="server" Text=""></asp:Label>页
                <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                页
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>